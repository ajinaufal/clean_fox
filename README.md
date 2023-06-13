# Clean Fox
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/license/mit/) 

![Logo](https://i.ibb.co/JdVDpv3/fc349232-0358-4f59-8531-048c8f6f6f82-1-removebg-preview.png)

Clean Fox is a flutter template using Mason Bricks with a clean code architecture that allows users to choose between 3 state management GetX, Bloc, and Riverpod. The local database has been installed using the Isar database.

## Output 📦
```bash
Example
├── README.md
├── analysis_options.yaml
├── android
├── assets
│   └── images
├── Example.iml
├── build
├── build.yaml
├── ios
├── l10n.yaml
├── lib
│   ├── app
│   │   └── app.dart
│   ├── bootstrap.dart
│   ├── core
│   │   ├── config
│   │   │   ├── router
│   │   │   │   ├── observer_router.dart
│   │   │   │   └── router.dart
│   │   │   └── theme
│   │   │       └── theme.dart
│   │   ├── data
│   │   │   ├── data.dart
│   │   │   ├── datasources
│   │   │   │   ├── local
│   │   │   │   └── remote
│   │   │   │       └── product_remote_data_source.dart
│   │   │   ├── models
│   │   │   └── repositories_impl
│   │   ├── domain
│   │   │   ├── domain.dart
│   │   │   ├── entities
│   │   │   └── repositories
│   │   ├── helpers
│   │   │   └── network_helper.dart
│   │   ├── services
│   │   │   └── api_services.dart
│   │   ├── state
│   │   │   ├── app_state.dart
│   │   │   └── app_state.freezed.dart
│   │   └── utils
│   │       ├── enums
│   │       │   ├── permissions_enum.dart
│   │       │   └── theme_enum.dart
│   │       └── extensions
│   │           ├── date_time_extension.dart
│   │           ├── duration_extension.dart
│   │           ├── permissions_extension.dart
│   │           └── string_extension.dart
│   ├── feature
│   │   ├── feature.dart
│   │   └── example
│   │       ├── bloc / notifier / getx
│   │       ├── page
│   │       └── widget
│   ├── generated
│   │   ├── intl
│   │   │   ├── messages_all.dart
│   │   │   └── messages_en.dart
│   │   └── l10n.dart
│   ├── injector
│   │   ├── bloc_injector.dart / getx_injector.dart
│   │   ├── data_source_injector.dart
│   │   ├── main_injector.dart
│   │   ├── repositories_injector.dart
│   │   ├── database_injector.dart
│   │   └── service_injector.dart
│   ├── l10n
│   │   └── intl_en.arb
│   ├── main.dart
│   └── translations
│       └── l10n
│           └── arb
│               ├── app_en.arb
│               └── app_id.arb
├── linux
├── macos
├── pubspec.lock
├── pubspec.yaml
└── test
```

**Note:** if you choose Riverpod state management, then the injector folder is not added in depth.

## Support

If you have any helpful ideas, reports, or collaborations that need discussion please contact me at [email](mailto:ajinaufal69@gmail.com) or [Linkedin](https://www.linkedin.com/in/aji-naufal-aqil/).

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://ko-fi.com/CleanFox)

## License

Copyright © Aji Naufal Aqil

Clean Fox is an open-source template Mason Bricks licensed under [MIT license](LICENSE).