import 'package:flutter/cupertino.dart';
import 'package:practice/languages/localization/demo_localization.dart';

String getTranslated(BuildContext context, String key){
  return DemoLocalization.of(context).getTranslatedValues(key);
}