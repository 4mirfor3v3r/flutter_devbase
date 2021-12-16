import 'package:devbase/presentation/auth/login/login_view.dart';
import 'package:devbase/utils/nested_route.dart';
import 'package:flutter/material.dart';

// import 'login/login_view.dart';

class MenuRoute {
  static NestedRoute initializeRouter() {
    return NestedRoute(
      name: 'menu',
      builder: (child) => Center(child: child),
      subRoutes: [
        NestedRoute(
            name: 'home',
            builder: (child) => Center(child: child),
            subRoutes: [
              NestedRoute(
                name: 'list',
                builder: (child) => LoginScreen(),
              ),
              NestedRoute(
                name: 'detail',
                builder: (child) => Text("sdbjawiodjfjvinsifvjhwifojudewidfdeidfgd"),
              ),
            ]),
        NestedRoute(
          name: 'profile',
          builder: (_) => LoginScreen(),
        )
      ],
    );
  }
}
