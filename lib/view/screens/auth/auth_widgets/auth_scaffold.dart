import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/core/constants/layout_const.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold(
      {super.key,
      required this.title,
      this.subTitle,
      this.bodyRaduis = 20,
      this.body,
      this.image,
      this.titleAlignment = MainAxisAlignment.start});

  final String title;
  final String? subTitle;
  final Widget? body;
  final double bodyRaduis;
  final String? image;
  final MainAxisAlignment titleAlignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            height: context.height / 3.33,
            padding: EdgeInsets.only(
                top: Get.mediaQuery.padding.top,
                left: LayoutConst.bodyPadding,
                right: LayoutConst.bodyPadding),
            child: Row(
              mainAxisAlignment: titleAlignment,
              children: [
                image != null
                    ? Image(
                        image: AssetImage(image!),
                      )
                    : const SizedBox(),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontSize,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    TextSpan(
                      text: subTitle != null ? '\n$subTitle' : null,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //height: Get.height - Get.height / 4,
              width: Get.width,
              padding: const EdgeInsets.all(LayoutConst.bodyPadding),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(bodyRaduis),
                    topRight: Radius.circular(bodyRaduis)),
              ),
              child: body,
            ),
          )
        ],
      ),
    );
  }
}
