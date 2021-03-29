import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice/authenticate/wrapper.dart';
import 'package:practice/languages/localization/demo_localization.dart';
import 'package:practice/models/user.dart';
import 'package:practice/responsive/screen_size_helper.dart';
import 'package:practice/routes/custom_router.dart';
import 'package:practice/routes/route_names.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:practice/services/auth.dart';
import 'package:provider/provider.dart';


import 'Splash.dart';


void main() => runApp(MyApp());

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(),
//       ),
//     );

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);

  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  void setLocale(Locale locale){
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return StreamProvider<User>.value(
                value: AuthService().user,
                child:MaterialApp(
              locale: _locale,
              supportedLocales: [
                Locale('ur', 'PK'),
                Locale('en', 'US'),
                Locale('ar', 'SA'),
                Locale('de', 'GR'),

              ],
              localizationsDelegates: [
                DemoLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (deviceLocale, supportedLocale) {
                for (var locale in supportedLocale) {
                  if (locale.languageCode == deviceLocale.languageCode &&
                      locale.countryCode == deviceLocale.countryCode) {
                    return deviceLocale;
                  }
                }
                return supportedLocale.first;
              },

              // locales: DevicePreview.locale(context),
              // builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: CustomRouter.allRoutes,
              initialRoute: splashRoute,
                  // home: Wrapper(),
                ), );
          },
        );
      },
    );
  }
}



