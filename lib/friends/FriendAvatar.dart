import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:teeth_outsourcing/data/userDummyData.dart';

class DottedBorder extends CustomPainter {
  //number of stories
  final int numberOfStories;
  final int score;
  final bool isNotFriend;
  final int spaceLength;
  double startOfArcInDegree = 270;

  DottedBorder({required this.score, required this.numberOfStories, this.spaceLength = 10,required this.isNotFriend});

  double inRads(double degree){
    return (degree * pi)/180;
  }

  @override
  bool shouldRepaint(DottedBorder oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {

    double arcLength = (360 - (numberOfStories * spaceLength))/numberOfStories;

    if(arcLength<=0){
      arcLength = 360/spaceLength -1;
    }


    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    for(int i =0;i<numberOfStories;i++){
      //printing the arc
      canvas.drawArc(
          rect,
          inRads(startOfArcInDegree),
          inRads(arcLength),
          false,
          Paint()
            ..color = isNotFriend? Color(0xffC0C8FC)
                : i <= score? Color(0xff263FE9)
                : Color(0xffC0C8FC)
            ..strokeWidth =2.0
            ..style = PaintingStyle.stroke

      );

      startOfArcInDegree += arcLength + spaceLength;
    }
  }
}

class FriendAvatarCard extends StatelessWidget {
  final UserModel user;
  final bool isNotFriend;

  const FriendAvatarCard({Key? key,required this.user,this.isNotFriend = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2, right: 16, top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 53, height: 53,
                child: CustomPaint(
                  painter: DottedBorder(numberOfStories: 100, spaceLength: 0, score: user.score, isNotFriend: this.isNotFriend),
                ),),
              Container(
                  width: 51,
                  height: 51,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xffECECEC),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: user.profileImage == ""? Container() : ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                      child: Image.network(user.profileImage)
                  )
              )
            ],
          ),
          Container(
            height: 20,
            width: 52,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 5),
            child: Text( isNotFriend? "" : user.name,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xffAFAFAF)
              )
              ,),
          )
        ],
      ),
    );
  }
}
