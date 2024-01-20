enum Artifact {
  phantomLimb(
      name: "Phantom Limb",
      artifactDescription:
          "Eliminating hostiles has a 10% chance to repair Integrity."),
  woundSeekers(
      name: "Wound Seekers",
      artifactDescription: "Deal 30% more damage to low health targets."),
  executionRush(
      name: "Execution Rush",
      artifactDescription:
          "Melee kills briefly increase Speed by 25% & Protection by 25%."),
  rechargingOverload(
      name: "Recharging Overload",
      artifactDescription:
          "Successful Overloads reduce Alt-Fire Cooldown by 3s."),
  fractalNail(
      name: "Fractal Nail",
      artifactDescription:
          "Grants +10% Weapon Damage while you have a Malfunction."),
  silverLatice(
      name: "Silver Lattice",
      artifactDescription: "Become immune to slowdown effects."),
  adrelaineCoolant(
      name: "Adrenaline Coolant",
      artifactDescription:
          "Reduce Alt-Fire Cooldown by 1s per Adrenaline Level."),
  distruptingOverload(
      name: "Disrupting Overload",
      artifactDescription:
          "Successful Overloads cause weapon fire to break Shields for 6s."),
  blownNightlight(
      name: "Blown Nightlight",
      artifactDescription:
          "Personal Item. Being at Full or Low Integrity increases Weapon Damage by 10%."),
  goldenCoil(
      name: "Golden Coil",
      artifactDescription:
          "Grants +5% Weapon Damage for every 200 Obolites carried. Maximum Bonus 15%"),
  rechargingResponse(
      name: "Recharging Response",
      artifactDescription: "Getting hit reduces Alt-Fire Cooldown by 5s."),
  energyManipulator(
      name: "Energy Manipulator",
      artifactDescription:
          "Using a Consumable briefly increases Protection by 10%."),
  resinousShield(
      name: "Resinous Shield",
      artifactDescription:
          "Picking up a Resin gives you a Shield against the next hit."),
  reactiveStabilizers(
      name: "Reactive Stabilizers",
      artifactDescription:
          "95% chance to avoid being knocked down by heavy attacks."),
  repairCircuit(
      name: "Repair Circuit",
      artifactDescription: "Gaining or fixing Malfunctions repairs Integrity."),
  adrelaineEnhancer(
      name: "Adrenaline Enhancer",
      artifactDescription:
          "Take on an additional hit before Adrenaline Levels drop."),
  progenitorEgg(
      name: "Progenitor Egg",
      artifactDescription:
          "Attaching or detaching Parasites repairs Integrity."),
  resinEnhancer(
      name: "Resin Enhancer",
      artifactDescription:
          "Reduces the number of Resins needed to upgrade Max Integrity."),
  executionCoolant(
      name: "Execution Coolant",
      artifactDescription: "Melee reduces Alt-Fire Cooldown by 5s."),
  murmuringCocoon(
      name: "Murmuring Cocoon",
      artifactDescription:
          "Boosts the positive effects of upcoming Parasites."),
  pulsatingMass(
      name: "Pulsating Mass",
      artifactDescription:
          "Increases Maximum Integrity upon attaching or detaching a Parasite."),
  unifiedPod(
      name: "Unified Pod",
      artifactDescription:
          "Adds 20% Stagger Power for each Parasite attached.");

  final String name;
  final String artifactDescription;

  const Artifact({required this.name, required this.artifactDescription});

  Map<String, dynamic> toMap() =>
      {'name': name, 'artifactDescription': artifactDescription};
}
