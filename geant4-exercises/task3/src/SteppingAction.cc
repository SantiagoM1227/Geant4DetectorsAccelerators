#include "SteppingAction.hh"
#include "RunAction.hh"

#include <G4Step.hh>
#include <G4Electron.hh>

SteppingAction::SteppingAction(RunAction* runAction)
 : fRunAction(runAction)
{
}

void SteppingAction::UserSteppingAction(const G4Step* aStep)
{
    //Get the volume where the step starts (the length is inside).
    G4VPhysicalVolume* volume = aStep->GetPreStepPoint()->GetTouchableHandle()->GetVolume();
    // Take care, because this volume might not be available: be sure that the pointer
    // "volume" is non-NULL, otherwise any volume->Get... would cause a crash.

    //  If the volume exists and has a proper name (absorber0), use the appropriate
    // run action method to accumulate the track length. Apply this
    // only for electrons.
    if (volume && volume->GetName() == "absorber0")
    {
        G4Track* track = aStep->GetTrack();
        if (track->GetDefinition() == G4Electron::Definition())
        {
            fRunAction->AddTrackLength(aStep->GetStepLength());
        }
    }
}
