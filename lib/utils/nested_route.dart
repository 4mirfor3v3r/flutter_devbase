import 'package:flutter/material.dart';

typedef Widget NestedRouteBuilder(Widget? child);

@immutable
class NestedRoute {
  final String name;
  final List<NestedRoute> subRoutes;
  final NestedRouteBuilder builder;

  const NestedRoute(
      {required this.name, this.subRoutes = const [], required this.builder});

  Route buildRoute(List<String> paths, int index) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (_, __, ___) => _build(paths, index),
    );
  }

  Widget _build(List<String> paths, int index) {
    if (index >= paths.length) {
      return builder(null);
    }
    final route = subRoutes.firstWhere((route) => route.name == paths[index],
        orElse: null);
    return builder(route._build(paths, index + 1));
  }
}

RouteFactory buildNestedRoutes(List<NestedRoute> routes) {
  return (RouteSettings settings) {
    final paths = settings.name?.split('/');
    if (paths != null) {
      if (paths.length <= 1) {
        return null;
      }
      final rootRoute = routes.firstWhere((route) => route.name == paths[0]);
      return rootRoute.buildRoute(paths, 1);
    } else {
      return null;
    }
  };
}
