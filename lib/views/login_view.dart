import 'package:doctor/res/components/custom_button.dart';
import 'package:doctor/res/components/custom_textfield.dart';
import 'package:doctor/consts/consts.dart';
import 'package:doctor/views/home_view/home_view.dart';
import 'package:doctor/views/signup_view/signup_view.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                      AppAssets.icLogin,
                      width: 200,
                    ),
                    10.heightBox,
                    AppStyle.bold(
                        title: AppStrings.welcomeBack, size: AppSizes.size20),
                    AppStyle.bold(title: AppStrings.weAreExcited),
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
                CustomTextfield(hint: AppStrings.email),
                20.heightBox,
                CustomTextfield(hint: AppStrings.password),
                20.heightBox,
                Align(
                  alignment: Alignment.centerRight,
                  child: AppStyle.normal(title: AppStrings.forgetPassword),
                ),
                20.heightBox,
                CustomButton(buttonText: AppStrings.login, onTap: () {
                  Get.to(()=>HomeView());
                }),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppStyle.normal(title: AppStrings.dontHaveAccount),
                    20.widthBox,
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>const  SignupView());
                      },
                      child: AppStyle.bold(title: AppStrings.signup),
                    )
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
