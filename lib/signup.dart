import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: ()
          {
            Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
        size: 20,
        color: Colors.black,)
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height-50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
              children: <Widget>[
                Text("Sign up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
                Text("Create an account,It's free",
                style: TextStyle(fontSize: 15,color: Colors.grey[700]),)
            ],
          ),
              Column(
            children: <Widget>[
              inputFile(label: "Username"),
              inputFile(label: "Email"),
              inputFile(label: "Password",obscureText: true),
              inputFile(label: "Confirm Password",obscureText: true),
            ],
          ),
              Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border(
                bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )
          ),
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: (){},
            color: Colors.green,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
                color: Colors.white),),

          ),
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  Text(" Login",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),)
                ],
              )
        ],
        ),
      ),
    ),
    );
  }
}

