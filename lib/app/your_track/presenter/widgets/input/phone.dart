import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key, required this.label, required this.onChange});
  final String label;
  final Function(PhoneNumber) onChange;

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
        onInputChanged: onChange,
        maxLength: 10,
        initialValue: PhoneNumber(isoCode: "VN"),
        hintText: label);
  }
}
