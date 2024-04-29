import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.text,
    this.onTap,
    this.icon,
    this.height = 45,
    this.width = double.infinity,
    this.iconColor,
    this.textColor,
    this.iconSize = 38,
    this.iconBackgroundColor = Colors.white,
  });
  final String text;
  final IconData? icon;
  final double iconSize;
  final VoidCallback? onTap;
  final double height, width;
  final Color? iconColor, textColor;
  final Color? iconBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // clipBehavior: Clip.hardEdge,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: iconColor?.withAlpha(150), //withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              height: height,
              width: height,
              decoration: BoxDecoration(
                //border: Border.all(color: iconColor!),
                color: iconBackgroundColor, shape: BoxShape.circle,
                // borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Icon(
                icon,
                size: iconSize,
                color: iconColor,
              ),
            ),
            const Gap(10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
