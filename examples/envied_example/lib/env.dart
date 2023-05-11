// lib/env/env.dart
import 'package:envied_flutter/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(
    varName: 'KEY1',
    obfuscate: true,
  )
  static final key1 = _Env.key1;

  @EnviedField(
    varName: 'KEY2',
    obfuscate: true,
  )
  static final key2 = _Env.key2;
}
