import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

class RegistrationMail extends StatelessWidget {
  const RegistrationMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      width: 28,
                    )

                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Image.asset("assets/mailsent.png")
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
                            child: Text(
                              "We’ve sent you an activation email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "An email has been sent to ",
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColors.textLight
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "example@teapme.com ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            " with link to activate your account",
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColors.textLight
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              "*If the email doesn’t show up soon, check your spam folder",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textLight
                              ),
                              textAlign: TextAlign.center,

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
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
                          "Open Mail",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
