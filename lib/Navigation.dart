import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';
import 'package:teeth_outsourcing/friends/Friends.dart';
import 'package:teeth_outsourcing/teeth/Teeth.dart';

import 'home/Home.dart';
import 'report/Report.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Report(),
    Teeth(),
    Friends()
  ];

  final List<String> imgRef = [
    image_bnbHome,
    image_bnbReport,
    image_bnbTeeth,
    image_bnbFriend
  ];

  final List<String> bnbTitle = [
    "홈",
    "양치 리포트",
    "구강고민",
    "친구"
  ];

  Widget bnbItem (int myIndex) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            _currentPageIndex = myIndex;
          });
        },
        child: Column(
          children: [
            Container(
              child: SvgPicture.asset(imgRef[myIndex],
                color: myIndex == _currentPageIndex? Color(0xff263FE9) : Color(0xffC2C2C2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(bnbTitle[myIndex],
                style: TextStyle(
                    color: myIndex == _currentPageIndex? Color(0xff263FE9) : Color(0xff989898),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _pages[_currentPageIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: Offset(0,-1),
              blurRadius: 1.0
            )
          ]
        ),
        padding: EdgeInsets.only(left: 18, top: 2),
        height: 79,
        child: Row(
          children: [
            bnbItem(0),
            bnbItem(1),
            bnbItem(2),
            bnbItem(3)
          ],
        ),
      ),
    );
  }
}
