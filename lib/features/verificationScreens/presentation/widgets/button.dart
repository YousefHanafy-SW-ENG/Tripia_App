import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../../../../core/widgets/dimensions.dart';

class MyButton extends StatelessWidget {
  int? height1;
  int? width1;
  final Function()? onTap;
  final String text;
  MyButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height*0.077,
        padding: EdgeInsets.all(height*0.01),
        margin: EdgeInsets.symmetric(horizontal: width*0.32),
        decoration: BoxDecoration(color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.radius20)),
        child: Center(
          child: Text(text,
            style: TextStyle(
                fontFamily:FontFamilies.almarai,
                color: Colors.white,
                fontSize: Dimensions.font20/1.05,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
