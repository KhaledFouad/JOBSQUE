class UserModel {
  String? id, name, email, password, jobs, locations;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.jobs,
      this.locations});

      factory UserModel.fromJson(Map<String,dynamic>map){

    UserModel user = UserModel(
      id : map["id"],
      name: map["name"],
      email: map["email"],
      password: map["password"],
      jobs:map["jobs"],
      locations: map["locations"]
    );

    return user;
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> j={
      "id" : id,
      "name":name,
      "email":email,
      "password":password,
      "jobs":jobs,
    };
    return j;
  }
}
