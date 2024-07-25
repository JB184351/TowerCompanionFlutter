-- Create the Trait table
CREATE TABLE Trait (
    id INTEGER PRIMARY KEY,
    name TEXT,
    traitDescription TEXT
);

-- Create the AltFire table
CREATE TABLE AltFire (
    id INTEGER PRIMARY KEY,
    name TEXT,
    level INTEGER,
    altFireDescription TEXT
);

-- Create the Weapon table
CREATE TABLE Weapon (
    id INTEGER PRIMARY KEY,
    name TEXT,
    altFire_id INTEGER,
    trait_id INTEGER,
    FOREIGN KEY (altFire_id) REFERENCES AltFire(id),
    FOREIGN KEY (trait_id) REFERENCES Trait(id)
);

-- Create the Artifact table
CREATE TABLE Artifact (
    id INTEGER PRIMARY KEY,
    name TEXT,
    artifactDescription TEXT
);

-- Create the Parasite table
CREATE TABLE Parasite (
    id INTEGER PRIMARY KEY,
    name TEXT,
    positiveDescription TEXT,
    negativeDescription TEXT
);

-- Create the Stats table
CREATE TABLE Stats (
    id INTEGER PRIMARY KEY,
    weaponDamage REAL,
    protection REAL,
    proficiency REAL,
    altFireCooldown REAL
);

-- Create the Malfunction table
CREATE TABLE Malfunction (
    id INTEGER PRIMARY KEY,
    malfunctionDescription TEXT,
    conditionToRemove TEXT,
    malfunctionType TEXT
);

-- Create the Combat table
CREATE TABLE Combat (
    id INTEGER PRIMARY KEY,
    weakPointKills INTEGER,
    meleeKills INTEGER,
    hostilesEliminated INTEGER,
    malformedHostilesEliminated INTEGER
);

-- Create the Explorer table
CREATE TABLE Explorer (
    id INTEGER PRIMARY KEY,
    floorsCleared INTEGER,
    silphiumFound INTEGER,
    obolitesCollected INTEGER,
    calibratorsCollected INTEGER
);

-- Create the Skill table
CREATE TABLE Skill (
    id INTEGER PRIMARY KEY,
    perfectFloors INTEGER,
    consecutivePerfectFloors INTEGER,
    peakAdrenaline REAL,
    midairMelee INTEGER
);

-- Create the Objectives table
CREATE TABLE Objectives (
    id INTEGER PRIMARY KEY,
    pylioidsEliminated INTEGER,
    algosDefeated INTEGER,
    algosFinalFormedDefeated INTEGER,
    algosInfinityFormDefeated INTEGER
);

-- Create the TowerRun table
CREATE TABLE TowerRun (
    id INTEGER PRIMARY KEY,
    scoutName TEXT,
    score INTEGER,
    finalMultiplier REAL,
    averageMultiplier REAL,
    highestMultiplier REAL,
    phase INTEGER,
    room INTEGER,
    platform TEXT,
    dateStarted DATETIME,
    dateCompleted DATETIME,
    weapon_id INTEGER,
    stats_id INTEGER,
    combat_id INTEGER,
    explorer_id INTEGER,
    skill_id INTEGER,
    objectives_id INTEGER,
    FOREIGN KEY (weapon_id) REFERENCES Weapon(id),
    FOREIGN KEY (stats_id) REFERENCES Stats(id),
    FOREIGN KEY (combat_id) REFERENCES Combat(id),
    FOREIGN KEY (explorer_id) REFERENCES Explorer(id),
    FOREIGN KEY (skill_id) REFERENCES Skill(id),
    FOREIGN KEY (objectives_id) REFERENCES Objectives(id)
);
