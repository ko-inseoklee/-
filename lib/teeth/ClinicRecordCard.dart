import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

enum RecordType { CARE, CHECKUP }


class ClinicRecordCard extends StatelessWidget {
  final String date;
  final String title;
  final String place;
  final RecordType recordType;

  ClinicRecordCard({Key? key,required this.date,required this.title,required this.place,required this.recordType}) : super(key: key);

  late Color bgColor;
  late Widget iconImage;
  late Color titleColor;
  late Color iconColor;
  late Widget isCare;

  @override
  Widget build(BuildContext context) {
    switch (recordType){
      case RecordType.CARE:
        iconColor = Color(0xff263FE9);
        bgColor = Color(0xffDEE1FF);
        // iconImage = Image.network(image_teethIcon);
        iconImage = Image.asset("images/teeth/teethIconLocal.png");
        titleColor = Color(0xff263FE9);
        isCare = Container(margin: EdgeInsets.only(left: 24, top: 8),child: Icon(Icons.more_horiz, color: Color(0xff636363),));
        break;
      case RecordType.CHECKUP:
        iconColor = Color(0xff505050);
        bgColor = Color(0xffECECEC);
        iconImage = SvgPicture.asset(image_reportIcon, color: Color(0xff505050),);
        titleColor = Color(0xff505050);
        isCare = Container(
          width: 57, height: 22, alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xff505050), width: 1),
              color: Color(0xffC5C5C5)
          ),
          child: Text('연동 완료',style: TextStyle(color: Color(0xff636363), fontSize: 10, fontWeight: FontWeight.w400),),
        );
    }
    return Container(
      width: 360, height: 83, margin: EdgeInsets.only(left: 15,right: 15, bottom: 6),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 144,height: 22, margin: EdgeInsets.only(top: 21, left: 27),
                child: Row(
                  children: [
                    Container(
                      width: 19, height: 22,
                      child: iconImage
                    ),
                    Container(
                      width: 111, height: 22, margin: EdgeInsets.only(left: 14),
                      child: Text(title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400, color: titleColor),),
                    )
                  ],
                ),
              ),
              Container(
                width: 246, height: 22, margin: EdgeInsets.only(left: 27,top: 8),
                child: Row(
                  children: [
                    Container(
                      width: 106, height: 22,
                      child: Text(date,style: TextStyle(color: Color(0xff626262), fontSize: 13, fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      width: RecordType == RecordType.CHECKUP? 107 : 140, height: 22,
                      child: Text(place, style: TextStyle(color: Color(0xff626262), fontSize: 13, fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6,top: 20, right: 24), alignment: Alignment.topRight,
            child: isCare,
          )
        ],
      ),
    );
  }
}
