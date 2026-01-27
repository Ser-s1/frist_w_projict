import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/funcions/data_control.dart';
import 'package:flutter_app/screens/reregistration_secrin.dart';
import 'package:flutter_app/screens/home_screen_loged.dart';
import 'package:flutter_app/modies/api.dart';


TextEditingController Name = TextEditingController();
TextEditingController password = TextEditingController();
Customrs cust = Customrs(name:"", password:"");
DataSave dshbogila = DataSave();
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  String name = Name.text;
  void getNAme(){
      name;}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/theam_box2.png'), 
              fit: BoxFit.cover, 
            ),
          ),
        ),
        actionsPadding: EdgeInsets.all(12),
        backgroundColor: Colors.blue.shade300,
        actions: [
         Row(
          children: [
          FilledButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()), 
            );
          },
          child: Icon(Icons.home),
        ),
        SizedBox(width: 15,),
        FilledButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => reregistrationSecrin()), 
            );
          },
          child: Icon(Icons.app_registration),
        ),
          ]
         )
        ]
         ),
      body:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/theam4.jpg"),
        fit: BoxFit.cover, 
          ),
        ),
      child: Padding(
      padding: EdgeInsets.all(50), 
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 8),
          Center(
            child:
              TextField(
                controller: Name,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
          ),
        ),      
      ),
      SizedBox(height: 8),
      Center(

        child:
         TextField(
          controller: password,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        
      ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: ()
            {
                String username = Name.text;
                String pass = password.text;
              if(cust.ifExist(username,pass)==true){
                if(cust.defindPass(username,pass)==true){
                  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreenLoged()),
                );
                dshbogila.saveData(name:username,password: pass);
                name = username;
                }
                
              }  
              else{
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen()), 
                );
                

              }
            },
          child: Text('Login'),
        ),
        SizedBox(height: 8),
        SizedBox(height: 8),
        ElevatedButton (onPressed:(){
          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => reregistrationSecrin()), 
                );
        },child:Text("registr"))
        ],  
      )
    )
      )
    );
    
    }
  }
