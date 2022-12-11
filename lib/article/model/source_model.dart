class Source {
  Source({
    this.id,
    required this.name,
  });

  final String? id;
  final String name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    name: json["name"] ?? "-",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}