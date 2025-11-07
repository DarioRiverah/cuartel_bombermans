import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthService() {
    // 🔹 Correos del sistema en español (verificación, reset, etc.)
    _auth.setLanguageCode('es');
  }

  /// Envía el correo de verificación al usuario actual (sin ActionCodeSettings)
  Future<void> sendEmailVerification() async {
    final user = _auth.currentUser;
    if (user == null) {
      throw FirebaseAuthException(
        code: 'NO_USER',
        message: 'No hay usuario autenticado.',
      );
    }
    await user.sendEmailVerification(); // 👈 sin acs, usa la URL por defecto
  }

  /// Envía el correo de restablecimiento de contraseña
  Future<void> sendPasswordReset(String email) async {
    await _auth.sendPasswordResetEmail(email: email); // 👈 sin acs
  }

  /// Vuelve a cargar el usuario y devuelve si ya verificó
  Future<bool> reloadAndIsVerified() async {
    final user = _auth.currentUser;
    if (user == null) return false;
    await user.reload();
    return _auth.currentUser?.emailVerified ?? false;
  }

  /// Helper opcional de registro (solo Auth)
  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
  }) {
    return _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
