import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';

class KDropDownWidget extends StatefulWidget {
  const KDropDownWidget({super.key});

  @override
  State<KDropDownWidget> createState() => _KDropDownWidgetState();
}

class _KDropDownWidgetState extends State<KDropDownWidget> {
  String selectedValue = 'News';
  List<String> category = ["News", "Setup", "Review", "Tips"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        value: selectedValue,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.greyColor, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.greyColor, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: AppColor.lightWhite,
        ),
        dropdownColor: AppColor.lightWhite,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: category
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList());
  }
}
