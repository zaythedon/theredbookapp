// User for the Symposium. Should inherit base user class.

export class SymposiumUser{
    #muted = true;
    #name = "No NAME";
    #userID;

    // Constructor
    constructor(name){
        this.#name = name;
        this.#muted = true;
        this.#userID = Math.floor(Math.random()*1000);
    }

    // Get the name of user (should be in base user class)
    getName(){
        return this.#name;
    }

    // Get current muted state of user
    getMuted(){
        return this.#muted;
    }

    // Set current muted state of user, default is to mute.
    setMuted(mute = true){
        if (mute){
            this.#muted = true;
        }
        else{
            this.#muted = false;
        }
        // Debug message to see model change from UI.
        console.log("User Muted State Changed");
    }

    // Get the userID of the user (should be in base user class)
    getID(){
        return this.#userID;
    }
}