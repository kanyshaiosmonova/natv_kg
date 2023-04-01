import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';

class ContactInfoForm extends StatefulWidget {
  const ContactInfoForm({super.key});

  @override
  State<ContactInfoForm> createState() => _ContactInfoFormState();
}

class _ContactInfoFormState extends State<ContactInfoForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.border,
            width: 4.0,
          ),
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      child: Column(children: const [
        FormWidget(text: 'КОНТАКТНЫЙ НОМЕР', labelText: 'ПРИМЕР: 0555 123 456'),
        SizedBox(height: 20),
        FormWidget(text: 'E-MAIL', labelText: 'primer@mail.com'),
        SizedBox(height: 20),
        FormWidget(
            text: 'УКАЖИТЕ ФАМИЛИЮ И ИМЯ',
            labelText: 'Ф.И.О./название организации'),
        SizedBox(height: 20),
      ]),
    );
  }
}

class FormWidget extends StatelessWidget {
  final String text;
  final String labelText;

  const FormWidget({required this.text, required this.labelText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.grayish),
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: const TextStyle(fontSize: 16, color: AppColors.gray),
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 0.5, color: AppColors.border),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
