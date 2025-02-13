import 'package:envied/envied.dart';

part 'secrets.g.dart';

@Envied(path: 'lib/src/config/secrets/api_key.env', obfuscate: true)
abstract class Secrets {
  @EnviedField(varName: 'PUBLIC_KEY')
  static final String publicKey = _Secrets.publicKey;

  @EnviedField(varName: 'PRIVATE_KEY')
  static final String privateKey = _Secrets.privateKey;
}
