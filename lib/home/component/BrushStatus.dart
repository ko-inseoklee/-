import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class BrushStatus extends StatelessWidget {
  final bool isClean;
  const BrushStatus({Key? key,required this.isClean}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Column(
        children: [
          Container(
            height: 26,
            width: 350,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: isClean? 84.5: 237,
                  child: Container(
                    width: 38,
                    height: 19,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(isClean? '양호':'위험',style: TextStyle(fontSize: 9,height: 1.2,fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: isClean? 99.5:251.5,
                  child: Container(
                    width: 9,
                    height: 9,
                    padding: EdgeInsets.zero,
                    child: Icon(CupertinoIcons.arrowtriangle_down_fill,size: 8,color: Color(isClean? 0xff263FE9 :0xffFF8C5B),),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.0),
                  padding: EdgeInsets.only(left:12.0),
                  width: isClean? 90 : 242.0,
                  height: 18.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(25))
                  ),
                  child: Text('마지막 양치 이후',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 11.0,
                        height: 1.3
                    ),
                  ),
                ),
                Container(
                  width: isClean? 256: 104.0,
                  height: 18.0, alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 27.0,right: 8.0),
                          child: SvgPicture.asset(image_timeIconRed, color: Color(isClean? 0xff263FE9 :0xffFF8C5B), width: 16, height: 16,)
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Text(isClean?"0h 경과":'9h 경과',
                          style: TextStyle(
                              color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                              fontSize: 12.0
                          ),
                        ),
                      )
                    ],
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
