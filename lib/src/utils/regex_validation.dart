class RegexValidator {
  final String regexSource;

  const RegexValidator({required this.regexSource});

  bool isValid(String value) {
    try {
      final regex = RegExp(regexSource);
      final matches = regex.allMatches(value);
      for (Match match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }
      return false;
    } catch (error) {
      assert(false, error.toString());
      return true;
    }
  }
}

class EmailSubmitRegexValidator extends RegexValidator {
  EmailSubmitRegexValidator()
      : super(
      regexSource: "(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+\$)");
}

class EmployeeSubmitRegexValidator extends RegexValidator{
  EmployeeSubmitRegexValidator()
      :super(
      regexSource: "(^[L][A-Z][0-9]{3}\$)|(^[A-Z]{1}[0-9]{4}\$)|([0-9]{3}[A-Z]{1}[0-9]{1}\$)");
}
