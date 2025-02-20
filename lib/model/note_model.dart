import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveType(typeId: 0)
  final String? title;
  @HiveType(typeId: 1)
  final String? supTitle;
  @HiveType(typeId: 2)
  final String? date;
  @HiveType(typeId: 3)
  final int? color;

  NoteModel({
     this.title,
     this.supTitle,
     this.date,
     this.color,
  });
}
