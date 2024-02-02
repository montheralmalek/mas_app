import 'package:get/get.dart';
import 'package:mas_app/core/localization/lang/ar.dart';
import 'package:mas_app/core/localization/lang/en.dart';

class AppTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': ar,
        'en': en,
      };
}
