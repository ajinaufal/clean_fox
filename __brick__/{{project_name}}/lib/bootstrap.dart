import 'dart:async';
{{#isRiverpod}}
import 'dart:developer';
{{/isRiverpod}}
{{^isRiverpod}}
import 'package:{{project_name}}/injector/main_injector.dart';
{{/isRiverpod}}
{{#isRiverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{project_name}}/core/provider/app_provider_observer.dart';
{{/isRiverpod}}

import 'package:flutter/material.dart';


Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  {{^isRiverpod}}
  WidgetsFlutterBinding.ensureInitialized();
  MainInjector.init();
  runApp(await builder());
  {{/isRiverpod}}
  {{#isRiverpod}}
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(
        ProviderScope(
          observers: [AppProviderOberserver()],
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
    ),
  );
  {{/isRiverpod}}
}
