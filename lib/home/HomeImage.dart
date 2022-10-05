import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeth_outsourcing/component/MyNetworkImage.dart';
import 'package:teeth_outsourcing/data/userDummyData.dart';

import 'component/BrushCount.dart';
import 'component/BrushStatus.dart';

class HomeImage extends StatefulWidget {
  final bool isClean;
  final VoidCallback onPressed;
  const HomeImage({Key? key,required this.isClean,required this.onPressed}) : super(key: key);

  @override
  _HomeImageState createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  late String gifImage;

  @override
  Widget build(BuildContext context) {
    gifImage = widget.isClean?
    "https://github.com/ko-inseoklee/FLUTTER_BRUSH_TEETH/blob/master/images/cleanLamb.gif?raw=true"
        : "https://github.com/ko-inseoklee/FLUTTER_BRUSH_TEETH/blob/master/images/dirtyLamb.gif?raw=true";

    return Container(
      height: 455,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 27),
            child: MyNetworkImage(gifImage),
          ),
          Container(
            width: 48, height: 48, margin: EdgeInsets.only(left: 325, top: 55.0),
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(color: Color(0xffA9A9A9),width: 0.25),
                borderRadius: BorderRadius.circular(25)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(MyProfile.profileImage)),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('${MyProfile.name}님,',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        height: 1.5,
                        color: Color(0xff3F3F3F)
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                      text: '현재 구강이 ',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18.0,
                          height: 1.5,
                          color: Color(0xff3F3F3F)
                      ),
                      children: [
                        TextSpan(
                          text: widget.isClean? "건강":'위험',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color(widget.isClean? 0xff263FE9 : 0xffFF8C5B)
                          ),
                        ),
                        TextSpan(
                          text: '한 상태입니다',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color(0xff3F3F3F)
                          ),
                        )
                      ]
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 328,
              child: BrushStatus(isClean: widget.isClean,)
          ),
          Positioned(
              top: 384,
              child: BrushCount(isClean: widget.isClean,)
          ),
          Container(
            width: 238, height: 59, margin: EdgeInsets.only(left: 23, top: 52),
            child: FlatButton(
              onPressed: widget.onPressed,
              child: Text(''),

            ),
          )
        ],
      ),
    );
  }
}
