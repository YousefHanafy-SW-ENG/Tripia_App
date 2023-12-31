import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tripia_user/features/verificationScreens/presentation/pages/login_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/widgets/dimensions.dart';

class SkipText extends StatelessWidget {
  const SkipText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 530),
            child: LoginScreen()));
      },
      child: Row(
        children: [
          SizedBox(width: context.width*0.073,),
          Text(AppStrings.skip,
            style: TextStyle(
              fontFamily: 'Almarai',
              decoration: TextDecoration.underline,
              fontSize: Dimensions.font20,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
