class SValidator {
  static String? validateEmail(String value) {
    if(value.isNotEmpty) {
      return 'Email is required';
    }

    //Email regex
    final emailRegExp = RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');

    if(!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String value) {
    if(value.isNotEmpty) {
      return 'Password is required';
    }

    if(value.length < 8) {
      return 'Password must be atleast 8 character long';
    }

    if(!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least 1 number';
    }

    if(!value.contains(RegExp(r'~`! @#$%^&*()-_+={}[]|\;:"<>,./?'))) {
      return 'Password must contain at least one special characters';
    }

    return null;
  }

  //static String? validatePhonenumber
}