class SimpleRecipe {
  String id;
  String dishImage;
  String title;
  String duration;
  String source;
  List<String> information;

  SimpleRecipe({
    required this.id,
    required this.dishImage,
    required this.title,
    required this.duration,
    required this.source,
    required this.information,
  });

  factory SimpleRecipe.fromJson(Map<String, dynamic> json) {
    return SimpleRecipe(
      id: json['id'] as String,
      dishImage: json['dishImage'] as String,
      title: json['title'] as String,
      duration: json['duration'] as String,
      source: json['source'] as String,
      information: json['information'].cast<String>() as List<String>,
    );
  }

  // with named constructor, you have to make all variables nullable
  // SimpleRecipe.json(Map<String, dynamic> json) {
  //   id = json['id'] as String;
  //   dishImage = json['dishImage'] as String;
  //   title = json['title'] as String;
  //   duration = json['duration'] as String;
  //   source = json['source'] as String;
  //   information = json['information'].cast<String>() as List<String>;
  // }
}
