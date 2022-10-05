import 'package:flutter/cupertino.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class StatusSideCard extends StatelessWidget {
  final int status;
  final int myStatus;
  final String image;
  const StatusSideCard({Key? key,required this.status,required this.image, required this.myStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff414134), alignment: Alignment.center,
      width: 123, height: 67,
      child: Stack(
        children: [
          Image.network(image, color: status == myStatus? Color( 0xffFFFFFF) : Color(0xffD9D9D9).withOpacity(0.3),),
          Positioned(
            left: 10,
            child: Container(
              width: 37, height: 37, alignment: Alignment.center,
              child: status > myStatus? Image.network(image_checkIcon) : Text(""),
            ),
          )
        ],
      ),
    );
  }
}
