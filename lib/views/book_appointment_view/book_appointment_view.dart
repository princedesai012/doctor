import 'package:doctor/consts/consts.dart';
import 'package:doctor/res/components/custom_textfield.dart';

import '../../res/components/custom_button.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Doctor Name", color: AppColors.white, size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyle.bold(title: "Select appointment day"),
              5.heightBox,
              const CustomTextfield(hint: "Select Day"),
              10.heightBox,
              AppStyle.bold(title: "Select appointment time"),
              5.heightBox,
              const CustomTextfield(hint: "Select Time"),
              20.heightBox,
              AppStyle.bold(title: "Contact No:"),
              5.heightBox,
              const CustomTextfield(hint: "Enter Contact No."),
              20.heightBox,
              AppStyle.bold(title: "Full Name:"),
              5.heightBox,
              const CustomTextfield(hint: "Enter Full Name."),
              10.heightBox,
              AppStyle.bold(title: "Message:"),
              5.heightBox,
              const CustomTextfield(hint: "Enter your message"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
          buttonText: "Book Appointment",
          onTap: (){},),
      ),
    );
  }
}
