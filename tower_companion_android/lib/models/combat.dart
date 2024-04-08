class Combat {
  int weakPointKills;
  int meleeKills;
  int hostilesEliminated;
  int malformedHostilesEliminated;

  Combat(
      {this.weakPointKills = 0,
      required this.meleeKills,
      required this.hostilesEliminated,
      required this.malformedHostilesEliminated});
}
