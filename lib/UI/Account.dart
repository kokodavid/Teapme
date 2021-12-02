import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 55.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/profile_holder.png"),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Text(
                          "@Kokodave",
                            textAlign: TextAlign.start,
                          ),
                          Text("kokodavid@gmail.com"),

                        ],
                      )
                    ],
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: AppColors.lightGrey,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
