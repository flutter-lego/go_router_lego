import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import '../../../main.dart';
import '../../_/shared_params/_/material_app.dart';

void setGoRouterPathUrlStrategy() {
  // if you want to not use hash urls, uncomment the next line
  // setUrlStrategy(PathUrlStrategy());
}

final go_router_delegate = GoRouter(
  observers: MaterialAppParams.navigatorObservers ?? [],
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MyAppHome ?? InitView();
      },
    ),
  ],
);
