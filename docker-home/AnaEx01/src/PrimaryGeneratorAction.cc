#include "PrimaryGeneratorAction.hh"
#include "G4GeneralParticleSource.hh"
#include "G4ParticleTable.hh"
#include "G4ParticleDefinition.hh"
#include "G4Event.hh"
#include "G4SystemOfUnits.hh"


PrimaryGeneratorAction::PrimaryGeneratorAction()
{
  particleGun = new G4GeneralParticleSource();
  G4ParticleDefinition* electron = G4ParticleTable::GetParticleTable()->FindParticle("e-");

  particleGun->SetParticleDefinition(electron);
  particleGun->GetCurrentSource()->GetEneDist()->SetMonoEnergy(10 * GeV);
  particleGun->GetCurrentSource()->GetAngDist()->SetParticleMomentumDirection(G4ThreeVector(1., 0., 0.));    


}


PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
  delete particleGun;
}


void PrimaryGeneratorAction::GeneratePrimaries( G4Event* anEvent )
{
  particleGun->GeneratePrimaryVertex( anEvent );
}

