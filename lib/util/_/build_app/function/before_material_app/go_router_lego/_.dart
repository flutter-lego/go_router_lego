import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../../config/go_router_lego/_.dart';
import '../../../../shared_params/_/material_app.dart';
import '../../../widget/material_app/_.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForGoRouterLego(BuildContext context) async {
  setGoRouterPathUrlStrategy();

  currentMaterialApp = MaterialApp.router(
    routeInformationParser: go_router_delegate.routeInformationParser,
    routerDelegate: go_router_delegate.routerDelegate,
    routeInformationProvider: go_router_delegate.routeInformationProvider,
    localizationsDelegates: MaterialAppParams.localizationsDelegates,
    supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
    locale: MaterialAppParams.locale,
    title: MaterialAppParams.appName,
    theme: MaterialAppParams.lightTheme,
    darkTheme: MaterialAppParams.darkTheme,
    themeMode: MaterialAppParams.themeMode ?? ThemeMode.system,
    debugShowCheckedModeBanner: false,
    builder: (context, child) {
      return materialAppInsideBuilder(context, child);
    },
  );
}
