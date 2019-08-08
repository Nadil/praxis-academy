class User {
  int id;
  String lastname;
  String firsname;
  String email;
  String password;

  void login(email, password){
    print('Welcome! Your email is ${email}');
  }
  void register() => print('Thanks for registering');
}

main() {
  void user1 = new User();
  var user2 = User();

  user.id = 121;
  user1.email = "nadila@gmail.com";
  
  user1.register();
  user1.login(email);
}