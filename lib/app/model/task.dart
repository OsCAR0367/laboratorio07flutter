class Task {
  Task(this.title, {this.done = false});
  
  final String title;
  bool done; // Quitamos 'final' para permitir cambios
}