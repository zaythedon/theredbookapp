export class User {
  #posts; //List of posts associated with this user
  #firstName;
  #lastName;
  #uuid;
  #handle;
  #birthday;
  #employer;

  // Constructor. To build user, use buildUser() instead.
  constructor(firstName, lastName, UUID, handle, birthday, employer) {
    this.#posts = [];
    this.#firstName = firstName;
    this.#lastName = lastName;
    this.#uuid = UUID;
    this.#handle = handle;
    this.#birthday = birthday;
    this.#employer = employer;
  }

  //vvvvvvvvvvvvv Get Methods vvvvvvvvvvvvv

  getFirstName() {
    return this.#firstName;
  }

  getLastName() {
    return this.#lastName;
  }

  getUUID() {
    return this.#uuid;
  }

  getHandle() {
    return this.#handle;
  }

  getBirthday() {
    return this.#birthday;
  }

  getEmployer() {
    return this.#employer;
  }

  getPosts() {
    return this.#posts;
  }

  //^^^^^^^^^^^^^ Get Methods ^^^^^^^^^^^^^

  //vvvvvvvvvvvvv Set Methods vvvvvvvvvvvvv

  setFirstName(firstName) {
    this.#firstName = firstName;
  }

  setLastName(lastName) {
    this.#lastName = lastName;
  }

  setUUID(uuid) {
    this.#uuid = uuid;
  }

  setHandle(handle) {
    this.#handle = handle;
  }

  setBirthday(birthday) {
    this.#birthday = birthday;
  }

  setEmployer(employer) {
    this.#employer = employer;
  }

  setPosts() {
    return this.#posts;
  }

  //^^^^^^^^^^^^^ Set Methods ^^^^^^^^^^^^^

  //vvvvvvvvvvvvv Database Queries vvvvvvvvvvvvv

  // Update the User
  updateUser() {
    // Query the database and update the user's data based on UUID.
    // Return false if query failed. Return true is succeeded
    return true;
  }

  // Add a User to the database
  static async addUser(newUser) {
    try {
      const response = await fetch("http://localhost:3000/users", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(newUser),
      });

      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }

      const data = await response.json();
      return data;
    } catch (error) {
      error.message = `Error: ${error.message}`;
    }
  }

  // To be implimented once data structure is confirmed
  static buildUser(data) {
    let d = data;
    // Query the database and build user object
    // Return User Object if succeeded
    return this.buildTestUser;
  }

  // Test static function //Delete by final implimentation
  static buildTestUser() {
    return new this(
      "Billy",
      "Bob",
      "00001",
      "@barryb",
      Date.now().toString(),
      "Anemoia Studios"
    );
  }
}
