import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kursol/core/utils/secure_storage.dart';
import 'package:kursol/features/my_app.dart';
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final token = await SecureStorage.getAccessToken();
  if (token != null && token.isNotEmpty) {
    final isExpired = _isTokenExpired(token);
    if (isExpired) {
      await SecureStorage.clearTokens();
    }
  }

  runApp(
    ProviderScope(
      overrides: [
      ],
      child: const MyApp(),
    ),
  );
}


bool _isTokenExpired(String token) {
  try {
    final parts = token.split('.');
    if (parts.length != 3) return true;

    final payload = utf8.decode(base64Url.decode(base64Url.normalize(parts[1])));
    final payloadMap = jsonDecode(payload);

    final exp = payloadMap['exp'];
    if (exp == null) return true;

    final expiryDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
    return DateTime.now().isAfter(expiryDate);
  } catch (e) {
    return true; // Parsing xatoligi bo‘lsa ham expired deb hisoblaymiz
  }
}
