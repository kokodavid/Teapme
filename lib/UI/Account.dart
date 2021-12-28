import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:teapme/Utils/colors.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.background,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 13),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/profile_holder.png"),
                          SizedBox(width: 20,),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                "@Kokodave",
                                ),
                                Text(
                                    "kokodavid@gmail.com"
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "View my Page",
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                    "App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 100
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/profile_holder.png",height: 30,),
                                SizedBox(width: 15,),
                                Text("Account Settings"),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)

                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/diamond.png",height: 30,),
                                SizedBox(width: 15,),
                                Text("My Points"),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)

                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Launch Screen"),
                          Container(
                              child: Row(
                                children: [
                                  Text("Dashboard"),
                                  SizedBox(width: 10,),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ))


                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Appearance"),
                          Container(
                              child: Row(
                                children: [
                                  Text("Light"),
                                  SizedBox(width: 10,),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ))


                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Chat With Us"),
                          Icon(Icons.arrow_forward_ios)


                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Whats New"),
                          Icon(Icons.arrow_forward_ios)


                        ],
                      ),
                    ),

                  ],
                ),

              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Security",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Container(
                constraints: BoxConstraints(
                    minHeight: 50
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fingerprint"),
                      SwitcherButton(
                        value: true,
                        size: 40,
                        onColor: AppColors.primaryOrange,
                        offColor: AppColors.secondaryGreen,
                        onChange: (value) {
                          print(value);
                        },
                      )


                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "About Teapme",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Container(
                constraints: BoxConstraints(
                    minHeight: 50
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("About Us"),
                          Icon(Icons.arrow_forward_ios)


                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Terms and Privacy"),
                          Icon(Icons.arrow_forward_ios)


                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Share Teapme App",style: TextStyle(color: AppColors.primaryOrange),),


                        ],
                      ),
                    ),

                  ],
                )
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Support",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    Text(
                      "App Version 1.0.0",
                      style: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Container(
                  constraints: BoxConstraints(
                      minHeight: 50
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Support"),
                            Icon(Icons.arrow_forward_ios)


                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: AppColors.lightGrey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("FAQ"),
                            Icon(Icons.arrow_forward_ios)


                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.lightRed,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Log out",
                    style: TextStyle(
                      color: AppColors.errorColor
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
