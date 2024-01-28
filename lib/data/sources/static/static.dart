import 'package:mas_app/core/constants/image_assets.dart';
import 'package:mas_app/data/models/onboarding_model.dart';

//------------ List of OnBoarding Screens -------------
List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: 'Choose Product',
      description:
          'We Have a 100k + Products. Choose Your product from our E- commerce shop.',
      image: AppImageAssets.chooseProductImg),
  OnBoardingModel(
      title: 'Easy & Save Payment',
      description:
          'Easy Checkout & Safe Payment method. Trusted by our Customers from all over the world.',
      image: AppImageAssets.easySavePaymentImg),
  OnBoardingModel(
      title: 'Track Your Order',
      description:
          'Best Tracker has been Used For Track your order. You\'ll know where your product is at the moment',
      image: AppImageAssets.trackOrderImg),
  OnBoardingModel(
      title: 'Fast Delivery',
      description:
          'Reliable And Fast Delivery. We Deliver your product the fastest way possible',
      image: AppImageAssets.fastDeliveryImg),
];
