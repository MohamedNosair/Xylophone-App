import 'package:delivery_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
class BigText extends StatelessWidget {
  final Color? color ;
  final String text ;
  double size ;
  TextOverflow overflow ;
   BigText({
    Key? key,  this.color = const Color(0xFF332d2d),  required this.text,
    this.size = 0 ,
    this.overflow = TextOverflow.ellipsis ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ,
      maxLines: 1,
      overflow: overflow ,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color ,
        fontWeight: FontWeight.w400,
        fontSize:size == 0 ?Dimensions.font20 : size ,
      ),
    );
  }
}
