export class User{
    
    #posts; //List of posts associated with this user
    #name;
    #uuid;
    #handle;
    #birthday;
    #employer;

    constructor(name, UUID, handle, birthday, employer){
        this.#posts = [];
        this.#name = name;
        this.#uuid = UUID;
        this.#handle = handle;
        this.#birthday = birthday;
        this.#employer = employer;
    }

    // Get Methods

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

    // Set Methods

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


    // To be implimented once data structure is confirmed
    static buildUser(data){
        let d = data;
    }

    // Test static function
    static buildTestUser(){
        return new this("Billy", "00001", "@barryb", Date.now().toString(), "Anemoia Studios");
    }
}