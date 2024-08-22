import 'package:doctor/consts/consts.dart';
import 'package:doctor/views/appointment_details_view/appointment_details_view.dart';
import 'package:get/get.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Appointments", color: AppColors.white, size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext contex, int index){
              return ListTile(
                onTap: () {
                  Get.to(() => const AppointmentDetailsView());
                },
                leading: CircleAvatar(child: Image.asset(AppStrings.login),),
                title: AppStyle.bold(title: "Doctor Name"),
                subtitle: AppStyle.normal(title: "Appointment time", color: AppColors.textColor.withOpacity(0.5)),
              );
            }
        ),
      ),
    );
  }
}
