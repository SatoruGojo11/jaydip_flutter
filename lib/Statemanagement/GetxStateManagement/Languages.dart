import 'package:get/get.dart';

class MultiLanguage extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'name': 'Jaydip',
          'surname': 'Shingala',
          'age': '20',
        },
        'gu_IN': {
          'name': 'જયદીપ',
          'surname': 'શિંગાળા',
          'age': '૨૦',
        },
        'ch_CH': {
          'name': '贾迪普',
          'surname': '辛加拉',
          'age': '号',
        },
        'jp_JP': {
          'name': 'ジェイディップ',
          'surname': 'シンガラ語',
          'age': '二十',
        },
      };
}
