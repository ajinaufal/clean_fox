import 'package:flutter/material.dart';
{{ ^isGetX }}
import 'dart:developer';
{{ /isGetX }}
{{ #isGetX }}
import 'package:get/get.dart';
{{ /isGetX }}
class RouterObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    {{ #isGetX }}
    Get.routing.current = route.settings.name ?? '';
    {{ /isGetX }}
    {{ ^isGetX }}
    log(
      '''didPush(route: ${route.settings.name},previousRoute: ${previousRoute?.settings.name})
      ''',
    );
    {{ /isGetX }}
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    {{ #isGetX }}
    Get.routing.current = previousRoute?.settings.name ?? '';
    {{ /isGetX }}
    {{ ^isGetX }}
    log(
      '''didPop(route: ${route.settings.name}, previousRoute: ${previousRoute?.settings.name})''',
    );
    {{ /isGetX }}
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    {{ #isGetX }}
    Get.routing.current = newRoute?.settings.name ?? '';
    {{ /isGetX }}
    {{ ^isGetX }}
    log(
      '''didReplace(newRoute: ${newRoute?.settings.name},oldRoute: ${oldRoute?.settings.name})
      ''',
    );
    {{ /isGetX }}
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    {{ #isGetX }}
    Get.routing.current = route.settings.name ?? '';
    {{ /isGetX }}
    {{ ^isGetX }}
    log(
      '''didRemove(route: ${route.settings.name},previousRoute: ${previousRoute?.settings.name})
      ''',
    );
    {{ /isGetX }}
  }
}
