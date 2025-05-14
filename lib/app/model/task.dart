class Task {
  String title;
  bool done;

  Task(this.title, {this.done = false});

  // Convertir Task a Map para guardar en SharedPreferences
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'done': done,
    };
  }

  // Crear Task desde Map (al cargar de SharedPreferences)
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      json['title'],
      done: json['done'],
    );
  }
}