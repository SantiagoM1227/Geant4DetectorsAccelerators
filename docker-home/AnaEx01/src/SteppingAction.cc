//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
/// \file SteppingAction.cc
/// \brief Implementation of the SteppingAction class
//
//
// $Id: SteppingAction.cc 98241 2016-07-04 16:56:59Z gcosmo $
//
// 
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "SteppingAction.hh"
#include "HistoManager.hh"

#include "DetectorConstruction.hh"
#include "EventAction.hh"

#include "G4Step.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

SteppingAction::SteppingAction(DetectorConstruction* det,
                                         EventAction* evt,
                                         HistoManager* histo)
: G4UserSteppingAction(), 
  fDetector(det), fEventAction(evt), fHistoManager(histo)                                 
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

SteppingAction::~SteppingAction()
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void SteppingAction::UserSteppingAction(const G4Step* aStep)
{
  // get volume of the current step
  G4VPhysicalVolume* volume 
  = aStep->GetPreStepPoint()->GetTouchableHandle()->GetVolume();
  
  // collect energy and track length step by step
  G4double edep = aStep->GetTotalEnergyDeposit();
  
  G4double stepl = 0.;
  if (aStep->GetTrack()->GetDefinition()->GetPDGCharge() != 0.)
    stepl = aStep->GetStepLength();
      
  if (volume == fDetector->GetAbsorber())
  {
     
     G4double absorberThickness = fDetector->GetAbsorberThickness();
    
     G4double x0 = fDetector->GetAbsorber()->GetLogicalVolume()->GetMaterial()->GetRadlen();
     G4double x = aStep->GetPreStepPoint()->GetPosition().x() + absorberThickness/2.0;    
     //G4double x = aStep->GetStepLength();
     if (x < 5.*x0)
     {
       fEventAction->AddAbs(edep,stepl);
      if (aStep->GetTrack()->GetDefinition()->GetParticleName() == "e-") 
      {
        fEventAction->AddEdepSecElectron5X0(edep);
        //fEventAction->AddLdepSecElectron(x);
        fHistoManager->FillHisto(6, x, edep);
        
      } 
      else if (aStep->GetTrack()->GetDefinition()->GetParticleName() == "gamma") 
      {
        fEventAction->AddEdepSecPhoton5X0(edep);
        //fEventAction->AddLdepSecPhoton(x);
        fHistoManager->FillHisto(7, x, edep);
      }
     }
   }
  if (volume == fDetector->GetGap())      fEventAction->AddGap(edep,stepl);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
