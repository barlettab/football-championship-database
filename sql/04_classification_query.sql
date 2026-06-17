/*
    Query responsible for generating the championship standings.

    The subquery uses UNION ALL to transform each match into two records:
    one representing the home team and the other representing the away team.
    For each record, the query calculates the points earned (3 for a win,
    1 for a draw, and 0 for a loss), as well as the number of victories,
    goals scored, and goals conceded.

    The results are then grouped by team to calculate:
    - total points;
    - matches played;
    - goal difference (goals scored - goals conceded);
    - total victories.

    Finally, the standings are sorted according to the competition rules:
    points, victories, and goal difference, all in descending order.
*/

SELECT
    t.name,
    SUM(r.points) AS points,
    COUNT(*) AS matches_played,
    SUM(r.goals_scored - r.goals_conceded) AS goal_difference,
    SUM(r.victories) AS victories

FROM Teams t
JOIN (

    SELECT
        home_team_id AS team_id,
        home_goals AS goals_scored,
        away_goals AS goals_conceded,

        CASE
            WHEN home_goals > away_goals THEN 3
            WHEN home_goals = away_goals THEN 1
            ELSE 0
        END AS points,

        CASE
            WHEN home_goals > away_goals THEN 1
            ELSE 0
        END AS victories

    FROM Matches

    UNION ALL

    SELECT
        away_team_id,
        away_goals,
        home_goals,

        CASE
            WHEN away_goals > home_goals THEN 3
            WHEN away_goals = home_goals THEN 1
            ELSE 0
        END,

        CASE
            WHEN away_goals > home_goals THEN 1
            ELSE 0
        END

    FROM Matches

) r
ON t.team_id = r.team_id

GROUP BY
    t.team_id,
    t.name

ORDER BY
    points DESC,
    victories DESC,
    goal_difference DESC;
