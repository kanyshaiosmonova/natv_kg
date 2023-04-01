import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';

class AnnouncementTextField extends StatefulWidget {
  const AnnouncementTextField({Key? key}) : super(key: key);

  @override
  State<AnnouncementTextField> createState() => _AnnouncementTextFieldState();
}

class _AnnouncementTextFieldState extends State<AnnouncementTextField> {
  final TextEditingController _controller = TextEditingController();

  int get characterCount => _controller.text.length;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      width: 200,
      height: 200,
      color: AppColors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: AppColors.red,
              child: Column(children: [
                const Text(
                  'Введите текст объявления',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Символов: $characterCount',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 40),
                    border: InputBorder.none,
                    hintText: 'Скидки! Бутик женской одежды!',
                  ),
                  onChanged: (_) {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
