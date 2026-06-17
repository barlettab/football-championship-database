```sql
-- Database Management System: PostgreSQL

CREATE TABLE Teams (
    id_team INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL UNIQUE,

    CONSTRAINT pk_teams PRIMARY KEY (id_team)
);

CREATE TABLE Stadiums (
    id_stadium INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,

    CONSTRAINT pk_stadiums PRIMARY KEY (id_stadium)
);

CREATE TABLE Matches (
    id_match INTEGER GENERATED ALWAYS AS IDENTITY,
    away_team_id INTEGER NOT NULL,
    home_team_id INTEGER NOT NULL,
    stadium_id INTEGER NOT NULL,
    match_date DATE NOT NULL,
    round INTEGER NOT NULL,
    away_goals INTEGER NOT NULL,
    home_goals INTEGER NOT NULL,

    CONSTRAINT pk_matches PRIMARY KEY (id_match),

    CONSTRAINT ck_different_teams
        CHECK (home_team_id <> away_team_id)
);
```
