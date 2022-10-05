import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class GraphTab extends StatelessWidget {
  const GraphTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 397,
              width: 390,
              color: Color(0xffE1E5FF),
              child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16, left:24), width: 114, height: 23, alignment: Alignment.centerLeft,
                          child: Text('양치점수 평균',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff434343)),),
                        ),
                        Container(
                            width: 140,height: 45, margin: EdgeInsets.only(top: 2, left: 19), alignment: Alignment.centerLeft,
                            child:RichText(
                              text: TextSpan(
                                  text: "53",
                                  style: TextStyle(fontSize: 45, color: Color(0xff263FE9), fontWeight: FontWeight.w700),
                                  children: [
                                    TextSpan(text: "점", style: TextStyle(fontSize: 14, color: Color(0xff646464), fontWeight: FontWeight.w400),
                                    )
                                  ]
                              ),
                            )
                        ),
                        Container(
                          width: 174,height: 23, margin: EdgeInsets.only(top: 8, left: 24),
                          child: Text('2022년 10월 8일 - 10월 24일', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff646464))),
                        ),
                        Container(
                          width: 343, height: 280, margin: EdgeInsets.only(left: 10),
                          child: SingleChildScrollView(
                              padding: EdgeInsets.zero, reverse: true,
                              scrollDirection: Axis.horizontal,
                              // child: Image.network(image_Graph)
                            child: Image.asset('images/teeth/graph.png',fit: BoxFit.cover,),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 115),
                          child: Text('100', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('75', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('50', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('25', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('0', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                      ],
                    )
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 34,left: 24), width: 133, height: 25,
              child: Text('양치 하이라이트', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff434343)),),
            ),
            Container(
              width: 354,
              height: 307,
              margin: EdgeInsets.only(left: 16,top: 5,right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE1E5FF)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151,
                    height: 29,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 22,top: 18),
                    child: Text("오늘의 양치",
                      style: TextStyle(
                          color: Color(0xff3A54FF),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 82,
                    margin: EdgeInsets.only(top: 9,left: 22),
                    child: RichText
                      (text:
                    TextSpan(
                        text: "전체 사용자 중\n",
                        style: TextStyle(
                            color: Color(0xff4E4E4E),
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0
                        ),
                        children: [
                          TextSpan(
                            text: "하위 30%",
                            style: TextStyle(
                                color: Color(0xff263FE9),
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0,
                                height: 1.5
                            ),
                          ),
                          TextSpan(
                            text: " 수준이에요.",
                            style: TextStyle(
                                color: Color(0xff4E4E4E),
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0
                            ),
                          )
                        ]
                    ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 13,
                    margin: EdgeInsets.only(left: 23),
                    decoration: BoxDecoration(
                      color: Color(0xffACB7FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 104,
                          height: 13,
                          decoration: BoxDecoration(
                            color: Color(0xff3A54FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 17, height: 29, margin: EdgeInsets.only(left: 23),
                          alignment: Alignment.centerLeft,
                          child: Text('0', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('25', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('50', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('75', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.centerLeft,
                          child: Text('100', style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 312, margin: EdgeInsets.only(left: 23,top: 25),
                    child: Divider(color: Color(0xff858585), thickness: 0.5,),
                  ),
                  Container(
                    width: 302, height: 86, margin:EdgeInsets.only(left: 22),
                    child: RichText(
                      text: TextSpan(
                          text: "같은 20대 여성들보다\n",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4E4E4E),
                              height: 1.5
                          ),
                          children: [
                            TextSpan(
                              text: "12점 ",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff263FE9),
                                  height: 1.5
                              ),
                            ),
                            TextSpan(
                              text: "낮아요.",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4E4E4E),
                                  height: 1.5
                              ),
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 354, height: 339, margin: EdgeInsets.only(left: 16, top: 17, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFE6DC), borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151, height: 29, margin: EdgeInsets.only(left: 22,top: 16), alignment: Alignment.centerLeft,
                    child: Text('오늘의 주의상황', style: TextStyle(color: Color(0xffFF7E47), fontSize: 12),),
                  ),
                  Container(
                    width: 302, height: 74, margin: EdgeInsets.only(left: 22, top: 9),
                    child: RichText(
                      text: TextSpan(
                          text: "오른쪽앞니 뒤쪽", style: TextStyle(color: Color(0xffFF7E47), fontSize: 23, fontWeight: FontWeight.w800, height: 1.5),
                          children: [
                            TextSpan(
                              text: "에\n", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                            ),
                            TextSpan(
                              text: "충치가 생길 확률이 높아요.", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    width: 130, height: 22, margin: EdgeInsets.only(left: 22,top: 9), alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffFF7E47))
                    ),
                    child: Text('오른쪽 앞니 양치 미흡',style: TextStyle(fontSize: 12,height: 1.5,color: Color(0xffFF7E47)),),
                  ),
                  Container(
                    width: 311.5, margin: EdgeInsets.only(left: 21, top: 28),
                    child: Divider(color: Color(0xff858585), thickness: 0.5,),
                  ),
                  Container(
                    width: 302, height: 74, margin: EdgeInsets.only(left: 22, top: 15),
                    child: RichText(
                      text: TextSpan(
                          text: "양치 시간을\n", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
                          children: [
                            TextSpan(
                              text: "20초", style: TextStyle(color: Color(0xffFF7E47), fontSize: 23, fontWeight: FontWeight.w800, height: 1.5),
                            ),
                            TextSpan(
                              text: "늘려주세요.", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    width: 105, height: 22, margin: EdgeInsets.only(left: 22), alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffFF7E47))
                    ),
                    child: Text('양치 시간 부족',style: TextStyle(fontSize: 12,height: 1.5,color: Color(0xffFF7E47)),),
                  ),
                ],
              ),
            ),
            Container(
              width: 350, height: 302, margin: EdgeInsets.only(left: 20, top: 19, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 107, height: 24, alignment: Alignment.centerLeft, margin: EdgeInsets.only(top: 16,left: 27),
                    child: Text('양치시간 요약',style: TextStyle(fontSize: 12),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난주 대비 평균 양치 시간이 늘었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번주',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: Text('02:54:00', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),),
                      ),
                      Container(
                        width: 62, height: 24, margin: EdgeInsets.only(left: 34,top: 16),alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff263FE9), borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ 50:50', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난주  02:03:10',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                  Container(
                    width: 311.5,
                    margin: EdgeInsets.only(left: 17, top: 14, right: 21),
                    child: Divider(thickness: 0.5,color: Color(0xff858585),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난달 대비 평균 양치 시간이 늘었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번달',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: Text('02:50:00', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),),
                      ),
                      Container(
                        width: 62, height: 24, margin: EdgeInsets.only(left: 34,top: 16),alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff263FE9), borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ 00:20', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난달  02:30:00',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                ],
              ),
            ),
            //양치 횟수 요약
            Container(
              width: 350, height: 313, margin: EdgeInsets.only(left: 20, top: 19, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 107, height: 24, alignment: Alignment.centerLeft, margin: EdgeInsets.only(top: 16,left: 27),
                    child: Text('양치횟수 요약',style: TextStyle(fontSize: 12),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난주 대비 평균 양치횟수가 줄었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번주',style: TextStyle(color: Color(0xffFF7E47),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(text: '2.1 ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xffFF7E47)),
                              children: [
                                TextSpan(
                                    text: "번", style: TextStyle(fontWeight: FontWeight.w400)
                                )
                              ]

                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난주  2.5번',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                  Container(
                    width: 311.5,
                    margin: EdgeInsets.only(left: 17, top: 14, right: 21),
                    child: Divider(thickness: 0.5,color: Color(0xff858585),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 43, alignment: Alignment.centerLeft,
                    child: Text('지난달과 이번달 평균 양치횟수가\n동일합니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번달',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(text: '2.1 ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),
                              children: [
                                TextSpan(
                                    text: "번", style: TextStyle(fontWeight: FontWeight.w400)
                                )
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난달  2.2 번',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
