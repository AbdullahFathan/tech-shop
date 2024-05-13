// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tech_shop/utils/global_widgets/loading.dart';

class StateHelperWidget extends StatelessWidget {
  final bool isLoading;
  final bool isEmpty;
  final bool isEror;
  final Widget? loadingWidget;
  final String? erortext;
  final Widget? emptyWidget;
  final Widget body;
  const StateHelperWidget({
    Key? key,
    required this.isLoading,
    required this.isEmpty,
    required this.isEror,
    this.loadingWidget,
    this.erortext,
    this.emptyWidget,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getWidget();
  }

  Widget getWidget() {
    if (isLoading) {
      return loadingWidget ?? const LoadingWidget();
    } else if (isEmpty) {
      return const Center(
        child: Text("No data"),
      );
    } else if (isEror) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Eror"),
            const SizedBox(
              width: 10,
            ),
            Text(erortext ?? 'Something went Wrong'),
          ],
        ),
      );
    }

    return body;
  }
}
