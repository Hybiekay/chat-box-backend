import 'package:chatbox_backend/src/controllers/auth_controller.dart';
import 'package:flint_dart/flint_dart.dart';

void authRoutes(Flint app) {
  final authController = AuthController();

  /// @summary Create a new and auth user
  /// @prefix /auth
  /// @body {"name": "string","email": "string","password": "string"}
  /// @response 200 user login successfully
  /// @response 500 server error
  app.post("/register", authController.register);

  /// @summary Create a new token for register user
  /// @prefix /auth
  /// @body {"email": "string","password": "string"}
  /// @response 200 user login successfully
  app.post("/login", authController.login);
}
