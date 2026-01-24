
class Customrs{
  Customrs({required String name, required String password});
  static Map<String, String> data = {};
  String show = ""; 
  void ifExistAdd(String name, String password) {
  if (data.containsKey(name)) {
    show = "User already exists!";
        print(show); 
    return; 
  }
  if (name.isNotEmpty && password.isNotEmpty) {
    addCustomer(name, password);
    show = "User added successfully.";
    print(show);
  } 
  else {
    show = "Please fill in all fields.";
        print(show);

  }
  }
 String getName(String name){
  return name;
}
  bool defindPass(name,password){
    return password == data[name];
  }
  
  void addCustomer(String name, String password){
    data[name] = password;
  }
  void removeCustomer(String name){
    data.remove(name);
  }
  void getCustomer(String name){
    print(data[name]);
  }
  @override
  String toString(){
    return data.toString();
  }
  bool ifExist(String name, String password){
    
    return data.containsKey(name)==true; 
  
  }

}
void main(){
  Customrs cust = Customrs(name: "admin", password: "admin123");
  cust.addCustomer("user1", "pass1");
  cust.addCustomer("admin", "admin123");
  cust.addCustomer("user2", "pass2");
  print(cust);
  cust.removeCustomer("user1");
  print(cust);
  cust.getCustomer("admin");
  Nams n = Nams();
  n.getName("sa");
}

class Nams{
  Nams();
  void getName(String name){
   print(name);
}
}