import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';

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
            ? _RowButtonItem.selected(label: widget.labels[index])
            : GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  widget.onChange(index);
                  setState(() {});
                },
                child: _RowButtonItem(label: widget.labels[index])),
      ),
    );
  }
}

class _RowButtonItem extends StatelessWidget {
  final String label;
  final bool selected;
  const _RowButtonItem({
    required this.label,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  factory _RowButtonItem.selected({
    required String label,
  }) =>
      _RowButtonItem(
        label: label,
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
            label,
            style: TextStyle(
              color: selected ? AppColors.red : AppColors.gray,
            ),
          ),
        ),
      ),
    );
  }
}
