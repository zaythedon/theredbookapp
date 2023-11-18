import { User as UserModelObject } from './User.js';

export class Post{

    #User;
    #Content;
    #Likes;
    #Replies;
    #PostID


    // Do not call constructor directly
    constructor(userID){
        this.#Content = [];
        this.#Likes = [];
        this.#Replies = [];
        this.#User = userID;
    }

    getUserFromPost(){
        return new UserModelObject
    }

    static GetPostsFromUser(userID, amount){
        
        // Query DB Here and return top amount-number of postIDs
        postIDs = []

        UserPosts = [];
        // Add to list of Posts
        for (i = 0; i < postIDs; i++){
            UserPosts.push(this.GetPostFromDB(userID, postIDs[i]));
        }

        return UserPosts;
    }

    //vvvvv Build Post from Database vvvvv

    static GetPostFromDB(userID, postID){
        // How to build a post from the DB using a given user and postID
        tempPost = new this(userID);    // Sets User
        tempPost.SetPostID(postID);          // Sets PostID
        tempPost.SetContent(this.getContentFromDB(userID, postID));    // Sets Content
        tempPost.SetReplies(this.GetRepliesFromDB(userID, postID));    // Sets Replies
        tempPost.SetLikes(this.GetLikesFromDB(userID, postID));        // Sets Likes

        return tempPost;    // Return Post Object
    }

    
    GetContentFromDB(userID, postID){
        // How to build content objects from the DB using userID and this.postID
        // Only supports Text for now.

        // Build Content Array
        tempContent = [];   // Initialize list
        tempContent.push(new Content(ContentType.Text, "This is Text"));    // Add Content Objects to list

        return tempContent;
    }

    GetRepliesFromDB(userID, postID){
        // How to build Reply objects from the DB using userID and this.postID
        // Only supports Text for now.

        // Build Replies Array
        tempReplies = [];   // Initialize list
        tempReplies.push(new Reply(this.#PostID, "UUID", "This is Text"));    // Add Reply Objects to list

        return tempReplies;
    }

    GetLikesFromDB(userID, postID){
        // How to build list of likes (userIDs) from the DB using userID and this.postID
        // Only supports Text for now.

        // Build Likes Array
        tempLikes = [];            // Initialize list
        tempLikes.push("UUID");    // Add Reply Objects to list

        return tempLikes;
    }


    // Take the current post object and upload it to the Database.
    //      Updates post if postID already exists.
    UploadPostToDB(){
        //Update the Database based on current post object.

        return true; // If successful
    }

    
    //vvvvv New Post (not from database) vvvvv

    static BuildNewPost(userID){
        tempPost = new this(userID);            // Sets User
        tempPost.SetPostID(this.#GetPostID());  // Sets PostID
        
        // Use Sets and Adds to add content

        return tempPost;    // Return Post Object
    }

    static #GetPostID(){
        //Return a new valid unique post identifier.
        // (A PostID that is not already in use.)
    }
    

    //vvvvv Gets, Sets, and Adds vvvvv


    GetContent(){
        return this.#Content;
    }

    SetContent(content){
        this.#Content = content;
    }

    AddContent(content, index){
        this.#Content.splice(index, 0, content);
    }

    GetUserID(){
        return this.#User;
    }

    GetLikes(){
        return this.#Likes;
    }

    SetLikes(likes){
        this.#Likes = likes;
    }
    
    AddLike(userID){
        this.#Likes.push(userID);
    }

    AddLikes(userIDs){
        for (i = 0; i < userIDs.length; i++){
            this.#Likes.push(userIDs[i]);
        }
    }

    GetReplies(){
        return this.#Replies;
    }

    SetReplies(replies){
        this.#Replies = replies;
    }
    
    AddReply(reply){
        this.#Replies.push(reply);
    }

    AddReplies(replies){
        for (i = 0; i < replies.length; i++){
            this.#Replies.push(replies[i]);
        }
    }

    GetPostID(){
        return this.#PostID;
    }

    SetPostID(postID){
        this.#PostID = postID;
    }
}

// Content Class for storing Content

export class Content{
    
    ContentType = {
        Text: 0,
        Images: 1,
        Video: 2,
        Post: 3
    }

    #Content;
    #Type;

    constructor(type, content){
        this.#Type = type;
        this.#Content = content;
    }

    GetContent(){
        // return the content of the appropriate type encoded to an "any" variable
        // Currently only implemented for text

        return this.#Content;
    }

    GetContentType(){
        return this.#Type;
    }

    SetContent(content){
        this.#Content = content;
    }

    SetContentType(contentType){
        this.#Type = contentType;
    }
}



// Reply Class for storing replies

export class Reply{

    #UserID     // What User Posted This?
    #Content    // What Text is in the reply?
    #PostID     // What Post does this Reply Belong To?

    constructor(userID, content, postID){
        this.#UserID = userID;
        this.#Content = content;
        this.#PostID = postID;
    }

    GetUserID(){
        return this.#UserID;
    }

    GetContent(){
        return this.#Content;
    }

    SetContent(content){
        this.#Content = content;
    }

    GetPostID(){
        return this.#PostID;
    }
}