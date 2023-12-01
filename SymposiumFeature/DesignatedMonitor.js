// Import Symposium User from the appropriate file.
import { SymposiumUser } from './User';

// Designated Monitor representation.
//  Inherits SymposiumUser
export class DesignatedMonitor extends SymposiumUser{
    _isDesignatedMonitor = true;
    
    // Constructor Inherits User Constructor
    constructor (name){
        super(name);
    }

    // Set a specific user to the muted state.
    setUserMuted(user){
        // Verify to be a user
        if (user instanceof SymposiumUser){
            user.setMuted(true);
        }
        else{
            // Do Nothing for now.
        }
    }

    // Set a specific user to the unmuted state.
    setUserUnmuted(user){
        // Verify to be of User Type
        if (user instanceof SymposiumUser){
            user.setMuted(false);
        }
        else{
            // Do Nothing for now.
        }
    }
}