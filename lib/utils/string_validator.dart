abstract class StringValidator {
  bool isValid(String value);
}

class RegexStringValidator implements StringValidator {
  RegexStringValidator(String input) : regex = RegExp(input);

  final RegExp regex;

  @override
  bool isValid(String value) {
    try {
      final matches = regex.allMatches(value);
      for (final match in matches) {
        if (match.start == 0 && match.end == value.length) return true;
      }

      return false;
    } catch (e) {
      assert(false, e.toString());
      return true;
    }
  }
}

class EmailInputValidator extends RegexStringValidator {
  EmailInputValidator()
      : super(
          r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)',
        );
}

class PasswordInputValidator extends RegexStringValidator {
  PasswordInputValidator()
      : super(
          r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*();:,."-_/#?&])[A-Za-z\d@$!%*();:,."-_/#?&]{8,}$',
        );
}

class NotEmptyInputValidator extends StringValidator {
  NotEmptyInputValidator();

  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class MinLengthInputValidator extends StringValidator {
  MinLengthInputValidator(this.minLength);

  final int minLength;

  @override
  bool isValid(String value) {
    return value.length >= minLength;
  }
}

class MaxLengthRegexValidator extends StringValidator {
  MaxLengthRegexValidator(this.maxLength);

  final int maxLength;

  @override
  bool isValid(String value) {
    return value.length <= maxLength;
  }
}
