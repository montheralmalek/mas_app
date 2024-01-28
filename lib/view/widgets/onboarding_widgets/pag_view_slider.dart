import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/data/sources/static/static.dart';

class PageViewSlider extends GetView<OnBoardingControllerImp> {
  const PageViewSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      controller: controller.pageController,
      itemCount: onBoardingList.length, //state.categoriesList!.length,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            onBoardingList[index].title,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Gap(10),
          SizedBox(
            height: 290,
            child: Image(
              image: AssetImage(onBoardingList[index].image),
            ),
          ),
          const Gap(10),
          Text(onBoardingList[index].description),
        ],
      ),
      // options: CarouselOptions(
      //   height: 200,
      //   autoPlay: true,
      //   autoPlayInterval: const Duration(seconds: 5),
      //   enableInfiniteScroll: true,
      //   enlargeCenterPage: true,
      //   enlargeStrategy: CenterPageEnlargeStrategy.height,
      //   onPageChanged: (index, reason) {
      //     setState(() {
      //       current = index;
      //     });
      //   },
      // ),
    );
  }
}
