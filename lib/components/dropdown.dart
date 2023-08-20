import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropDown extends StatelessWidget {
  final List<String> items;
  late String? selectedValue;
  final Function(String?)? onChanged;

  DropDown({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: Colors.pinkAccent,
        value: selectedValue,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: const TextStyle(fontSize: 20)),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
