import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "Choose Language": "اختر اللغة",
          "About US": 'حول الشركة',
          "Contact US": 'اتصل بنا',
          "Blog": 'مدونة',
          "Products": 'منتجاتنا',
        },
        "en": {
          "Choose Language": "Choose Language",
          "About US": 'About US',
          "Contact US": 'Contact US',
          "Blog": 'Blog',
          "Products": 'Products',
        },
        "tr": {
          "Choose Language": "Dil seç",
          "About US": 'Hakkımızda',
          "Contact US": 'Bize Ulaşın',
          "Blog": 'Blog',
          "Products": 'Ürünler'
        },
      };
}
