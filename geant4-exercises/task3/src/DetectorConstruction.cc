#include "DetectorConstruction.hh"

#include <G4LogicalVolume.hh>
#include <G4PVPlacement.hh>
#include <G4NistManager.hh>
#include <G4SystemOfUnits.hh>
#include <G4VisAttributes.hh>
#include <G4Box.hh>
#include <G4Orb.hh>
#include <G4SDManager.hh>
#include <G4GlobalMagFieldMessenger.hh>
#include <G4MultiFunctionalDetector.hh>
#include <G4PSEnergyDeposit.hh>

#include <sstream>
#include "EnergyTimeSD.hh"

using namespace std;

G4VPhysicalVolume* DetectorConstruction::Construct()
{
    G4NistManager* nist = G4NistManager::Instance();
    G4double worldSizeX = 2 * m;
    G4double worldSizeY = 1 * m;
    G4double worldSizeZ = 1 * m;

    // We have created the world volume for you
    // As with all volumes, it requires three steps:

    // 1) Solid
    G4VSolid* worldBox = new G4Box("world", worldSizeX / 2, worldSizeY / 2, worldSizeZ / 2);

    // 2) Logical volume
    G4LogicalVolume* worldLog = new G4LogicalVolume(worldBox, nist->FindOrBuildMaterial("G4_AIR"), "world");
    G4VisAttributes* visAttr = new G4VisAttributes();
    visAttr->SetVisibility(false);
    worldLog->SetVisAttributes(visAttr);

    // 3) Physical volume
    G4VPhysicalVolume* worldPhys = new G4PVPlacement(nullptr, {}, worldLog, "world", nullptr, false, 0);

    

    // Three instances of G4Element to support BC400 material
    // (name, symbol, effectiveZ, effectiveA as mass/mole)
    G4Element* elH = new G4Element("Hydrogen", "H", 1., 1.0079 * g/mole);
    G4Element* elC = new G4Element("Carbon", "C", 6., 12.011 * g/mole);

    G4Material* bc400 = new G4Material("BC400", 1.032 * g/cm3, 2);
    bc400->AddElement(elH, 8.5*perCent);
    bc400->AddElement(elC, 91.5*perCent);

    // Get lead (Pb) from the NIST database
    G4Material* lead = nist->FindOrBuildMaterial("G4_Pb");

    // Create a solid for the absorber (box)
    // Create a solid for the scintillator (box)
    G4double thickness = .5 * cm;
    G4double width = 10 * cm;     
    G4double height = 10 * cm;    

    G4VSolid* scintillatorBox = new G4Box("scintillator", thickness / 2, width / 2, height / 2);
    G4VSolid* absorberBox = new G4Box("absorber", thickness / 2, width / 2, height / 2);

    // Task 1b.2: Create a logical volume for the absorber
    G4LogicalVolume* absorberLog = new G4LogicalVolume(absorberBox, lead, "absorber");

    // Task 1b.2: Create a logical volume for the scintillator
    G4LogicalVolume* scintillatorLog = new G4LogicalVolume(scintillatorBox, bc400, 
							   "scintillator");

    // Task 1b.2: Colorize the absorber using proper vis. attributes
    G4VisAttributes* red = new G4VisAttributes(G4Colour::Red());
    red->SetVisibility(true);
    red->SetForceSolid(true);
    absorberLog->SetVisAttributes(red);

    // Task 1b.2: Colorize the scintillator using proper vis. attributes
    G4VisAttributes* yellow = new G4VisAttributes(G4Colour::Yellow());
    yellow->SetVisibility(true);
    yellow->SetForceSolid(true);
    scintillatorLog->SetVisAttributes(yellow);

    // We have already provided the positions, you finish the rest...
    G4int numberOfLayers = 10;
    G4double minX = 50 * cm + thickness / 2;

    vector<G4ThreeVector> absorberPositions;
    vector<G4ThreeVector> scintillatorPositions;
    for (int i = 0; i < numberOfLayers; i++)
    {
        absorberPositions.push_back({minX + i*2 * thickness, 0, 0});
        scintillatorPositions.push_back({minX + (i * 2 + 1) * thickness, 0, 0});
    }

    for (int i = 0; i < numberOfLayers; i++)
    {
        ostringstream aName; aName << "absorber" << i;
        ostringstream sName; sName << "scintillator" << i;
        // Task 1b.3  Create 10 layers for the absorber (use aName.str() for name)
        new G4PVPlacement(nullptr, absorberPositions[i],
			  absorberLog, aName.str(), worldLog, 0, i);
        // Task 1b.3: Create 10 layers for the scintillator (use sName.str() for name)
        new G4PVPlacement(nullptr, scintillatorPositions[i],
			  scintillatorLog, sName.str(), worldLog, 0, i);
    }

    // Task 1a.0: Show the material table
    //G4cout << *(G4Material::GetMaterialTable()) << G4endl;

    // The Construct() method has to return the final (physical) world volume:
    return worldPhys;
}


void DetectorConstruction::ConstructSDandField()
{
    
    G4SDManager* sdManager = G4SDManager::GetSDMpointer();
    sdManager->SetVerboseLevel(2);  // Useful for 4c

    // 2 instances of G4MultiFunctionalDetector (for absorber and scintillator)
    
    G4MultiFunctionalDetector* absorberDetector = 
        new G4MultiFunctionalDetector("absorberDetector");

    G4MultiFunctionalDetector* scintillatorDetector = 
        new G4MultiFunctionalDetector("scintillatorDetector");

    // Create 2 primitive scorers for the dose and assign them to respective detectors
    // G4VPrimitiveScorer* absorberScorer = ...
     
    G4VPrimitiveScorer* scintillatorScorer = new G4PSEnergyDeposit("energy");
    scintillatorDetector->RegisterPrimitive(scintillatorScorer);

    G4VPrimitiveScorer* absorberScorer = new G4PSEnergyDeposit("energy");
    absorberDetector->RegisterPrimitive(absorberScorer);
    
    sdManager->AddNewDetector(absorberDetector);
    sdManager->AddNewDetector(scintillatorDetector);

    SetSensitiveDetector("absorber", absorberDetector);
    SetSensitiveDetector("scintillator", scintillatorDetector);

    // EnergyTimeSD* absorberET = ..  

}

