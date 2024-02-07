import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.content,
  });
  final String title;
  final String subTitle;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: Get.height / 2.3,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20))),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Gap(context.isLandscape ? 0 : 30),
                ListTile(
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  titleTextStyle: Theme.of(context).textTheme.headlineLarge,
                  subtitleTextStyle: Theme.of(context).textTheme.bodyLarge,
                  title: Text(title),
                  subtitle: Text(subTitle),
                ),
                Gap(context.isLandscape ? 0 : 100),
                content,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
