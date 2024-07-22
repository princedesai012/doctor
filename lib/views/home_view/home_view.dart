import 'package:doctor/res/components/custom_textfield.dart';

import '../../consts/consts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.blueColor,
        title: AppStyle.bold(title: "${AppStrings.welcome} User", color: AppColors.white, size: AppSizes.size18),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            color: AppColors.blueColor,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextfield(
                    hint: AppStrings.search,
                    borderColor: AppColors.white,
                    textColor: AppColors.white,
                  ),
                ),
                10.widthBox,
                IconButton(onPressed: (){}, icon: Icon(Icons.search, color: AppColors.white,)),
              ],
            ),
          ),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext contex, int index){
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 8),
                          child: Column(
                            children: [
                              Image.asset(
                                  AppAssets.icBody,
                                  width: 30,
                              ),
                              5.heightBox,
                              AppStyle.normal(title: "Body", color: AppColors.white, size: AppSizes.size14)
                            ],
                          ),
                        );
                      }
                          ,
                )
                ),
              ],
            ),
          )],
      ),
    );
  }
}
