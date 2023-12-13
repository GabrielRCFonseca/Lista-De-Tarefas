class Todo{

  Todo({required this.title, required this.date});

  Todo.fronjson(Map<String, dynamic> json):
      title = json['title'],
      date = DateTime.parse(json['datetime']);

  String title;
  DateTime date;

  toJason() {
    return {
      'title': title,
      'datetime': date.toIso8601String(),
    };
  }

}