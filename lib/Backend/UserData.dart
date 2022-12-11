
class UserData{
  String name;
  String bio;
  String website;

  UserData(this.name, this.bio, this.website);

  Map<String, dynamic> toJson() =>{
    'name': name,
    'bio': bio,
    'website': website,
  };


}

