bool isStrongPassword(String password) {
  // Setidaknya password memiliki 6 Karakter
  if (password.length < 6) {
    return false;
  }

  // Memiliki 1 huruf kapital
  bool hasUpperCase = RegExp(r'[A-Z]').hasMatch(password);

  // memiliki 1 angka
  bool hasDigit = RegExp(r'\d').hasMatch(password);

  // meiliki 1 karakter spesial
  bool hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

  // kembalikan hasil kondisi
  return hasUpperCase && hasDigit && hasSpecialChar;
}
