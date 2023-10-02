import 'package:your_track/app/your_track/infra/errors/base/errors.dart';

class InvalidPhoneNumberErros extends Erros {
  InvalidPhoneNumberErros() : super('Invalid Phone Number');
}

class InvalidOTPErros extends Erros {
  InvalidOTPErros() : super('Invalid OPT Code');
}

class PhoneNunberUsed extends Erros {
  PhoneNunberUsed() : super('Your phone nunber used');
}

class PhoneNumberIsNotExist extends Erros {
  PhoneNumberIsNotExist() : super('Phone number is not exist');
}
