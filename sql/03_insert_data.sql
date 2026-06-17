--- INSERTING DATA INTO THE TEAMS TABLE
INSERT INTO Teams (name) VALUES
('Manchester City'),
('Liverpool'),
('Arsenal'),
('Chelsea');

--- INSERTING DATA INTO THE STADIUMS TABLE
INSERT INTO Stadiums (name, city, state, country) VALUES
('Etihad Stadium', 'Manchester', 'England', 'United Kingdom'),
('Anfield', 'Liverpool', 'England', 'United Kingdom'),
('Emirates Stadium', 'London', 'England', 'United Kingdom'),
('Stamford Bridge', 'London', 'England', 'United Kingdom');

----- INSERTING DATA INTO THE MATCHES TABLE (12 MATCHES - 6 ROUNDS)

--- ROUND 1
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(2,1,1,'2026-08-01',1,1,2),   -- Manchester City 2 x 1 Liverpool
(4,3,3,'2026-08-02',1,0,0);   -- Arsenal 0 x 0 Chelsea

--- ROUND 2
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(3,1,1,'2026-08-08',2,1,3),   -- Manchester City 3 x 1 Arsenal
(4,2,2,'2026-08-09',2,1,2);   -- Liverpool 2 x 1 Chelsea

--- ROUND 3
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(4,1,1,'2026-08-15',3,1,2),   -- Manchester City 2 x 1 Chelsea
(3,2,2,'2026-08-16',3,0,2);   -- Liverpool 2 x 0 Arsenal

--- ROUND 4
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(1,2,2,'2026-08-22',4,2,1),   -- Liverpool 1 x 2 Manchester City
(3,4,4,'2026-08-23',4,1,3);   -- Chelsea 3 x 1 Arsenal

--- ROUND 5
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(1,3,3,'2026-08-29',5,4,0),   -- Arsenal 0 x 4 Manchester City
(2,4,4,'2026-08-30',5,2,2);   -- Chelsea 2 x 2 Liverpool

--- ROUND 6
INSERT INTO Matches (
    away_team_id,
    home_team_id,
    stadium_id,
    match_date,
    round,
    away_goals,
    home_goals
) VALUES
(1,4,4,'2026-09-05',6,2,2),   -- Chelsea 2 x 2 Manchester City
(2,3,3,'2026-09-06',6,1,0);   -- Arsenal 0 x 1 Liverpool
