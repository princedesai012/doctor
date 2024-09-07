import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor/consts/consts.dart';
import 'package:doctor/controllers/appointment_controller.dart';
import 'package:doctor/views/appointment_details_view/appointment_details_view.dart';
import 'package:get/get.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppointmentController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Appointments", color: AppColors.white, size: AppSizes.size20),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: controller.getAppointments(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(!snapshot.hasData){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
            var data = snapshot.data?.docs;
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: data?.length ?? 0,
                  itemBuilder: (BuildContext contex, int index){
                    return ListTile(
                      onTap: () {
                        Get.to(() => AppointmentDetailsView(doc: data[index],));
                      },
                      leading: CircleAvatar(child: Image.asset(AppStrings.login),),
                      title: AppStyle.bold(title: data![index]['appWithName']),
                      subtitle: AppStyle.normal(title: "${data[index]['appDay']} - ${data[index]['appTime']}", color: AppColors.textColor.withOpacity(0.5)),
                    );
                  }
              ),
            );
          }
        },
      )
    );
  }
}
