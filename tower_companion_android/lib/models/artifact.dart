import 'package:isar/isar.dart';
part 'artifact.g.dart';

@embedded
class Artifact {
  String name = "";
  String artifactDescription = "";

  static List<Artifact> createArtifacts() {
    List<Artifact> artifacts = [];

    artifacts.add(Artifact("Phantom Limb",
        "Eliminating hostiles has a 10% chance to repair Integrity."));
    artifacts.add(Artifact(
        "Wound Seekers", "Deal 30% more damage to low health targets."));
    artifacts.add(Artifact("Execution Rush",
        "Melee kills briefly increase Speed by 25% & Protection by 25%."));
    artifacts.add(Artifact("Recharging Overload",
        "Successful Overloads reduce Alt-Fire Cooldown by 3s."));
    artifacts.add(Artifact("Fractal Nail",
        "Grants +10% Weapon Damage while you have a Malfunction."));
    artifacts
        .add(Artifact("Silver Lattice", "Become immune to slowdown effects."));
    artifacts.add(Artifact("Adrenaline Coolant",
        "Reduce Alt-Fire Cooldown by 1s per Adrenaline Level."));
    artifacts.add(Artifact("Disrupting Overload",
        "Successful Overloads cause weapon fire to break Shields for 6s."));
    artifacts.add(Artifact("Blown Nightlight",
        "Personal Item. Being at Full or Low Integrity increases Weapon Damage by 10%."));
    artifacts.add(Artifact("Golden Coil",
        "Grants +5% Weapon Damage for every 200 Obolites carried. Maximum Bonus 15%"));
    artifacts.add(Artifact(
        "Recharging Response", "Getting hit reduces Alt-Fire Cooldown by 5s."));
    artifacts.add(Artifact("Energy Manipulator",
        "Using a Consumable briefly increases Protection by 10%."));
    artifacts.add(Artifact("Resinous Shield",
        "Picking up a Resin gives you a Shield against the next hit."));
    artifacts.add(Artifact("Reactive Stabilizers",
        "95% chance to avoid being knocked down by heavy attacks."));
    artifacts.add(Artifact(
        "Repair Circuit", "Gaining or fixing Malfunctions repairs Integrity."));
    artifacts.add(Artifact("Adrenaline Enhancer",
        "Take on an additional hit before Adrenaline Levels drop."));
    artifacts.add(Artifact("Progenitor Egg",
        "Attaching or detaching Parasites repairs Integrity."));
    artifacts.add(Artifact("Resin Enhancer",
        "Reduces the number of Resins needed to upgrade Max Integrity."));
    artifacts.add(Artifact(
        "Execution Coolant", "Melee reduces Alt-Fire Cooldown by 5s."));
    artifacts.add(Artifact("Murmuring Cocoon",
        "Boosts the positive effects of upcoming Parasites."));
    artifacts.add(Artifact("Pulsating Mass",
        "Increases Maximum Integrity upon attaching or detaching a Parasite."));
    artifacts.add(Artifact(
        "Unified Pod", "Adds 20% Stagger Power for each Parasite attached."));

    artifacts.sort((a, b) => a.name.compareTo(b.name));

    return artifacts;
  }
}
