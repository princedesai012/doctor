import 'package:doctor/consts/consts.dart';


class AppointmentDetailsView extends StatelessWidget {
  const AppointmentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Doctor Name", color: AppColors.white, size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppStyle.bold(title: "Select appointment day"),
            5.heightBox,
            AppStyle.normal(title: "Selected day"),
            10.heightBox,
            AppStyle.bold(title: "Select appointment time"),
            5.heightBox,
            AppStyle.normal(title: "Selected time"),
            20.heightBox,
            AppStyle.bold(title: "Contact No:"),
            5.heightBox,
            AppStyle.normal(title: "Contact Number"),
            20.heightBox,
            AppStyle.bold(title: "Full Name:"),
            5.heightBox,
            AppStyle.normal(title: "Name."),
            10.heightBox,
            AppStyle.bold(title: "Message:"),
            5.heightBox,
            AppStyle.normal(title: "Message"),
          ],
        ),
      ),
    );
  }
}
