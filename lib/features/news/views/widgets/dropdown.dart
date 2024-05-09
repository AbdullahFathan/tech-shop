import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/features/news/controller/news/news_controller.dart';

class KDropDownWidget extends GetView<NewsController> {
  const KDropDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> category = ["News", "Setup", "Review", "Tips"];
    return Obx(
      () => DropdownButtonFormField<String>(
        value: controller.selectedDrop.value,
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
          controller.handleDropDown(newValue!);
        },
        items: category
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
      ),
    );
  }
}
