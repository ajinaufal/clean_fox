extension StringExtensionValidation on String {
  bool get isNumeric =>
      RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$').hasMatch(this);

  bool get isLowerCase => this == toLowerCase();
  bool get isUpperCase => this == toUpperCase();
  bool get isRequired => isNotEmpty;
  bool get isEmail =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(this);
  bool size(int value) => length <= value;
  bool get anySymbols => RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(this);
  bool get anyNumber => RegExp(r'\d').hasMatch(this);
}

extension StringExtension on String {
  String get normalCase => this[0].toUpperCase() + substring(1).toLowerCase();
  String get capitalize =>
      split(' ').map((word) => word.normalCase).toList().join(' ');
}
