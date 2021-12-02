import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

class Supporters extends StatefulWidget {
  const Supporters({Key? key}) : super(key: key);

  @override
  _SupportersState createState() => _SupportersState();
}

class _SupportersState extends State<Supporters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Text(
                    "Total Supporters",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: AppColors.primaryOrange,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "0",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:150.0),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/heart.png"),
                    SizedBox(height: 12,),
                    Text(
                      "You do not have Teapers yet",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Share your page with your audience to get started!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textLight,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
