import 'package:isar/isar.dart';
part 'malfunction.g.dart';

enum MalfunctionType { normal, permanent }

@embedded
class Malfunction {
  String malfunctionDescription = "";
  String? conditionToRemove = "";
  @enumerated
  MalfunctionType malfunctionType = MalfunctionType.normal;

  static List<String> getAllPermanentMalfunctions() {
    String obolitesDisappear = "Obolites disappear 1.5s faster.";
    String loseObolites = "Lose Obolites when suffering damage.";
    String midAir = "While in midair, Weapon Damage reduced by 50%.";
    String counterOnHit = "Hostiles counter on hit.";
    String meleeCooldown = "Melee cooldown increased by 2s.";
    String stationary = "While stationary, Weapon Damage reduced by 75%.";
    String reduceIntegrity = "Reduced Max Integrity.";
    String acid = "Hostiles leave pools of acid upon death.";
    String hostilesHeal = "Hostiles heal on attack.";
    String hostilesExplode = "Hostiles explode upon death.";
    String fabricationCost = "Fabrication costs increased by 50%.";

    List<String> permanentMalfunctions = [
      obolitesDisappear,
      loseObolites,
      midAir,
      counterOnHit,
      meleeCooldown,
      stationary,
      reduceIntegrity,
      acid,
      hostilesHeal,
      hostilesExplode,
      fabricationCost,
    ];

    return permanentMalfunctions;
  }
}
