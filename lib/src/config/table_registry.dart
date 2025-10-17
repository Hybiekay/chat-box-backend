import 'dart:isolate';

import 'package:flint_dart/schema.dart';
import 'package:chatbox_backend/src/models/post_model.dart';
import 'package:chatbox_backend/src/models/user_model.dart';

void main(_, SendPort? sendPort) {
  runTableRegistry([
    User().table,
    PostModel().table,
  ], _, sendPort);
}
