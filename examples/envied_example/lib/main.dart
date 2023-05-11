import 'package:example/env.dart';

void main(List<String> arguments) {
  print("Env.key1 :.. ${Env.key1}");

  const List<int> _envieddatakey1 = [
    2770796343,
    1269648710,
    2738063680,
    658374141,
    1282645949,
    342572501
  ];

  const List<int> _enviedkeykey1 = [
    2770796385,
    1269648647,
    2738063628,
    658374056,
    1282646008,
    342572516
  ];

  final key1 = String.fromCharCodes(
    List.generate(_envieddatakey1.length, (i) => i, growable: false)
        .map((i) => _envieddatakey1[i] ^ _enviedkeykey1[i])
        .toList(growable: false),
  );

  print("key1 :.. ${key1}");
}
