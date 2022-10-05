import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class BrushCount extends StatelessWidget {
  final bool isClean;
  const BrushCount({Key? key,required this.isClean}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, right: 20),
      height: 71.0, width: 349,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFBFBFB)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left:16.0),
            width: 81.0,
            child: Text("오늘 양치횟수"
              ,style: TextStyle(
                  color: Color(0xff4860FF),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 34),
            decoration: isClean?
            BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff7587FF)
            ) : BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image_brushCountBg)
                )
            ),
            child: Text("1", style: TextStyle(color: Color(isClean? 0xffFFFFFF : 0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image_brushCountBg)
                )
            ),
            child: Text("2", style: TextStyle(color: Color(0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image_brushCountBg)
                )
            ),
            child: Text("3", style: TextStyle(color: Color(0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            margin: EdgeInsets.only(left: 22), width: 14, height: 10,
            child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  showDialog(context: context,
                      barrierDismissible: true,
                      builder: (context){
                        int tempCnt = 3;
                        return StatefulBuilder(builder: (context,StateSetter setDialogState){
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26)
                            ),
                            child: Container(
                              width: 201, height: 262,
                              child: Column(
                                children: [
                                  Container(
                                    width: 141, height: 36, margin: EdgeInsets.only(top: 19),
                                    child: Text('오늘의 목표 양치횟수',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xff4860FF)),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40, height: 36, margin: EdgeInsets.only(top: 40),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color(0xffEAEAEA), width: 1)
                                        ),
                                        child: FlatButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            setDialogState((){
                                              tempCnt--;
                                            });
                                          }, child: Icon(CupertinoIcons.chevron_down,size: 14,),

                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 40, left: 15, right: 15), width: 60, alignment: Alignment.center,
                                        child: Text(tempCnt.toString(), style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400, color: Color(0xff4860FF)),),
                                      ),
                                      Container(
                                        width: 40, height: 36, margin: EdgeInsets.only(top: 40),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color(0xffEAEAEA), width: 1)
                                        ),
                                        child: FlatButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            setDialogState((){
                                              tempCnt++;
                                            });
                                          }, child: Icon(CupertinoIcons.chevron_up,size: 14,),

                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 90, height: 44, margin: EdgeInsets.only(top: 42), alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(26),
                                        color: Color(0xff7385FF)
                                    ),
                                    child: FlatButton(onPressed: () => Navigator.pop(context),
                                        child: Text('확인', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),)),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                      });
                },
                child: Image.network(image_brushCntIcon,color: Color(0xff424242),)),
          ),
        ],
      ),
    );
  }
}
