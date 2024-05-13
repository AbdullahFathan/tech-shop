import 'package:get/get.dart';
import 'package:tech_shop/utils/snackbar.dart';

enum StatusState {
  initial,
  loading,
  success,
  empty,
  eror,
}

abstract class BaseController<T> extends GetxController {
  var status = StatusState.initial.obs;
  T? dataResult;
  Rx<int> page = Rx(1);
  Rx<bool> hasNext = Rx(false);
  Rx<int> perPage = Rx(10);

  String erorText = "";

  bool get isLoading => status.value == StatusState.loading;
  bool get isEror => status.value == StatusState.eror;
  bool get isEmpty => status.value == StatusState.empty;
  bool get isSuccess => status.value == StatusState.success;

  void loadingState() {
    status(StatusState.loading);
  }

  void successState() {
    status(StatusState.success);
  }

  void emptyState() {
    status(StatusState.empty);
  }

  void erorState() {
    status(StatusState.eror);
  }

  void finishLoadData({
    String errorMessage = "",
    T? data,
    int page = 1,
  }) {
    this.page(page);
    if (errorMessage.isNotEmpty) {
      _setErrorStatus(errorMessage);
    } else {
      _setDataResult(data: data);
    }
    update();
  }

  void _setDataResult({T? data}) {
    if (data != null) {
      dataResult = data;
      successState();
    } else {
      emptyState();
    }
  }

  void _setErrorStatus(String message) {
    erorState();
    message = (message.isNotEmpty) ? message : 'txt_error_title'.tr;
    _showError(errorMessage: message.toString());
  }

  void _showError({String? errorMessage}) {
    Get.closeCurrentSnackbar();
    SnackBarHelper.erorSnackBar(errorMessage ?? erorText);
  }
}
