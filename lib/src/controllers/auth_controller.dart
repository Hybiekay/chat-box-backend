import 'package:flint_dart/auth.dart';
import 'package:flint_dart/flint_dart.dart';

class AuthController {
  Future<Response?> register(Request req, Response res) async {
    final body = await req.validate({
      "name": "string|required|max:22",
      "email": "string|email|required|min:6",
      "password": "string|required|min:6"
    });

    final data = await Auth.register(
        email: body["email"], password: body["password"], name: body["name"]);
    return res.respond({"msg": "user register successfully", "data": data});
  }

  Future<Response?> login(Request req, Response res) async {
    final body = await req.validate({
      "email": "string|email|required|min:6",
      "password": "string|required|min:6"
    });

    final data = await Auth.login(
      body["email"],
      body["password"],
    );
    return res.respond({"msg": "user login successfully", "data": data});
  }
}
