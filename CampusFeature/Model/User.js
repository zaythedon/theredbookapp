export class User{
    
    #posts; //List of posts associated with this user
    #name;
    #uuid;
    #handle;
    #birthday;
    #employer;
    

    // Constructor. To build user, use buildUser() instead.
    constructor(name, UUID, handle, birthday, employer){
        this.#posts = [];
        this.#name = name;
        this.#uuid = UUID;
        this.#handle = handle;
        this.#birthday = birthday;
        this.#employer = employer;
    }

    //vvvvvvvvvvvvv Get Methods vvvvvvvvvvvvv

    getName(){
        return this.#name;
    }

    getUUID(){
        return this.#uuid;
    }

    getHandle(){
        return this.#handle;
    }

    getBirthday(){
        return this.#birthday;
    }

    getEmployer(){
        return this.#employer;
    }

    getPosts(){
        return this.#posts;
    }

    //^^^^^^^^^^^^^ Get Methods ^^^^^^^^^^^^^

    //vvvvvvvvvvvvv Set Methods vvvvvvvvvvvvv

    setName(name){
        this.#name = name;
    }

    setUUID(uuid){
        this.#uuid = uuid;
    }

    setHandle(handle){
        this.#handle = handle;
    }

    setBirthday(birthday){
        this.#birthday = birthday;
    }

    setEmployer(employer){
        this.#employer = employer;
    }

    setPosts(){
        return this.#posts;
    }

    //^^^^^^^^^^^^^ Set Methods ^^^^^^^^^^^^^

    //vvvvvvvvvvvvv Database Queries vvvvvvvvvvvvv

    // Update the User
    updateUser(){
        // Query the database and update the user's data based on UUID.
        // Return false if query failed. Return true is succeeded
        return true;
    }

    // Add a User to the database
    static addUser(){
        // Query the database and add user
        // Return false if failed. Return true is succeeded
        return true;
    }


    // To be implimented once data structure is confirmed
    static buildUser(data){
        let d = data;
        // Query the database and build user object
        // Return User Object if succeeded
        return this.buildTestUser;
    }

    // Test static function //Delete by final implimentation
    static buildTestUser(){
        return new this("Billy", "00001", "@barryb", Date.now().toString(), "Anemoia Studios");
    }
}