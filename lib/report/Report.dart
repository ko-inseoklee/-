import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeth_outsourcing/component/MyAppBar.dart';

import 'GraphTab.dart';
import 'ReportTab.dart';

class Report extends StatefulWidget {
  Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool isGraph = true;

  bool isPictureOpened = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyAppBar(title: "양치 리포트"),
          Container(
            height: 30,
            width: 350,
            margin: EdgeInsets.only(top: 23),
            decoration: BoxDecoration(
                color: Color(0xffE9E9E9),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    margin: EdgeInsets.only(left: 2),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('그래프',
                      style: TextStyle(
                          color: isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: !isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('캘린더',
                      style: TextStyle(
                          color: !isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isGraph? GraphTab() : ReportTab()
        ],
      ),
    );
  }
}
