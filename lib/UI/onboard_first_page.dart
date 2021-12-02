import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teapme/Utils/colors.dart';

class FirstPage extends StatefulWidget {
  final PageController? pageController;

  final bool? accept;

  final SharedPreferences? preferences;
  const FirstPage(
      {Key? key, this.pageController, this.accept, this.preferences})
      : super(key: key);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  bool? _accept;

  late SharedPreferences prefs;

  initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();

    _accept = widget.accept;

    initSharedPref();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Image.asset("assets/Logo.png"),
          ),
          SizedBox(height: 20,),
          Text(
            "Welcome to Teapme",
            style: TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 24
            )
            ,
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The most trusted tipping platform that makes tipping process easy , transparent and fair as for everyone.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textLight,
                  fontSize: 18
              ),
            ),
          ),
        ],
      ),
    );
  }
}
