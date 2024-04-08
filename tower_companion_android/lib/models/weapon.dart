import 'AltFire.dart';
import 'Trait.dart';

class Weapon {
  String name = "";
  AltFire altFire = AltFire.blastShell;
  List<Trait> traits = [];
  int level = 1;

  Weapon(this.name, this.altFire, this.traits, this.level);
}
