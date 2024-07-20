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
        margin: EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.icSignup,
                          width: 200,
                        ),
                        10.heightBox,
                        AppStyle.bold(title: AppStrings.signupNow, size: AppSizes.size20, alignment: TextAlign.center),
                      ],
                    )),
              ],
            ),
            30.heightBox,
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
