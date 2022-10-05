import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';
import 'package:teeth_outsourcing/home/camera/StatusSideCard.dart';

import 'StatusMiddleCard.dart';

class Picture extends StatefulWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  _PictureState createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  int status = 0;

  List<String> statusText = ["정면", "아래", "위"];
  List<String> statusInfoImage = [image_infoFront, image_infoTop, image_infoBottom];
  List<String> statusImage = [image_pictureFront, image_pictureTop, image_pictureBottom, image_pictureBottom];

  void showPictureGuide (int status) async {
    await Future.delayed(Duration(milliseconds: 200));
    showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        insetPadding: EdgeInsets.zero,
        child: Container(
          width: 334, height: 369, margin: EdgeInsets.zero, padding: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                width: 260, height: 23, margin: EdgeInsets.only(left: 37, top: 38, right: 37), alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: statusText[status],
                    style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xff263FE9),

                    ),
                    children: [
                      TextSpan(
                          text: "에서 가이드라인에\n",
                      ),
                    ]
                  )
                ),
              ),
              Container(
                width: 260, height: 23, margin: EdgeInsets.only(left: 37,right: 37), alignment: Alignment.center,
                child: Text.rich(
                    TextSpan(
                        text: "맞춰 찍어주세요",
                        style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xff263FE9),
                        ),
                    )
                ),
              ),
              Container(
                width: 154, height: 167, margin: EdgeInsets.only(top: 17),
                child: SvgPicture.asset(statusInfoImage[status],),
              ),
              Container(
                width: 94, height: 40, margin: EdgeInsets.only(top: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff7385FF)
                ),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pop(context),
                  child: Text('확인', style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF), fontWeight: FontWeight.w400),),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showPictureGuide(status);
  }

  @override
  Widget build(BuildContext context) {
    // showPictureGuide(status);

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 49, margin: EdgeInsets.only(top: 52),
            child: Row(
              children: [
                Container(
                  width: 16, height: 24, margin: EdgeInsets.only(left: 21),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.pop(context),
                    child: Icon(CupertinoIcons.chevron_back,),
                  ),
                ),
                Container(
                  width: 170, height: 20, margin: EdgeInsets.only(left: 81), alignment: Alignment.center,
                  child: Text('양치 결과 확인', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff3F3F3F)),)
                ),
              ],
            ),
          ),
          Container(
            height: 67, margin: EdgeInsets.only(top: 13),
            child: Row(
              children: [
                StatusSideCard(status: status, image: image_pictureStatusFront, myStatus: 0),
                StatusMiddleCard(status: status, image: image_pictureStatusTop),
                StatusSideCard(status: status, image: image_pictureStatusBottom, myStatus: 2),
              ],
            ),
          ),
          Container(
            height: 439, width: 390,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 333, height: 213, alignment: Alignment.center, margin: EdgeInsets.only(top: 95),
                  child: status < 1? SvgPicture.asset(statusImage[status]) : Image.asset(statusImage[status]),
                ),
                Container(
                  width: 208, height: 36, alignment: Alignment.center, margin: EdgeInsets.only(top: 74),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFFFFF)
                  ),
                  child: Text('가이드에 맞춰 찍어주세요.',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff424242)),),
                )
              ],
            )
          ),
          Container(
            height: 224,
            child: Stack(children: [
              Image.network(image_camera,fit: BoxFit.cover,),
              Positioned(
                bottom: 36,
                left: 158,
                child: Container(
                  width: 74, height: 74,
                  child: FlatButton(
                    onPressed: () async {
                      setState(() {
                        if(status < 3) status++;
                      });
                      if(status < 3){
                        showPictureGuide(status);
                      } else {
                        showDialog(context: context, builder: (context){
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            ),
                            backgroundColor: Color(0xffFFFFFF).withOpacity(0.7),
                            insetPadding: EdgeInsets.zero,
                            child: Container(
                              width: 266, height: 266, margin: EdgeInsets.zero, padding: EdgeInsets.zero,
                              child: Column(
                                children: [
                                  Container(
                                    width: 266, height: 24, margin: EdgeInsets.only(top: 50), alignment: Alignment.center,
                                    child: Text.rich(
                                        TextSpan(
                                            text: "분석중",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400, fontSize: 22, color: Color(0xff484848)
                                            ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 50, height: 50, margin: EdgeInsets.only(top: 40),
                                    child: Transform.scale(scale: 2.0,
                                    child: CircularProgressIndicator.adaptive(strokeWidth: 55,))
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pop(context);
                        Navigator.pop(context);
                      }
                    },
                    child: Text(''),
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
