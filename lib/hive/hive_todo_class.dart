import 'package:hive/hive.dart';

part 'hive_todo_class.g.dart';
@HiveType(typeId: 1)
class Todo extends HiveObject{
  @HiveField(0,defaultValue: 0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<String> tasks;
  Todo({required this.id,required this.name,required this.tasks});
}