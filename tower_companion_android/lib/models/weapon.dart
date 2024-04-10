import 'package:isar/isar.dart';

import 'altfire.dart';
import 'trait.dart';

part 'weapon.g.dart';

@embedded
class Weapon {
  String name = "";
  AltFire altFire = AltFire();
  List<Trait> traits = [];
  int level = 0;
}
