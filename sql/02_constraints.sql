ALTER TABLE Matches
ADD CONSTRAINT fk_matches_away_team
FOREIGN KEY (away_team_id)
REFERENCES Teams(id_team);

ALTER TABLE Matches
ADD CONSTRAINT fk_matches_home_team
FOREIGN KEY (home_team_id)
REFERENCES Teams(id_team);

ALTER TABLE Matches
ADD CONSTRAINT fk_matches_stadium
FOREIGN KEY (stadium_id)
REFERENCES Stadiums(id_stadium);
