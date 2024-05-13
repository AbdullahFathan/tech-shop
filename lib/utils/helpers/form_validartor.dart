String? isStrongPassword(String password) {
  // Setidaknya password memiliki 6 Karakter
  if (password.length < 6) {
    return "Password Kurang dari 6 karakter";
  }

  // Memiliki 1 huruf kapital
  bool hasUpperCase = RegExp(r'[A-Z]').hasMatch(password);

  // memiliki 1 angka
  bool hasDigit = RegExp(r'\d').hasMatch(password);

  // meiliki 1 karakter spesial
  bool hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

  // Cek setiap kriteria dan kembalikan pesan sesuai kegagalan
  if (!hasUpperCase) {
    return "Password harus memiliki setidaknya satu huruf kapital.";
  } else if (!hasDigit) {
    return "Password harus memiliki setidaknya satu angka.";
  } else if (!hasSpecialChar) {
    return "Password harus memiliki setidaknya satu karakter khusus.";
  }

  // Jika semua kriteria terpenuhi, kembalikan null
  return null;
}
