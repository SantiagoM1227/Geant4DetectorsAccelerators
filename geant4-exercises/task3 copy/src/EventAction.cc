#include "EventAction.hh"

#include <G4SDManager.hh>
#include <G4THitsMap.hh>
#include <G4SystemOfUnits.hh>
#include <G4Event.hh>
#include "G4AnalysisManager.hh"
//#include "Analysis.hh"
#include "EnergyTimeHit.hh"

// Task 4d.2: Uncomment the following line
// #include "EnergyTimeHit.hh"

using namespace std;

void EventAction::EndOfEventAction(const G4Event* event)
{
    G4SDManager* sdm = G4SDManager::GetSDMpointer();
    auto* analysisManager = G4AnalysisManager::Instance();

    G4HCofThisEvent* hcofEvent = event->GetHCofThisEvent();

    G4int histogramId = analysisManager->GetH1Id("Edep");

    if (fAbsorberId >= 0)
    if(!hcofEvent) return;

    if (fAbsorberId < 0)
    {
        fAbsorberId = sdm->GetCollectionID("absorberDetector/energy");
    }
    if (fScintillatorId < 0)
    {
        fScintillatorId = sdm->GetCollectionID("scintillatorDetector/energy");   
    }

    if (fAbsorberId >= 0)
    {
        G4THitsMap<G4double>* hitMapA = dynamic_cast<G4THitsMap<G4double>*>(
            hcofEvent->GetHC(fAbsorberId));
        if (hitMapA)
        {
            for (auto pair : *(hitMapA->GetMap()))
            {
                G4double energy = *(pair.second);
                //The position of the center of the i-th absorber is given by
                // 50 * cm + thickness / 2 + i*2 * thickness,
                //with thickness=0.5*cm. See lines 87 and 93 of DetectorConstruction.cc
            
                G4double x = 50.25 + (pair.first * 1.0); // already in cm

                analysisManager->FillH1(histogramId,  energy );
                analysisManager->FillNtupleDColumn(0, energy);
                analysisManager->FillNtupleDColumn(1, x);
                analysisManager->AddNtupleRow();
            }
        }
    }
    if (fScintillatorId >= 0)
    {
        // Task 4c.2: Get and cast hit collection with energy in scintillator
        G4THitsMap<G4double>* hitMapS = dynamic_cast<G4THitsMap<G4double>*>(
            hcofEvent->GetHC(fScintillatorId));
        if (hitMapS)
        {
            for (auto pair : *(hitMapS->GetMap()))
            {
                G4double energy = *(pair.second);
                //The position of the center of the i-th scintillator is given by
                // 50 * cm + thickness / 2 + (i*2 +1) * thickness,
                //with thickness=0.5*cm. See lines 87 and 94 of DetectorConstruction.cc
                G4double x = 50.75 + (pair.first * 1.0); // already in cm
                analysisManager->FillH1(histogramId, energy );
                analysisManager->FillNtupleDColumn(0, energy);
                analysisManager->FillNtupleDColumn(1, x);
                analysisManager->AddNtupleRow();
            }
        }
    }

    // Hit collections IDs to be looped over ("Don't Repeat Yourself" principle)
    vector<G4int> hitCollectionIds = {
        fScintillatorETId, fAbsorberETId
    };
    for (G4int collectionId : hitCollectionIds)
    {
        if (collectionId == -1) continue;
        // Task 4d.2: Get and cast hit collection with EnergyTimeHits
        EnergyTimeHitsCollection* hitCollection = nullptr;

        // Task 4d.3: Uncomment the following block
         if (hitCollection)
        {
            for (auto hit: *hitCollection->GetVector())
            {
                // Do not forget units of measurements, if you want your numbers
                // to be stored consistenty in the ntuple
                analysisManager->FillNtupleDColumn(0, hit->GetDeltaEnergy() / MeV);
                analysisManager->FillNtupleDColumn(1, hit->GetTime() / ns);
                analysisManager->FillNtupleDColumn(2, hit->GetPosition().x() / mm);
                analysisManager->FillNtupleDColumn(3, hit->GetPosition().y() / mm);
                analysisManager->FillNtupleDColumn(4, hit->GetPosition().z() / mm);
                analysisManager->AddNtupleRow();
            }
        }
    }
}
