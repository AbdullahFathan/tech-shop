import 'package:get/get.dart';
import 'package:tech_shop/features/cart/models/cart_model.dart';

class CartController extends GetxController {
  var dummyDataCart = List.generate(
      4,
      (index) => Cart.fromJson({
            "id": index,
            "name": "Macbook Air M1 2020",
            "image": [
              "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/1/20/5b6654a2-4317-44ba-90f7-6333fa0f7bda.jpg.webp?ect=4g",
              "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/1/20/5b6654a2-4317-44ba-90f7-6333fa0f7bda.jpg.webp?ect=4g"
            ],
            "price": "12000000",
            "isChek": false
          })).obs;

  //total price in cart
  var totalPrice = 0.obs;

  //handle checkbox cart item
  void changeCheck(int id) {
    var selectedItem = dummyDataCart.firstWhere((element) => element.id == id);

    if (selectedItem.isChek) {
      //user want to [REMOVE] item, so reduce total price
      totalPrice.value -= int.parse(selectedItem.price);
    } else {
      //user want to [ADD] item, so add total price
      totalPrice.value += int.parse(selectedItem.price);
    }

    //update isCheck item cart
    selectedItem.isChek = !selectedItem.isChek;

    dummyDataCart.refresh();
  }

  //handle remove item from cart list
  void removeItem(Cart item) {
    dummyDataCart.remove(item);
    dummyDataCart.refresh();
  }
}
