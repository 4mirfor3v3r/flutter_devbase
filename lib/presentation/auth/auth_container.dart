import 'package:devbase/utils/nested_route.dart';
import 'package:flutter/material.dart';

import 'login/login_view.dart';

class AuthRoute {
  static NestedRoute initializeRouter() {
    return NestedRoute(
      name: 'auth',
      builder: (child) => Center(child: child),
      subRoutes: [
        NestedRoute(
          name: 'login',
          builder: (_) => LoginScreen(),
        ),
        NestedRoute(
          name: 'register',
          builder: (_) => LoginScreen(),
        )
      ],
    );
  }
}
