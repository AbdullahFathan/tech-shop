class DetailNewsModel {
  String title;
  String author;
  String date;
  List<String> categories;
  List<dynamic> figure;
  List<String> content;

  DetailNewsModel({
    required this.title,
    required this.author,
    required this.date,
    required this.categories,
    required this.figure,
    required this.content,
  });

  factory DetailNewsModel.fromJson(Map<String, dynamic> json) =>
      DetailNewsModel(
        title: json["title"],
        author: json["author"],
        date: json["date"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        figure: List<dynamic>.from(json["figure"].map((x) => x)),
        content: List<String>.from(json["content"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "author": author,
        "date": date,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "figure": List<dynamic>.from(figure.map((x) => x)),
        "content": List<dynamic>.from(content.map((x) => x)),
      };
}

final dummyDetailNews = DetailNewsModel.fromJson({
  "title": "HP Omen Transcend 16, Lini Laptop Terbaru untuk Para Gamers!",
  "author": "Teo Ariesda",
  "date": "December 27, 2023",
  "categories": ["Tech", "Tech News"],
  "figure": [],
  "content": [
    "https://thelazy.media/wp-content/uploads/2023/12/YOU-ARE-THE-FINAL-BOSS-non-optimized@2x-696x775.png",
    "\n\n",
    "Rabu (27/12) — Semakin fokus dengan lini laptop gaming-nya, HP Omen Victus kembali rilis seri terbaru yang bertajuk HP Omen Transcend 16!",
    "Simak penjelasan singkat produknya melalui trailer di bawah!",
    "https://www.youtube.com/embed/n09wKEb2RrI?feature=oembed",
    "https://thelazy.media/wp-content/uploads/2023/12/Hero-Image-1@2x.png",
    "Sebagai laptop gaming high end, tentunya laptop ini telah dibekali dengan berbagai hardware untuk memaksimalkan performa saat bermain gim. Beberapa di antaranya sebagai berikut:",
    "Sehingga kalian tidak perlu khawatir dengan performa yang ditawarkan oleh lini laptop terbaru dari HP Omen ini.",
    "Selain beberapa hardware gahar yang disebutkan di atas, laptop HP Omen Transcend 16 ini juga dilengkapi dengan layar mini-LED hingga resolusi 16:10 240 hz. Layar ini dapat memberikan hasil yang lebih jernih dan reaktif, sekaligus memberikan kalian pandangan yang lebih luas dan leluasa saat bermain.",
    "https://thelazy.media/wp-content/uploads/2023/12/KSP-1-Image@2x.jpg",
    " ",
    " ",
    "Laptop ini dibanderol dengan harga Rp 20-30 jutaan saja, sehingga bisa disesuaikan dengan budget dan kebutuhan masing-masing.",
    "Segera dapatkan unitnya sekarang juga dengan mengunjungi link di bawah, ya!",
    "Informasi selengkapnya tentang daftar laptop HP Omen Transcend 16 silakan kunjungi:\nWebsite | Lokasi Toko"
  ]
});
