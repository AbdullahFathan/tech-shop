class NewsModel {
  String title;
  String thumb;
  String author;
  String tag;
  String time;
  String desc;
  String key;

  NewsModel({
    required this.title,
    required this.thumb,
    required this.author,
    required this.tag,
    required this.time,
    required this.desc,
    required this.key,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json["title"],
        thumb: json["thumb"],
        author: json["author"],
        tag: json["tag"],
        time: json["time"],
        desc: json["desc"],
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "thumb": thumb,
        "author": author,
        "tag": tag,
        "time": time,
        "desc": desc,
        "key": key,
      };
}

NewsModel dummyModel = NewsModel.fromJson(
  {
    "title": "HP Omen Transcend 16, Lini Laptop Terbaru untuk Para Gamers!",
    "thumb":
        "https://thelazy.media/wp-content/uploads/2023/12/YOU-ARE-THE-FINAL-BOSS-non-optimized@2x-218x150.png",
    "author": "Teo Ariesda",
    "tag": "Tech",
    "time": "December 27, 2023",
    "desc":
        "Rabu (27/12) — Semakin fokus dengan lini laptop gaming-nya, HP Omen Victus kembali rilis seri terbaru yang bertajuk HP Omen Transcend 16!\n\nSimak penjelasan singkat produknya melalui trailer di bawah!\n\nhttps://youtu.be/n09wKEb2RrI\nHP Omen Transcend 16...",
    "key": "2023/12/27/hp-omen-transcend-16-27122023"
  },
);
