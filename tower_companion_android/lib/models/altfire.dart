import 'package:isar/isar.dart';

part 'altfire.g.dart';

@embedded
class AltFire {
  final String name = "";
  final int level = 1;
  final String altFireDescription = "";
}

// enum AltFires {
//   blastShell(
//       name: "Blast Shell",
//       level: 3,
//       altFireDescription:
//           "Lobs a grenade-light projectile that explodes on contact with an enemy, or after enough time has passed."),
//   doomBringe(
//       name: "Doom Bringer",
//       level: 3,
//       altFireDescription:
//           "A chargeable attack that create a large, slow-moving orb that damages anything near it. Detonates in a large explosion once it hits an enemy, or travels far enough. Can destroy red shields; if it his a shield, it may bounce to a new angle."),
//   horizontalBarrage(
//       name: "Horizontal Barrage",
//       level: 3,
//       altFireDescription:
//           "Creates a large, horizontal array of projectiles that do modest amounts of damage. If nothing is hit, it will bounce a bit."),
//   killSight(
//       name: "Killsight",
//       level: 3,
//       altFireDescription:
//           "A sniper-like attack that, if used against the weak spot of an enemy, will do significant amounts of damage."),
//   proximityMine(
//       name: "Proximity Mine",
//       level: 3,
//       altFireDescription:
//           "Lobs a mine that will explode if an enemy comes close enough to it, or enough time has passed."),
//   shieldBreaker(
//       name: "Shieldbreaker",
//       level: 3,
//       altFireDescription:
//           "A powerful beam that can destroy red shields and damage enemies using them."),
//   shockStream(
//       name: "Shockstream",
//       level: 3,
//       altFireDescription:
//           "A long, continuous short-range electrical attack that randomly targets things in front of you. Great against packs of enemies."),
//   tendrilpod(
//       name: "Tendrilpod",
//       level: 3,
//       altFireDescription:
//           "Lobs a tentacle creature that does damage over time to whatever enemy is close to it. Seems to stick to enemies if hit, otherwise can do damage to things in its vicinity."),
//   trackerSwarm(
//       name: "Trackerswarm",
//       level: 3,
//       altFireDescription:
//           "Fires a cluster of homing bullets that zero-in on the nearest target."),
//   verticalBarrage(
//       name: "Vertical Barrage",
//       level: 3,
//       altFireDescription:
//           "Like the Horizontal Barrage, but instead fires a 'wall' of projectiles stacked top to bottom."),
//   voidBeam(
//       name: "Voidbeam",
//       level: 3,
//       altFireDescription:
//           "A long, continuous beam that deals increasing damage if kept on a single target.");

//   final String name;
//   final int level;
//   final String altFireDescription;

  // const AltFire(
  //     {required this.name,
  //     required this.level,
  //     required this.altFireDescription});

  // static List<AltFire> getAllAltFires() {
  //   return AltFire.values;
  // }

  // static List<String> getAllAltFireNames() {
  //   return getAllAltFires().map((altFire) => altFire.name).toList();
  // }

  // Map<String, dynamic> toMap() =>
  //     {'name': name, 'level': level, 'altFireDescription': altFireDescription};

  // String getAltFireDescription(String altfireName) {
  //   final allAltfires = getAllAltFires();
  //   try {
  //     return allAltfires
  //         .firstWhere((altFire) => altFire.name == altfireName)
  //         .altFireDescription;
  //   } catch (_) {
  //     return "Can't find altfire description.";
  //   }
  // }
// }
