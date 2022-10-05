import 'package:flutter/cupertino.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class StatusMiddleCard extends StatelessWidget {
  final int status;
  final String image;
  const StatusMiddleCard({Key? key,required this.status,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff414134), alignment: Alignment.center,
      width: 142, height: 67, margin: EdgeInsets.only(left: 1,right: 1),
      child: Stack(
        children: [
          Image.network(image, color: status == 1? Color( 0xffFFFFFF) : Color(0xffD9D9D9).withOpacity(0.3),),
          Positioned(
            left: 15,
            child: Container(
              width: 37, height: 37, alignment: Alignment.center,
              child: status > 1? Image.network(image_checkIcon) : Text(""),
            ),
          )
        ],
      ),
    );
  }
}
