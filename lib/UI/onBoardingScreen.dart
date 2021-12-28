import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:teapme/UI/Login.dart';
import 'package:teapme/UI/SignUp.dart';
import 'package:teapme/UI/forgotPassMailSent.dart';
import 'package:teapme/UI/forgotPassword.dart';
import 'package:teapme/UI/homepage.dart';
import 'package:teapme/UI/onboard_first_page.dart';
import 'package:teapme/UI/registrationMail.dart';
import 'package:teapme/Utils/colors.dart';

import 'onboard_model_pages.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  bool _accept = true;
  Widget _onBoardingBtns(String text, Color color,Color textColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: color,
      ),
      height: 45,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 25),
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              )),
        ),
      ),
    );
  }
  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(minHeight: 10),
        padding:
        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Stack(
          children: [
            PageIndicatorContainer(
              padding: EdgeInsets.only(top: 50,bottom: 160),
              indicatorColor: AppColors.fadeOrange,
              indicatorSelectorColor: AppColors.primaryOrange,
              align: IndicatorAlign.bottom,
              length: 4,
              child: PageView.builder(
                controller: _pageController,
                  onPageChanged: onChangedFunction,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    if(index == 0){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: FirstPage()
                     );
                    }else if (index == 1){
                      return OnBoardModel(
                          title: "Smart tip collection for both individuals and hospitality industry",
                          subtitle: "Lorem ipsum dolor sit amet, consecttur adipiscing elit",
                          image: "assets/holder.png"
                      );
                    }else if(index == 2){
                      return OnBoardModel(
                          title: "Instant Feedback",
                          subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          image: "assets/holder.png"
                      );
                    }else if(index == 3){
                      return OnBoardModel(
                          title: "Dashboard to track and manage payments",
                          subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          image: "assets/holder.png"
                      );
                    }
                    return FirstPage();
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Positioned(
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 15),
                  Container(
                    constraints: BoxConstraints(minWidth: 100),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 30.0),
                             child: InkWell(
                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                                 },
                                 child: _onBoardingBtns(
                                     "Log In", AppColors.lightGrey,AppColors.darkColor)),
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 30.0),
                             child: InkWell(
                               onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                               },
                                 child: _onBoardingBtns(
                                          "Create an Account",
                                     AppColors.primaryOrange,Colors.white)),
                           )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




