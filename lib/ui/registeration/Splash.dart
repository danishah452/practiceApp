import 'package:flutter/material.dart';
import 'package:practice/images.dart';
import 'package:practice/languages/localization/demo_localization.dart';
import 'package:practice/main.dart';
import 'package:practice/routes/route_names.dart';
import 'package:practice/text_string.dart';

import '../../languages/language.dart';
import '../../languages/localization/localization_constants.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void _changeLanguage(Language language) {
    Locale _temp;
    switch(language.languageCode){
      case 'ur':
        _temp= Locale(language.languageCode, 'PK');
        break;
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;
      case 'ar':
        _temp=Locale(language.languageCode,'SA');
        break;
      case 'de':
        _temp=Locale(language.languageCode, 'GR');
        break;
      default:
        _temp = Locale(language.languageCode, 'US');
    }
    print(language.name);
    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            getTranslated(context, 'welcome'),
          ),
          actions: [
            DropdownButton(
              onChanged: (Language language) {
                _changeLanguage(language);
              },
              underline: SizedBox(),
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (lang) => DropdownMenuItem(
                      value: lang,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(lang.flag,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(lang.name,style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/parkinson.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 92.0,
                    ),
                    child: Center(
                      child: Text(
                    getTranslated(context, 'title'),
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      // width: 200,
                      // margin: EdgeInsets.symmetric(horizontal: 75,),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.red)),
                          onPressed: () {
                            Navigator.pushNamed(context, WrapperRoute);
                          },
                          child: Text(
                            getTranslated(context, 'proceed'),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
