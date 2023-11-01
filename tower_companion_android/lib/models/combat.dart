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

// Combat combat = Combat(3, 4, 0, 2);
// Combat combat = Combat(weakPointKills: weakPointKills, meleeKills: meleeKills, hostilesEliminated: hostilesEliminated, malformedHostilesEliminated: malformedHostilesEliminated);
// Combat combat = Combat(weakPointKills: 5, meleeKills: 3, hostilesEliminated: hostilesEliminated, malformedHostilesEliminated: malformedHostilesEliminated);
