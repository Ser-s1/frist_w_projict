import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/funcions/data_control.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'dart:io';

TextEditingController Name = TextEditingController();
TextEditingController password = TextEditingController();
Customrs cust = Customrs(name:"", password:"");

class reregistrationSecrin extends StatelessWidget {
  const reregistrationSecrin({super.key});

  

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
              MaterialPageRoute(builder: (context) => LoginScreen()), 
            );
          },
          child: Icon(Icons.login),
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
      child:Padding(
        padding: EdgeInsets.all(50),
      child:Column(
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
                cust.ifExistAdd(username, pass);
                print(cust.show);
              
              if(cust.show == "User already exists!"){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => reregistrationSecrin()), 
                );
              }
              else if(cust.show == "User added successfully."){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen()), 
                );
              }
              else{
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => reregistrationSecrin()), 
                );
              }
            },

          
          
          child: Text('registr'),

        ),
        SizedBox(height: 8),
        ],  
      ),
      ),
      )
    );
  }
}