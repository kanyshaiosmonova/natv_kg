import 'package:flutter/material.dart';

class ChannelWidget extends StatefulWidget {
  const ChannelWidget({Key? key}) : super(key: key);

  @override
  State<ChannelWidget> createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> {
  DateTime? _selectedDate;

  void _showDatePicker() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/image_name.png',
                        height: 80,
                        width: 80,
                      ),
                      const SizedBox(height: 10),
                      const Text('Image Name'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                GestureDetector(
                  onTap: _showDatePicker,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(width: 10),
                        Text(
                          _selectedDate == null
                              ? 'Select Date'
                              : 'Selected Date: ${_selectedDate!.toLocal()}'
                                  .split(' ')[0],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
