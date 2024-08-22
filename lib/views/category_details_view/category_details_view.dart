import 'package:doctor/consts/consts.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppStyle.bold(title: "Category View", color: AppColors.white, size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                mainAxisExtent: 170,
                crossAxisSpacing: 8,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext contex, int index){
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: AppColors.bgDarkColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(right: 5),
                height: 100,
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Image.asset(AppAssets.icSignup,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    5.heightBox,
                    AppStyle.normal(title: "Dr. Hiren Bhatt"),
                    5.heightBox,
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
              );
            }
        ),
      ),
    );
  }
}
