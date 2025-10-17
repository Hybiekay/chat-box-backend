import 'package:flint_dart/flint_dart.dart';
import 'package:chatbox_backend/src/routes/auth_routes.dart';

void main() {
  final app = Flint(withDefaultMiddleware: true, enableSwaggerDocs: true);
  app.mount("/auth", authRoutes);
  app.listen(3000);
}
