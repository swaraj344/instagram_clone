extension FormUtilX on String {
  bool get isEmail {
    RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(this);
  }

  bool get isUserName {
    RegExp usernameRegex = RegExp(r'^[a-zA-Z_][a-zA-Z0-9._-]*$');
    ;
    return usernameRegex.hasMatch(this);
  }

  bool get isPhone {
    RegExp phoneRegex = RegExp(r'^(?:\+(?:\d{1,3}))?(?:\s?\d{10,12})$');
    return phoneRegex.hasMatch(this);
  }
}
