import 'package:flutter/material.dart';
import 'package:teapme/Resources/constants.dart';
import 'package:teapme/UI/forgotPassMailSent.dart';
import 'package:teapme/Utils/colors.dart';

import 'SignUp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  "Forgot Password",
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
                        child: Text(
                            "Enter your email below, you will receive an email with instruction on how to reset your password in a few seconds",
                          style: TextStyle(
                            fontSize: 14
                          ),
                          textAlign: TextAlign.start,
                        )
                    ),
                    SizedBox(height: 10,),
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
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassMail()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30,bottom: 20),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.primaryOrange,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Send Instructions",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
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
