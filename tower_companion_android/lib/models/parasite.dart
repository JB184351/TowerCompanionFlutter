class Parasite {
  String name;
  String positiveDescription;
  String negativeDescription;

  Parasite(this.name, this.positiveDescription, this.negativeDescription);
  static List<Parasite> allparasites = [];
  static List<Parasite> getAllParasites() {
    if (allparasites.isNotEmpty) {
      return allparasites;
    }

    _createParasitesSpecial();

    _createParasitesCategoryA();

    _createParasitesCategoryB();

    allparasites.sort((a, b) => a.name.compareTo(b.name));

    return allparasites;
  }

  static void _createParasitesSpecial() {
    String silphic = "Inhibits the use of Silphium resources.";

    String bladeSpinner = "Melee kills repair Integrity.";
    String goldSpinner = "Collecting Obolites repairs Integrity.";

    Parasite silphicBladeSpinner =
        Parasite("Silphic Bladespinner", bladeSpinner, silphic);

    Parasite silphicGoldSpinner =
        Parasite("Silphic Goldspinner", goldSpinner, silphic);

    String barbed = "Weapon Damage decreased by 15%.";
    String fleshStinger = "Damage dealt to weak points increased by 30%.";

    Parasite barbedFleshStinger = Parasite(
      "Barbed FleshStinger",
      fleshStinger,
      barbed,
    );

    allparasites.add(barbedFleshStinger);
    allparasites.add(silphicGoldSpinner);
    allparasites.add(silphicBladeSpinner);
  }

  static void _createParasitesCategoryA() {
    Map<String, String> negativePassivePrefixes = {
      "Atrophing": "Reduces Melee Damage by 50%.",
      "Brittle": "Suffer damage from long falls.",
      "Caustic": "Hostiles leave behind a pool of acid on death.",
      "Constricting": "Causes damage when picking up Items.",
      "Corrosive": "Reduces Protection by 10%.",
      "Destabilizing": "Dropped Obolites disappear 1s faster.",
      "Distracting": "Reduces Proficiency Rate by 15%.",
      "Impairing": "Reduces Repair Efficiency by 30%.",
      "Latching": "Suffer damage when using Keys.",
      "Lethargic": "Alt-Fire Cooldown increased by 5s.",
      "Malicious": "Increases Malfunction probability.",
      "Oily": "Upcoming Malfunctions have harder fix requirements.",
      "Ominous": "Increases the chance of finding Malignant Items.",
      "Sedating": "1 more kill required to increase Adrenaline Levels.",
      "Slimy": "Upcoming Malfunctions have more severe effects.",
      "Sluggish": "Greatly increases Melee Cooldown & Dash Cooldown",
      "Benign": "No negative effects detected.",
    };

    Map<String, String> positivePassiveSuffixes = {
      "Coldblood": "Reduces Alt-Fire Cooldown by 3s.",
      "Goldstalker": "Doubles Obolite collection radius.",
      "Goldtail": "Dropped Obolites last 1.5s longer.",
      "Huskweaver": "Greatly increases Max Integrity.",
      "Needletooth": "Increases Repair Efficiency by 20%.",
      "Nervestinger": "1 fewer kill required to increase Adrenaline Levels.",
      "Oddkeeper": "20% chance to not lose a Consumable on use.",
      "Rotnose": "50% chance to find better Salvage from hostiles.",
      "Rotstench": "Find Salvage from hostiles more often.",
      "Sagetooth": "Increases Proficiency Rate by 20%.",
      "Scabshell": "Increases Protection by 15%.",
      "Silverscale": "Fabrication costs reduced by 15%.",
      "Slowstitch": "Autorepairs while at Low Integrity.",
      "Wiretail": "Reduces Malfunction probability.",
    };

    for (var negativePassivePrefix in negativePassivePrefixes.entries) {
      for (var positivePassiveSuffix in positivePassiveSuffixes.entries) {
        String parasiteName =
            "${negativePassivePrefix.key} ${positivePassiveSuffix.key}";
        Parasite parasite = Parasite(parasiteName, positivePassiveSuffix.value,
            negativePassivePrefix.value);
        allparasites.add(parasite);
      }
    }
  }

  static void _createParasitesCategoryB() {
    Map<String, String> negativeActivePrefixes = {
      "Amnesic": "Eats away a large amount of Proficiency on detach.",
      "Festering": "Suffer damage to Integrity on detach.",
      "Jolting": "Triggers 2 Malfunctions on detach.",
      "Rupturing": "Greatly reduces Max Integrity on detach.",
      "Shocking": "Triggers a Critical Malfunction on detach.",
      "Sparking": "Triggers a Malfunction on detach.",
    };

    Map<String, String> positiveActiveSuffixes = {
      "Firestinger":
          "Increases Speed and Weapon Damage by 25% for the next 15 kills, detaches afterward.",
      "Lockfeeder": "Allows a Key to be reused, detaches after first use.",
      "Rotskin": "Earn Salvage from the next 3 kills, detaches afterwards.",
      "Scrapfeeder":
          "Allows a consumable to be reused, deatches after first use",
      "Shatterskin": "Survive a killing blow, detaches afterwards",
      "Silverskin": "Discounts one item by 30%, detaches afterwards.",
      "Wireseeker":
          "Prevents an upcoming Malfunction or removes an existing Malfunction once, detaches afterward.",
    };

    for (var negativeActivePrefix in negativeActivePrefixes.entries) {
      for (var positiveActiveSuffix in positiveActiveSuffixes.entries) {
        String parasiteName =
            "${negativeActivePrefix.key} ${positiveActiveSuffix.key}";
        Parasite parasite = Parasite(
          parasiteName,
          positiveActiveSuffix.value,
          negativeActivePrefix.value,
        );
        allparasites.add(parasite);
      }
    }
  }
}
