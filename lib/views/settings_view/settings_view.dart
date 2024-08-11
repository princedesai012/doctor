import 'package:doctor/consts/consts.dart';
import 'package:doctor/consts/lists.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: AppStyle.bold(title: AppStrings.settings, color: AppColors.white, size: AppSizes.size20),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Image.asset(AppAssets.icSignup)),
            title: AppStyle.bold(title: "Username"),
            subtitle: AppStyle.normal(title: "user_email@gmail.com"),
          ),
          const Divider(),
          10.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(settingsList.length, (index) => ListTile(
              onTap: (){},
              leading: Icon(settingsListIcon[index], color: AppColors.blueColor,),
              title: AppStyle.bold(title: settingsList[index]),
            ))
          )
        ],
      ),
    );
  }
}
