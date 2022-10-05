import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

import 'HomeDetail.dart';
import 'HomeImage.dart';
import 'component/BrushCoundCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClean = false;

  Duration duration = Duration();
  Timer? timer;
  String lastDuration = "00:00";

  bool isSheetOpen = false;
  bool isSheetPop = false;
  late Function sheetSetState;

  void startTimer() {
    timer?.cancel();
    duration = duration = Duration();
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = 1;
    if(isSheetOpen){
      sheetSetState(() {
        final seconds = duration.inSeconds + addSeconds;
        duration = Duration(seconds: seconds);
        lastDuration = "${duration.inMinutes < 10? "0${duration.inMinutes}" : duration.inMinutes}:${duration.inSeconds < 10? "0${duration.inSeconds}" : duration.inSeconds}";
      });
    }
    else{
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    }
  }

  void afterBrush () {
    isSheetOpen = true;
    isSheetPop = false;
    startTimer();
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(34.0),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) SheetSetState) {
            sheetSetState = SheetSetState;
            return GestureDetector(
              onTap: () {
                setState(() {
                  if(isSheetPop){
                    isClean = true;
                    timer!.cancel();
                    Navigator.pop(context);
                  } else{
                    timer!.cancel();
                  }
                });
                SheetSetState((){
                  isSheetPop = true;
                });
              },
              child: Container(
                width: 500,
                height: 324,
                child: Container(
                  height: 324,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 41,left: 35), width: 180,
                            alignment: Alignment.centerLeft,
                            child: Text('양치기님',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0,
                                height: 1.5,
                                color: Color(0xff3F3F3F)
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 35),
                            child: Text.rich(
                              TextSpan(
                                  text: '양치가 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0,
                                      color: Color(0xff3F3F3F)
                                  ),
                                  children: [
                                    TextSpan(
                                      text: isSheetPop? "완료" :'시작',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.0,
                                          color: isSheetPop? Color(0xff263FE9) : Color(0xffFF7E47)
                                      ),
                                    ),
                                    TextSpan(
                                      text: '되었습니다',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.0,
                                          color: Color(0xff3F3F3F)
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 34, top: 30), width: 30, height: 30,
                                child: SvgPicture.asset(image_timeIconBlue, fit: BoxFit.cover, width: 30,height: 30, color: isSheetPop? Color(0xff263FE9) : Color(0xffFF7E47),),
                              ),
                              Container(
                                  width: 175, margin: EdgeInsets.only(left: 5, top: 28),
                                  child: Text(lastDuration, style: TextStyle(fontSize: 40, color: isSheetPop ? Color(0xff263FE9) : Color(0xffFF7E47)),)
                              ),
                            ],
                          ),
                          Container(
                            width: 111, height: 34, margin: EdgeInsets.only(left: 70, top: 11),
                            child: Text('목표시간 03:00',style: TextStyle(color: Color(0xff939393), fontWeight: FontWeight.w400, fontSize: 13),),
                          ),
                          Row(
                              children: [
                                Container(
                                  width:33.13, height: 15.12, margin: EdgeInsets.only(left: 37, top: 45),
                                  child: Image.network(image_batteryIcon),
                                ),
                                Container(
                                  width: 23,height: 15.12, margin: EdgeInsets.only(top: 47, left: 11),
                                  child: Text('70%', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff9D9D9D)),),
                                )
                              ]

                          )
                        ],
                      ),
                      Container(
                        width: 125, height: 295, margin: EdgeInsets.only(top: 29,left: 18),
                        child: Image.asset(image_brushImgInPopUp),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(isClean? 0xffE1E5FF : 0xffFFECE3),
      child: Column(
        children: <Widget>[
          HomeImage(isClean: isClean, onPressed: afterBrush,),
          Container(
            height: 177,
            margin: EdgeInsets.only(left: 21.0, top: 14.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return BrushCountCard(myIndex: index, isClean: isClean,duration: duration,);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 21, right: 20),
            height: 78.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFBFBFB)
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left:16.0),
                  width: 70.0,
                  child: Text("치태잔여율"
                    ,style: TextStyle(
                        color: Color(0xff4860FF),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: VerticalDivider(
                    width: 0,
                    thickness: 0,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 13,
                        margin: EdgeInsets.only(top: 22,left: 17),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(right: 5),
                              child: Icon(CupertinoIcons.camera_fill,size: 12.0,color: Color(0xff4860FF),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 114,
                              child: Text("최근 치태 잔여 20%"
                                ,style: TextStyle(
                                    color: Color(0xff4860FF),
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 103,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Color(0xffFFE9E0),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        margin: EdgeInsets.only(top: 7, left: 16),
                        alignment: Alignment.center,
                        child: Text("아랫니를 더 꼼꼼히!"
                          ,style: TextStyle(
                              color: Color(0xffFF8C5B),
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                              height: 1.1
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22),
                  child: FlatButton(
                    onPressed: (){
                      isClean?
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeDetailPage();
                      }))
                          :
                      print("not clean");
                    },
                    padding: EdgeInsets.zero,
                    child: Text("더보기"
                      ,style: TextStyle(
                          color: Color(isClean? 0xff424242: 0xffD3D3D3),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
