SELECT * FROM ChampionshipRecord;
SELECT * FROM Coaches;
SELECT * FROM FIFA;
SELECT * FROM Location;
SELECT * FROM Player;
SELECT * FROM Stadium;
SELECT * FROM Team;
SELECT * FROM Winner;


//Q1: Show player name, position and team name if the player’s position is a Defender
	SELECT playerName, playerPosition, teamName
	FROM Player
	WHERE playerPosition = 'Defender';


//Q2: Show the team name and the year they won the Champion
	SELECT teamName, winningYear
	FROM Winner
	WHERE levelOfVictory = 'Champion';


//Q3: Show all from Team joint Player and arrange according to team name by alphabetical order
	SELECT *
	FROM Team NATURAL JOIN Player
	ORDER BY teamName;

	
//Q4: Show stadium name, seating capacity stadium type, country and city by using joints with condition stadium is outdoor and seating capacity is 30000 and above
	SELECT S.stadiumName, S.seatingCapacity, S.stadiumType, L.country, L.city
FROM Stadium S INNER JOIN Location L 
ON S.locationNo = L.locationNo
WHERE S.stadiumType = 'Outdoor' AND S.seatingCapacity >= 30000;


//Q5: Show the stadium name, seating capacity and stadium type where name has the word Park in it.
	SELECT stadiumName, seatingCapacity, stadiumType
	FROM Stadium 
	WHERE stadiumName LIKE '%Park%';	


//Q6:  Show coach name and coaching experience where coach of team Australia and Netherlands
SELECT C.coachName, C.coachExperience
FROM Coaches C
WHERE C.teamName IN (SELECT T.teamName
    			FROM Team T
    			WHERE T.teamName IN ('Australia', 'Netherlands')
);


//Q7: Show the stadium type and sum of the seating capacity for different stadium type
	SELECT stadiumType, SUM(seatingCapacity) as totalCapacity
FROM Stadium
GROUP BY stadiumType;


//Q8: Show team country and count the number of championships won and group by team country
	SELECT T.teamCountry, COUNT(*) as numChampionships
FROM Winner W INNER JOIN Team T 
ON W.teamName = T.teamName
GROUP BY T.teamCountry;

