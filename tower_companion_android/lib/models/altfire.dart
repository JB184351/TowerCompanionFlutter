class AltFire {
  String name;
  int level;
  String altFireDescription;

  AltFire(this.name, this.level, this.altFireDescription);

    static List<AltFire> getAllAltFires() {
        List<AltFire> altfires = [];

        final blastShell = AltFire("Blast Shell", 3, "Lobs a grenade-light projectile that explodes on contact with an enemy, or after enough time has passed.");
        final doomBringer = AltFire("Doom Bringer", 3, "A chargeable attack that create a large, slow-moving orb that damages anything near it. Detonates in a large explosion once it hits an enemy, or travels far enough. Can destroy red shields; if it his a shield, it may bounce to a new angle.");
        final horizontalBarrage = AltFire("Doom Bringer", 3, "Creates a large, horizontal array of projectiles that do modest amounts of damage. If nothing is hit, it will bounce a bit.");
        final killSight = AltFire("Killsight", 3, "A sniper-like attack that, if used against the weak spot of an enemy, will do significant amounts of damage.");
        final proximityMine = AltFire("Proximity Mine", 3, "Lobs a mine that will explode if an enemy comes close enough to it, or enough time has passed.");
        final shieldBreaker = AltFire("Shieldbreaker", 3, "A powerful beam that can destroy red shields and damage enemies using them.");
        final shockStream = AltFire("Shockstream", 3, "A long, continuous short-range electrical attack that randomly targets things in front of you. Great against packs of enemies.");
        final tendrilpod = AltFire("Tendrilpod", 3, "Lobs a tentacle creature that does damage over time to whatever enemy is close to it. Seems to stick to enemies if hit, otherwise can do damage to things in its vicinity.");
        final trackerSwarm = AltFire("Trackerswarm", 3, "Fires a cluster of homing bullets that zero-in on the nearest target.");
        final verticalBarrage = AltFire("Vertical Barrage", 3, "Like the Horizontal Barrage, but instead fires a 'wall' of projectiles stacked top to bottom.");
        final voidBeam = AltFire("Voidbeam", 3, "A long, continuous beam that deals increasing damage if kept on a single target.");


        altfires.add(blastShell);
        altfires.add(doomBringer);
        altfires.add(horizontalBarrage);
        altfires.add(killSight);
        altfires.add(proximityMine);
        altfires.add(shieldBreaker);
        altfires.add(shockStream);
        altfires.add(tendrilpod);
        altfires.add(trackerSwarm);
        altfires.add(verticalBarrage);
        altfires.add(voidBeam);

        return altfires;
    }

   static List<String> getAllAltFireNames() {
      return getAllAltFires().map((altFire) => altFire.name).toList();
   }

   String getAltFireDescription(String altfireName) {
    final allAltfires = getAllAltFires();
    final altFire = allAltfires.firstWhere((altFire) => altFire.name == altfireName, orElse: () => allAltfires[0]);
    return altFire?.altFireDescription ?? "AltFire Description Can't Be Found.";
}

}