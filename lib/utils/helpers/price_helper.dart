class PriceHelper {
  static String formatPrice(String price) {
    String cleanPrice = price.replaceAll(RegExp(r'[^0-9]'), '');

    int priceValue = int.tryParse(cleanPrice) ?? 0;

    // Format sebagai mata uang IDR dengan titik sebagai pemisah ribuan
    String formattedPrice = 'Rp ${priceValue.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (match) => '${match[1]}.',
        )}';

    return formattedPrice;
  }
}
