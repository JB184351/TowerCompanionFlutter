class Stats {
  double weaponDamage;
  double protection;
  double profieiency;
  double altFireCooldown;

  Map<String, dynamic> toMap() => {
        'weaponDamage': weaponDamage,
        'protection': protection,
        'profieiency': profieiency,
        'altFireCooldown': altFireCooldown
      };

  Stats(this.weaponDamage, this.protection, this.profieiency,
      this.altFireCooldown);
}
