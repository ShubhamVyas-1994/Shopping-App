import 'package:encrypt/encrypt.dart';

String encrytor(String str) {
  final key = Key.fromUtf8("NOISAB@yub\$bbasijsdqnqwdmqdjn@@!");
  final iv = IV.fromUtf8("TestingIV1234567");
  print(iv.base64);
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  final encrypted = encrypter.encrypt(str, iv: iv);
  print("Encrypted" + encrypted.toString());
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  print(decrypted);
  print(encrypted.bytes);
  print(encrypted.base16);
  print(encrypted.base64);
  return encrypted.base64;
}
