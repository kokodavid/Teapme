import 'package:flutter/material.dart';
import 'package:teapme/Resources/constants.dart';
import 'package:teapme/UI/forgotPassword.dart';
import 'package:teapme/UI/homepage.dart';
import 'package:teapme/Utils/colors.dart';

import 'SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  width: 28,
                )

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                        child: Text("Email Address")
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 20),
                      height: 50,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: textFormDecoration
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Password")
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
                          },
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text("Forgot Password ?")
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 20),
                      height: 50,
                      child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: textFormDecoration
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5,bottom: 20),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.primaryOrange,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text("Or Sign In With"),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 20),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.light,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png"),
                          SizedBox(width: 10),
                          Text(
                            "Continue With Google",
                            style: TextStyle(
                                color: AppColors.textLight,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "New to Teapme ?"
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Create an Account",
                              style: TextStyle(
                                  color: AppColors.primaryOrange
                              ),
                            ),
                          )

                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
