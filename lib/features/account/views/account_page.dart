import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/config/app_fonts.dart';
import 'package:tech_shop/features/account/constants/account.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
              ),
              radius: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: Text(
                "Rizal Ilham",
                style: medium(AppColor.blackColor, 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Text(
                "admin@gmail.com",
                style: medium(AppColor.blackColor, 16),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Get.toNamed(accountData[index]["route"]),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.lightWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 2),
                          blurRadius: 8,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  accountData[index]["icons"],
                                  color: AppColor.greyColor,
                                ),
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  width: 10,
                                ),
                              ),
                              TextSpan(
                                text: ' ${accountData[index]['name']}',
                                style: medium(AppColor.blackColor, 14),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                );
              },
              itemCount: accountData.length,
            )
          ],
        ),
      ),
    );
  }
}
