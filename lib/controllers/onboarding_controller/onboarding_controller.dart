import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardinController extends GetxController {
  next();
  onPageChanged(int index);
  onTap(int index);
}

class OnBoardingControllerImp extends OnBoardinController {
  int _currentPage = 0;
  final PageController pageController = PageController();

  @override
  next() {
    pageController.animateToPage(_currentPage + 1,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  onPageChanged(int index) {
    _currentPage = index;
    update();
  }

  get currentPage {
    return _currentPage;
  }

  @override
  onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }
}
