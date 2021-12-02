import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              color: AppColors.background,
              child: Column(
                children: [
                  Stack(
                      children: [
                        Container(
                          height: 140,
                          color: AppColors.homepageTop,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25.0,left: 20),
                                child: Image.asset("assets/teapme.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25.0,right: 20),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.search,color: Colors.white,size: 30,),
                                      SizedBox(width: 10,),
                                      Icon(Icons.notifications_none_outlined,color: Colors.white,size: 30,),
                                      SizedBox(width: 10,),
                                      Image.asset("assets/diamond.png"),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: Container(
                            height: 50,
                            decoration: new BoxDecoration(
                                color: AppColors.primaryOrange,
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(15.0),
                                  topRight: const Radius.circular(15.0),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                  child: Text("Profile Edit",style: TextStyle(color: Colors.white,fontSize: 15,),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Icon(Icons.east,color: Colors.white,size: 25,),
                                ),

                              ],
                            ),
                          ),
                        )

                      ]
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 17
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
                    child: Container(
                      constraints: BoxConstraints(minHeight: 100),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset("assets/menu.png")
                            ),
                          ),
                          Text(
                            "35,544.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Teapme Balance",
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.textLight
                            ),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                            color: AppColors.lightGrey,
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/ratebeat.png"),
                                ),
                                Text(
                                  "You earned Ksh 68,689.0 in the last 30 days",
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.arrow_forward_ios),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.secondaryGreen,
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Withdraw",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(color: AppColors.secondaryGreen,),
            Container(color: AppColors.secondaryGreen,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: AppColors.secondaryGreen,
              inactiveColor: Colors.black,
              title: Text('Dashboard'),
              icon: Icon(Icons.dashboard)
          ),
          BottomNavyBarItem(
              title: Text('Teapers'),
              icon: Icon(CupertinoIcons.heart),
            activeColor: AppColors.secondaryGreen,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
              title: Text('Profile'),
              icon: Icon(CupertinoIcons.person_circle),
            activeColor: AppColors.secondaryGreen,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

