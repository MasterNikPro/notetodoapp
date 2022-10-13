import 'package:hive/hive.dart';
part 'hive_note_class.g.dart';
@HiveType(typeId: 0)
class Note extends HiveObject{
  @HiveField(0,defaultValue: 0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String text;
  Note({required this.id,required this.title, required this.text});
}