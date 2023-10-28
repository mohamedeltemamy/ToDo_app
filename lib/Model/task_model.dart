class TaskModel {
  String id;
  String title;
  String description;
  DateTime dateTime;
  bool isDone;

  TaskModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.dateTime,
      required this.isDone});

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "dateTime": dateTime,
      "isDone": isDone
    };
  }
}
