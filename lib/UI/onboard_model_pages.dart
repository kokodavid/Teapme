import 'package:flutter/material.dart';

class OnBoardModel extends StatelessWidget {
  final String? title, subtitle,image;

  const OnBoardModel({Key? key,this.title,this.image,this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image!),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 8),
            child: Text(
                subtitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
              ),

            ),
          )

        ],
      ),
    );
  }
}
