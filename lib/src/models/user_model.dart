import 'package:flint_dart/model.dart';
import 'package:flint_dart/schema.dart';

class User extends Model<User> {
  int? id;
  String? name;
  String? email;
  String? password;
  String? profilePicUrl;

  @override
  Map<String, dynamic> toMap() =>
      {'id': id, 'name': name, 'email': email, "profilePicUrl": profilePicUrl};

  @override
  User fromMap(Map<dynamic, dynamic> map) => User()
    ..id = map['id']
    ..name = map['name']
    ..email = map['email']
    ..password = map["password"];

  @override
  Table get table => Table(
        name: 'users',
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
          ),
          Column(
              name: 'email',
              type: ColumnType.string,
              length: 255,
              isUnique: true),
          Column(
            name: 'password',
            type: ColumnType.string,
          ),
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
}
