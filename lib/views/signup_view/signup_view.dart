import 'package:doctor/res/components/custom_button.dart';
import 'package:doctor/res/components/custom_textfield.dart';
import 'package:doctor/consts/consts.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.only(bottom: 10),
        // padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.blue,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(stops: [0.08,0.91], begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xA30008FF),Color(0xFF00FFCD)])
                          ),
                          height: 300,
                          width: 1375,
                          child: Image.asset(
                            // alignment: Alignment.centerLeft,
                            AppAssets.icSignup,
                            height: 200,
                            width: 200,
                          ),
                        ),
                        // 20.heightBox,
                        Container(
                          width: 1380,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(stops: [0.08,0.91], begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xA30008FF),Color(0xFF00FFCD)])
                          ),
                          child: AppStyle.bold(title: AppStrings.signupNow, size: AppSizes.size20, alignment: TextAlign.center,),
                        )
                      ],
                    )),
              ],
            ),
            20.heightBox,
            Expanded(
                child: Form(
                    child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomTextfield(hint: AppStrings.fullname),
                            20.heightBox,
                            CustomTextfield(hint: AppStrings.email),
                            20.heightBox,
                            CustomTextfield(hint: AppStrings.password),
                            20.heightBox,
                            20.heightBox,
                            CustomButton(buttonText: AppStrings.signup, onTap: () {}),
                            20.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppStyle.normal(title: AppStrings.alreadyHaveAccount),
                                20.widthBox,
                                GestureDetector(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: AppStyle.bold(title: AppStrings.login),
                                ),
                              ],
                            )
                          ],
                        ))))
          ],
        ),
      ),
    );
  }
}
