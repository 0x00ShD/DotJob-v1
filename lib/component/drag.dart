import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Public limited company',
  'Private limited company',
  'Partnership firm',
  'Joint venture companies',
  'One person company',
  'Sole proprietorship',
  'Branch office',
  'Non-government organization (NGO)',
  'Limited Liability Partnership (LLP)'
];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.grey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      width: 300,
      textStyle: const TextStyle(color: Colors.white),
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
