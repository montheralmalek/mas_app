import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
    required this.title,
    this.subTitle,
    required this.content,
  });
  final String title;
  final String? subTitle;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 0,
          //bottom: context.isLandscape ? 0 : null,
          right: 0, //context.isLandscape ? null : 0,
          child: Container(
            height: context.isLandscape ? Get.height / 2 : Get.height / 2,
            //width: context.isLandscape ? Get.width / 2 : Get.width,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(30))),
          ),
        ),
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Gap(context.isLandscape ? 0 : 30),
                  ListTile(
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    titleTextStyle: Theme.of(context).textTheme.headlineLarge,
                    subtitleTextStyle: Theme.of(context).textTheme.bodyLarge,
                    title: Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    // subtitle: Text(subTitle),
                  ),
                  Gap(context.isLandscape ? 5 : 30),
                  content,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
