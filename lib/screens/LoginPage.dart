import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  var email = TextEditingController();
  var pass = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black,
                  width: 8
              )
          ),
          child: Center(
            child: Container(
              width: 300,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/users.jpg'),
                      radius: 35,
                      //backgroundColor: Colors.cyan,
                    ),
                    Text("Welcome Back",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Sans Serif",
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    Text("Sign to continue", style:
                    TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),),
                    Container(
                      height: 20,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: "EMAIL",
                          prefixIcon: Icon( Icons.email_outlined, color: Colors.green,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.cyanAccent
                              )
                          )
                      ),

                    ),
                    Container(
                      height: 20,
                    ),
                    TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "PASSWORD",
                        prefixIcon: Icon(Icons.lock_outlined, color: Colors.green,),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.cyanAccent)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top : 8.0),
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){
                          print("Forgot Password");
                        },
                        child: Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFF117F00),
                      ),
                      width: 300,
                      child: TextButton(onPressed: (){
                        String emailname = email.text.toString();
                        String passName = pass.text.toString();
                        print("Email : $emailname, Password : $passName");
                      },
                        child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 25, left: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text("Don't have account? ",
                            style: TextStyle(
                                color: Color(0xFF676767)
                            ),),
                          InkWell(
                              onTap: (){
                                print("On Pressed");
                              },
                              child: Text("create a new account",
                                style: TextStyle(
                                    color: Colors.green
                                ),)
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
