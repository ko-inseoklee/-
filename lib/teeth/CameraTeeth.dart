import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeth_outsourcing/data/ImageReference.dart';

class CameraTeeth extends StatefulWidget {
  const CameraTeeth({Key? key}) : super(key: key);

  @override
  State<CameraTeeth> createState() => _CameraTeethState();
}

class _CameraTeethState extends State<CameraTeeth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(image_cameraTeeth),
          Positioned(
            bottom: 79, left: 158,
            child: Container(
              width: 74, height: 74,
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: ()  async {
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
                },
                child: Text(''),
              ),
          ))
        ],
      ),
    );
  }
}
