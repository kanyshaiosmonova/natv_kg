import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({Key? key, required this.onDateSelected})
      : super(key: key);

  final void Function(DateTime) onDateSelected;

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2030));
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
      widget.onDateSelected(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          const Expanded(child: SizedBox()),
          IconButton(
            onPressed: () {
              _selectDate(context);
            },
            icon: const Icon(Icons.date_range),
          ),
        ],
      ),
    );
  }
}
