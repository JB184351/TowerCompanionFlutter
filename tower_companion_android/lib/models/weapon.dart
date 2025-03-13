import 'package:tower_companion_android/models/altfire_model.dart';

import 'AltFire.dart';
import 'Trait.dart';

class Weapon {
  int? id;
  String name = "";
  AltFire_Model altFire = AltFire_Model(AltFire.blastShell.name,
      AltFire.blastShell.level, AltFire.blastShell.altFireDescription);
  List<Trait> traits = [];
  int level = 1;

  Weapon(this.name, this.altFire, this.traits, this.level);
}
