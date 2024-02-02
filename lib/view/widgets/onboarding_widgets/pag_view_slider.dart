import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/controllers/onboarding_controller/onboarding_controller.dart';
import 'package:mas_app/data/sources/static/static.dart';
import 'package:mas_app/view/widgets/onboarding_widgets/slider_controller_widget.dart';

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
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: Wrap(
                  // direction: Axis.vertical,
                  // verticalDirection: VerticalDirection.up,
                  runSpacing: 10,
                  spacing: 10,
                  alignment: WrapAlignment.spaceEvenly,
                  runAlignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      onBoardingList[index].title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    //const Gap(10),
                    SizedBox(
                      height: context.isLandscape ? 230 : 290,
                      //width: 290,
                      child: Image(
                        image: AssetImage(onBoardingList[index].image),
                      ),
                    ),
                    // const Gap(10),
                    Text(
                      onBoardingList[index].description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              //----------------- controller-------------
              const SliderController(),
            ],
          );
        });
  }
}
