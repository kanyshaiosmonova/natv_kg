import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/main.dart';
import 'package:natv_kg/screens/placement_of_banner.dart';

class RowButtonWidget extends StatefulWidget {
  final List<String> labels;
  final int initialIndex;
  final void Function(int) onChange;
  const RowButtonWidget({
    required this.labels,
    this.initialIndex = 0,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  State<RowButtonWidget> createState() => _RowButtonWidgetState();
}

class _RowButtonWidgetState extends State<RowButtonWidget> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.labels.length,
        (index) => index == selectedIndex
            ? _RowButtonItem.selected(
                options: [widget.labels[index]],
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  if (index == 0) {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  } else if (index == 1) {
                    Navigator.pushNamed(context, '/banner');
                  }
                },
                child: _RowButtonItem(
                  options: [widget.labels[index]],
                ),
              ),
      ),
    );
  }
}

class _RowButtonItem extends StatelessWidget {
  final List<String> options;
  final bool selected;
  const _RowButtonItem({
    required this.options,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  factory _RowButtonItem.selected({
    required List<String> options,
  }) =>
      _RowButtonItem(
        options: options,
        selected: true,
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: selected ? AppColors.white : AppColors.backgroundColor,
            border: Border(
              top: BorderSide(
                color: selected ? AppColors.red : AppColors.gray,
                width: 5.0,
              ),
            ),
          ),
          child: Text(
            options.join('\n'),
            style: TextStyle(
              color: selected ? AppColors.red : AppColors.gray,
            ),
          ),
        ),
      ),
    );
  }
}
