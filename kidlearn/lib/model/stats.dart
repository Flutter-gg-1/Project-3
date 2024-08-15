class Stats {
  int streak;
  int xp;
  LeagueMedal medal;
  int top3finishes;

  Stats({
    this.streak = 0,
    this.xp = 0,
    this.medal = LeagueMedal.bronze,
    this.top3finishes = 0,
  });
}

enum LeagueMedal { bronze, silver, gold }
