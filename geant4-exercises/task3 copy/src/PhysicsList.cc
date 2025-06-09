#include "PhysicsList.hh"

#include <G4EmStandardPhysics.hh>
#include <G4EmLivermorePhysics.hh>
#include <G4EmExtraPhysics.hh>
#include <G4HadronElasticPhysics.hh>
#include <G4HadronPhysicsFTFP_BERT.hh>
#include <G4DecayPhysics.hh> 
#include <G4ProductionCutsTable.hh>
#include <G4SystemOfUnits.hh>

PhysicsList::PhysicsList() : G4VModularPhysicsList()
{
  // Standard EM physics 
  RegisterPhysics(new G4EmStandardPhysics());
  //RegisterPhysics(new G4EmLivermorePhysics());
  //! Default Decay Physics
  RegisterPhysics(new G4DecayPhysics());

  //G4EmExtraPhysics
  RegisterPhysics(new G4EmExtraPhysics());

  // Add hadronic physics  
  RegisterPhysics(new G4HadronElasticPhysics());
  RegisterPhysics(new G4HadronPhysicsFTFP_BERT());

}

void PhysicsList::SetCuts()
{
  // The method SetCuts() is mandatory in the interface. Here, one just use 
  // the default SetCuts() provided by the base class.
  G4VUserPhysicsList::SetCuts();
  
  
  // In addition, dump the full list of cuts for the materials used in 
  // the setup
  DumpCutValuesTable();  
}
