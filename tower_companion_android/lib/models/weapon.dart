import 'AltFire.dart';
import 'Trait.dart';


class Weapon {
    String name = "";
    AltFire altFire = AltFire("Blast Shell", 3, "Lobs a grenade-light projectile that explodes on contact with an enemy, or after enough time has passed.");
    List<Trait> traits = [];
    int level = 1;

    Weapon(this.name, this.altFire, this.traits, this.level);
}

/*

struct Weapon: Codable {
    var name: String
    var altFire: AltFire
    var traits: [Trait]
    var level: Int
}
*/