import 'package:flint_dart/model.dart';
import 'package:flint_dart/schema.dart';

class PostModel extends Model<PostModel> {
  int? id;
  String? title;
  String? subTitle;

  @override
  Table get table => Table(
        name: 'post_models',
        columns: [
          Column(
              name: 'id',
              type: ColumnType.integer,
              isPrimaryKey: true,
              isAutoIncrement: true),
          Column(
              name: 'name',
              type: ColumnType.string,
              length: 255,
              isNullable: true),
          Column(
              name: 'email',
              type: ColumnType.string,
              length: 255,
              isNullable: true,
              isUnique: true),
          Column(name: 'password', type: ColumnType.string, isNullable: true),
          Column(name: 'provider', type: ColumnType.string, isNullable: true),
          Column(
              name: 'provider_id', type: ColumnType.string, isNullable: true),
          Column(
              name: 'created_at', type: ColumnType.datetime, isNullable: true),
          Column(
              name: "updated_at",
              type: ColumnType.datetime,
              defaultValue: Default.currentTimestamp())
        ],
      );

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
      };

  @override
  PostModel fromMap(Map<dynamic, dynamic> map) {
    return PostModel()
      ..id = map['id']
      ..title = map['title'];
  }
}
