import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class ReportTab extends StatefulWidget {
  const ReportTab({Key? key}) : super(key: key);

  @override
  _ReportTabState createState() => _ReportTabState();
}

class _ReportTabState extends State<ReportTab> {
  bool isPictureOpened = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614, color: Color(0xffF9f9f9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xffE0E0E0),width: 1))
              ),
              width: 390, height: 495,padding: EdgeInsets.only(left: 10,top: 32,right: 12, bottom: 25),
              // child: SvgPicture.asset(image_Calendar),
              child: Image.asset('images/teeth/calendar.png',fit: BoxFit.cover,),
            ),
            Container(
              color: Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 276, height: 28, margin: EdgeInsets.only(left: 28,top: 31),alignment: Alignment.centerLeft,
                              child: Text('2022년 10월 24일', style: TextStyle(fontSize: 25, color: Color(0xff000000)),),
                            ),
                            Container(
                              width: 276, height: 28, margin: EdgeInsets.only(left: 28),alignment: Alignment.centerLeft,
                              child: Text('* 파란색이 진할수록 양치 점수가 높아요.', style: TextStyle(fontSize: 11, color: Color(0xff8D8D8D)),),
                            ),
                          ],
                        ),
                        Container(
                          width: 60, height: 60,alignment: Alignment.center, margin: EdgeInsets.only(top: 24),
                          decoration: BoxDecoration(
                              color: Color(0xffB1BBFF),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text('53점',style: TextStyle(color: Color(0xff1A32D4), fontSize: 15,fontWeight: FontWeight.w700),),
                        )
                      ]
                  ),
                  Container(
                    width: 108, height: 29, margin: EdgeInsets.only(top: 41,left: 24),
                    child: Text('양치습관', style: TextStyle(color: Color(0xff4E4E4E), fontSize: 20,fontWeight: FontWeight.w700),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 112, height: 27, margin: EdgeInsets.only(left: 24,top: 11),
                        child: Text('하루 양치횟수', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 227, height: 27, margin: EdgeInsets.only(top: 11), alignment: Alignment.centerRight,
                        child: Text('2회 / 3', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                    width: 348, height: 95, margin: EdgeInsets.only(left:22, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xffE1E5FF),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 15,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff6478FF)
                          ),
                          child: Text("1", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff6478FF)
                          ),
                          child: Text("2", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                        ),
                        Column(
                          children: [
                            Container(
                                width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xff6478FF)
                                ),
                                // child: Text("3", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                                child: DottedBorder(
                                  strokeWidth: 1.5,
                                  borderType: BorderType.RRect,
                                  dashPattern: [6, 2],
                                  color: Color(0xff263FE9),
                                  padding: EdgeInsets.zero,
                                  radius: Radius.circular(50),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    child: Container(
                                      height: 54,
                                      width: 54,
                                      color: Color(0xffC6CDFF), alignment: Alignment.center,
                                      child: Text("3", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                                    ),
                                  ),
                                )
                            ),
                            Container(
                              width: 54, height: 22, margin: EdgeInsets.only(top: 3, left: 12), alignment: Alignment.center,
                              child: Text('권장',style: TextStyle(color: Color(0xff7B89EA), fontSize: 14),),
                            )
                          ],
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffC6CDFF)
                          ),
                          child: Text("4", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffC6CDFF)
                          ),
                          child: Text("5", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 112, height: 27, margin: EdgeInsets.only(left: 24,top: 21),
                        child: Text('하루 양치시간', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 227, height: 27, margin: EdgeInsets.only(top: 11), alignment: Alignment.centerRight,
                        child: Text('평균 2:21 / 3:30', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                      width: 348, height: 114, margin: EdgeInsets.only(left:22, top: 3),
                      decoration: BoxDecoration(
                          color: Color(0xffE1E5FF),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Container(
                              width: 296, height: 29, margin: EdgeInsets.only(top: 16, left: 18, right: 22),
                              child: Row(
                                  children: List<Widget>.generate(16, (index) =>
                                      Container(
                                        width: 15, height: 28, margin: EdgeInsets.only(left: 3.5),
                                        decoration: BoxDecoration(
                                            color: index <= 11? Color(0xff6478FF) : Color(0xffC6CDFF),
                                            borderRadius: BorderRadius.circular(4.3)
                                        ),
                                      ),
                                  )
                                // [
                                //
                                // ],
                              )
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 27, top: 14),
                                          child: Text('1회', style: TextStyle(fontSize: 14,color: Color(0xff9E9E9E)),),
                                        ),
                                        Container(
                                          width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 6, top: 14),
                                          child: Text('2:49', style: TextStyle(fontSize: 14,color: Color(0xff6377F9)),),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 27, top: 10),
                                          child: Text('2회', style: TextStyle(fontSize: 14,color: Color(0xff9E9E9E)),),
                                        ),
                                        Container(
                                          width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 6, top: 10),
                                          child: Text('1:58', style: TextStyle(fontSize: 14,color: Color(0xff6377F9)),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 100, height: 22, margin: EdgeInsets.only(left: 130, top: 11), alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Color(0xffFF7E47))
                                  ),
                                  child: Text('평균 21초 부족',style: TextStyle(fontSize: 12, color: Color(0xffFF7E47)),),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                  Row(
                    children: [
                      Container(
                        width: 66, height: 27, margin: EdgeInsets.only(left: 27, top: 21),
                        child: Text('구강용품',style: TextStyle(fontSize: 15, color: Color(0xff4E4E4E)),),
                      ),
                      Container(
                        width: 53, height: 31, margin: EdgeInsets.only(left: 177, top: 17), alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffE1E5FF),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('치실',style: TextStyle(color: Color(0xff263FE9), fontSize: 15),),
                      ),
                      Container(
                        width: 41, height: 31, margin: EdgeInsets.only(left: 5, top: 17), alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffE1E5FF),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('+',style: TextStyle(color: Color(0xff263FE9), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                    width: 108, height: 29, margin: EdgeInsets.only(left: 24,top: 36),
                    child: Text('치태 잔여율',style: TextStyle(color: Color(0xff4E4E4E), fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 68, height: 26, margin: EdgeInsets.only(left: 27,top: 10),
                        child: Text('잔여량', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 234, height: 26, margin: EdgeInsets.only(left: 37,top: 10), alignment: Alignment.centerRight,
                        child: Text('20%', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 68, height: 26, margin: EdgeInsets.only(left: 27,top: 4),
                        child: Text('분포', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 234, height: 26, margin: EdgeInsets.only(left: 37,top: 4), alignment: Alignment.centerRight,
                        child: Text('앞윗니에 치태가 몰려있어요', style: TextStyle(color: Color(0xff0ff626262), fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: 67, height: 26, margin: EdgeInsets.only(left: 23,top: 15), alignment: Alignment.center,
                                    child: Text('치태 잔여율', style: TextStyle(color: Color(0xffFF7E47), fontSize: 12),),
                                  ),
                                  Container(
                                    width: 67, height: 26, margin: EdgeInsets.only(left: 200,top: 15), alignment: Alignment.centerRight,
                                    child: Text('치태 제거율', style: TextStyle(color: Color(0xff6377F9), fontSize: 12),),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 80, height: 38, margin: EdgeInsets.only(left: 23), alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFE6DC),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Text('20%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 15, fontWeight: FontWeight.w700),),
                                ),
                                Container(
                                  width: 259, height: 38, margin: EdgeInsets.only(left: 2), alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xff6377F9),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Text('80%', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15, fontWeight: FontWeight.w700),),
                                ),
                              ],
                            ),
                            Container(
                              width: 347, height: 85, margin: EdgeInsets.only(top: 12, left: 23, right: 23), padding: EdgeInsets.only(top: 4),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE6DC),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(top: 6,left: 66),
                                        child: Text('앞니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 13),),
                                      ),
                                      Container(
                                        width: 53, height: 6, margin: EdgeInsets.only(left: 9, top: 7),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFF7E47),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                      ),
                                      Container(
                                        width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(top: 4.5,left: 10),
                                        child: Text('5%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 13),),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 39, height: 26, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 66),
                                        child: Text('아랫니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 13),),
                                      ),
                                      Container(
                                        width: 90, height: 6, margin: EdgeInsets.only(left: 9, top: 2, bottom: 3),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFF7E47),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                      ),
                                      Container(
                                        width: 39, height: 26, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 10),
                                        child: Text('12%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8.5),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 66),
                                          child: Text('윗니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 13),),
                                        ),
                                        Container(
                                          width: 27, height: 6, margin: EdgeInsets.only(left: 9, top: 1),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFF7E47),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                        ),
                                        Container(
                                          width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 10),
                                          child: Text('3%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: 84, left: 36,
                          child: Container(
                            width: 10, height: 30,
                            child: Transform.scale(scale: 2.0,child: SvgPicture.asset(image_homeArrow)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 55,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          isPictureOpened = !isPictureOpened;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 110, height: 26, margin: EdgeInsets.only(left:15, top: 27),
                            child: Text('사진으로 확인하기', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                          ),
                          Container(
                            width: 30, height: 30, margin: EdgeInsets.only(top: 19),
                            child: Icon(isPictureOpened? CupertinoIcons.chevron_down : CupertinoIcons.chevron_up, size: 12, color: Color(0xff626262),),
                          )
                        ],
                      ),
                    ),
                  ),
                  isPictureOpened?
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 35),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom:15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 67, height: 26, alignment: Alignment.centerLeft,
                                    child: Text('앞니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                  ),
                                  Container(
                                    width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                    child: Text('치석 잔여율 5%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              Container(
                                width: 317,height: 137,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(image_teethPictureFront,fit: BoxFit.fitWidth,)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 67, height: 26, alignment: Alignment.centerLeft,
                                    child: Text('아랫니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                  ),
                                  Container(
                                    width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                    child: Text('치석 잔여율 12%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              Container(
                                width: 317,height: 137,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(image_teethPictureBottom,fit: BoxFit.fitWidth,)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:134),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 67, height: 26, alignment: Alignment.centerLeft,
                                    child: Text('윗니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                  ),
                                  Container(
                                    width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                    child: Text('치석 잔여율 3%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              Container(
                                width: 317,height: 137,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(image_teethPictureTop,fit: BoxFit.fitWidth,)
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
                      :
                  Container(
                    height: 134,
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
