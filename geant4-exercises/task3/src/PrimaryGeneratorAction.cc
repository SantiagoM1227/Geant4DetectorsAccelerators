#include "PrimaryGeneratorAction.hh"

#include <G4ParticleTable.hh>
#include <G4Event.hh>
#include <G4SystemOfUnits.hh>
#include <G4ParticleGun.hh>
#include <Randomize.hh>

// Task 2b.1 Include the proper header file for GPS
#include <G4GeneralParticleSource.hh>

using namespace std;

PrimaryGeneratorAction::PrimaryGeneratorAction()
{

    fGPS = new G4GeneralParticleSource();

    G4ParticleDefinition* electron = G4ParticleTable::GetParticleTable()->FindParticle("e-");

    fGPS->SetParticleDefinition(electron);
    fGPS->GetCurrentSource()->GetEneDist()->SetMonoEnergy(1 * GeV);
    fGPS->GetCurrentSource()->GetAngDist()->SetParticleMomentumDirection(G4ThreeVector(1., 0., 0.));    

}

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
    delete fGPS;
}

void PrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
   
    fGPS->GeneratePrimaryVertex(anEvent);
}
