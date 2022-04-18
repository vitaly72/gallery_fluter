class Urls {
  late String raw;
  late String full;
  late String regular;
  late String small;
  late String thumb;

  Urls(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb});

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
  }
}
