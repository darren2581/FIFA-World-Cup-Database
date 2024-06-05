//Procedure to get Team table
DELIMITER //
CREATE PROCEDURE GetAllTeams()
BEGIN
SELECT * FROM Team;
END //
DELIMITER ;
CALL GetAllTeams();


//Procedure to insert player
CREATE PROCEDURE InsNewPlayer(
	n varchar(50),
	p varchar(30),
	c varchar(35),
	t varchar(30)
)
COMMENT 'Insert new player into the table Player. '
INSERT INTO Player(playerName, playerPosition, playerNationality, teamName)
VALUES(n, p, c, t);
CALL InsNewPlayer('Darren Tan', 'Striker', 'Swedish', 'Sweden');
CALL InsNewPlayer('Foad Handsome', 'Defender', 'Brazilian', 'Brazil');
SELECT * FROM Player;


//Procedure to insert new championship record
DELIMITER //
CREATE PROCEDURE InsNewRecord(
g varchar(50),
s int,
y int,
t varchar(30)
)
COMMENT 'New Record has been added. '
BEGIN
DECLARE nextNo char(4);
SELECT IFNULL(MAX(recordNo) + 1, 'R001') INTO nextNo FROM ChampionshipRecord;
   		 INSERT INTO ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
    		VALUES (nextNo, g, s, y, t);
END //
DELIMITER ;
CALL InsNewRecord('Devon Wee', 8, 2027, 'USA');
CALL InsNewRecord('Serena Gomez', 10, 2031, 'Vietnam');
SELECT * FROM ChampionshipRecord
ORDER BY recordNo;


//Procedure to delete player
DELIMITER //
CREATE PROCEDURE DeletePlayer(
    	IN playerNameToDelete VARCHAR(50)
)
COMMENT 'Delete a player from the Player table.'
BEGIN
    		DELETE FROM Player
    		WHERE playerName = playerNameToDelete;
END //
DELIMITER ;
CALL DeletePlayer('Alexandra Popp');
SELECT * FROM Player;


//View to see top goal scorers details
CREATE VIEW Record AS
	SELECT topGoalScorers AS Player, goalsScored AS Goals, recordYear AS Year, C.teamName AS Team
	FROM ChampionshipRecord C JOIN Team T
	ON C.teamName = T.teamName;
SELECT Player, Goals, Year, Team
	FROM Record WHERE Team = 'USA';

