import 'package:doctor/consts/consts.dart';
import 'package:doctor/res/components/custom_button.dart';
import 'package:doctor/views/book_appointment_view/book_appointment_view.dart';
import 'package:get/get.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Doctor Name", color: AppColors.white, size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset(AppAssets.icSignup),
                    ),
                    11.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyle.bold(title: "Doctor Name", color: AppColors.textColor, size: AppSizes.size14),
                          AppStyle.bold(
                            title: "Category", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size12),
                          const Spacer(),
                          VxRating(
                            selectionColor: AppColors.yellow6Color,
                            onRatingUpdate: (value) {},
                            maxRating: 5,
                            count: 5,
                            value: 4,
                            stepInt: true,
                          ),
                        ],
                      ),
                    ),
                    AppStyle.bold(title: "See all reviews", color: AppColors.blueColor, size: AppSizes.size12),
                  ],
                ),
              ),
              10.heightBox,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: AppStyle.bold(title: "Phone Number", color: AppColors.textColor),
                      subtitle: AppStyle.normal(
                        title: "+91 9714865744", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size12),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                          child: Icon(Icons.phone, color: AppColors.blueColor,)),
                    ),
                    10.heightBox,
                    AppStyle.bold(title: "About", color: AppColors.textColor, size: AppSizes.size16),
                    5.heightBox,
                    AppStyle.normal(title: "This is about section", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size14),
                    10.heightBox,
                    AppStyle.bold(title: "Address", color: AppColors.textColor, size: AppSizes.size16),
                    5.heightBox,
                    AppStyle.normal(title: "This is address", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size14),
                    10.heightBox,
                    AppStyle.bold(title: "Working Time", color: AppColors.textColor, size: AppSizes.size16),
                    5.heightBox,
                    AppStyle.normal(title: "9:00 - 4:00", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size14),
                    10.heightBox,
                    AppStyle.bold(title: "Services", color: AppColors.textColor, size: AppSizes.size16),
                    5.heightBox,
                    AppStyle.normal(title: "This is service section", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size14),
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(buttonText: "Book Appointment", onTap: (){
          Get.to(() => const BookAppointmentView());
        }),
      ),
    );
  }
}
