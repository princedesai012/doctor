import 'package:doctor/consts/consts.dart';

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
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: AppStyle.bold(title: "Phone Number"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
