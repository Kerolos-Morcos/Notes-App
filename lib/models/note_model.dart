class NoteModel {
  final String title;
  final String subTitle;
  final String date;
  final int color;

  NoteModel({
    required this.color,
    required this.title,
    required this.subTitle,
    required this.date,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      color: json['color'],
      title: json['title'],
      subTitle: json['subTitle'],
      date: DateTime.parse(json['date']).toString(),
    );
  }
}
