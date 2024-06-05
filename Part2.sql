//Section A
//Create and use a database
CREATE DATABASE Assessment_21690848;
SHOW databases;	
USE Assessment_21690848;

//Create tables
CREATE TABLE Location (
	locationNo char(4) NOT NULL,
	locationID char(2) NOT NULL,
	city varchar(30),
	country varchar(35) NOT NULL,
	PRIMARY KEY (locationNo)
	);
	
CREATE TABLE Team (
	teamName varchar(30) NOT NULL,
	teamCountry varchar(30) NOT NULL,
	PRIMARY KEY (teamName)
	);
	
CREATE TABLE FIFA (
	fifaNo char(4) NOT NULL,
	year int NOT NULL,
	host varchar(50) NOT NULL,
	locationNo char(4),
	PRIMARY KEY (fifaNo),
	FOREIGN KEY (locationNo) REFERENCES Location(locationNo)
	);
	
CREATE TABLE Stadium (
	stadiumName varchar(35) NOT NULL,
	seatingCapacity int NOT NULL,
	stadiumType varchar(30),
	locationNo char(4),
	PRIMARY KEY (stadiumName),
	FOREIGN KEY (locationNo) REFERENCES Location(locationNo)
	);
	
CREATE TABLE Player (
	playerName  varchar(50) NOT NULL,
	playerPosition varchar(30),
	playerNationality varchar(35) NOT NULL,
	teamName varchar(30) ,
	PRIMARY KEY (playerName),
	FOREIGN KEY (teamName) REFERENCES Team(teamName)
	);
	
CREATE TABLE Coaches (
	coachName varchar(50) NOT NULL,
	coachExperience int,
	teamName varchar(30) ,
	PRIMARY KEY (coachName),
	FOREIGN KEY (teamName) REFERENCES Team(teamName)
	);
	
CREATE TABLE Winner (
	winNo char(4) NOT NULL,
	winningYear int NOT NULL,
	levelOfVictory varchar(30) NOT NULL,
	teamName varchar(30) ,
	PRIMARY KEY (winNo),
	FOREIGN KEY (teamName) REFERENCES Team(teamName)
	);
	
CREATE TABLE ChampionshipRecord (
	recordNo int NOT NULL,
	topGoalScorers varchar(50) NOT NULL,
	goalsScored int NOT NULL,
	recordYear int NOT NULL,
	teamName varchar(30),
	PRIMARY KEY (topGoalScorers),
	FOREIGN KEY (teamName) REFERENCES Team(teamName)
	);
		
SHOW tables;


//See description of tables
DESC ChampionshipRecord; 
DESC Coaches;
DESC FIFA;
DESC Location;
DESC Player;
DESC Stadium;
DESC Team;
DESC Winner;

//Section B
//Insert values into tables
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L001', 'AU', 'Brisbane', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L002', 'AU', 'Hindmarsh', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L003', 'AU', 'Melbourne', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L004', 'AU', 'Perth', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L005', 'AU', 'Sydney', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L006', 'AU', 'Sydney', 'Australia');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L007', 'NZ', 'Dunedin', 'New Zealand');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L008', 'NZ', 'Kingsland', 'New Zealand');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L009', 'NZ', 'Hamilton', 'New Zealand');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L010', 'NZ', 'Wellington', 'New Zealand');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L011', 'FR', 'Paris', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L012', 'FR', 'Rennes', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L013', 'FR', 'Reims', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L014', 'FR', 'Montpellier', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L015', 'FR', 'Lyon', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L016', 'FR', 'Nice', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L017', 'FR', 'Grenoble', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L018', 'FR', 'Valenciennes', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L019', 'FR', 'Le Havre', 'France');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L020', 'CA', 'Edmonton', 'Canada');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L021', 'CA', 'Vancouver', 'Canada');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L022', 'CA', 'Vancouver', 'Canada');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L023', 'CA', 'Edmonton', 'Canada');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L024', 'CA', 'Winnipeg', 'Canada');
INSERT INTO Location (locationNo, locationID, city, country) 
VALUES ('L025', 'CA', 'Ottawa', 'Canada');


INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Suncorp Stadium', 56851, 'Outdoor', 'L001');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Coopers Stadium', 13327, 'Outdoor', 'L002');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('AAMI Park', 28870, 'Outdoor', 'L003');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('HBF Park', 13932, 'Outdoor', 'L004');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Accor Stadium', 69314, 'Outdoor', 'L005');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Allianz Stadium', 38841, 'Outdoor', 'L006');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Forsyth Barr Stadium', 24243, 'Indoor', 'L007');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Eden Park', 40536, 'Outdoor', 'L008');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('FMG Stadium Waikato', 16271, 'Outdoor', 'L009');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Sky Stadium', 31089, 'Outdoor', 'L010');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Parc des Princes', 47929, 'Outdoor', 'L011');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Roazhon Park', 29778, 'Outdoor', 'L012');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade Auguste-Delaune', 21127, 'Outdoor', 'L013');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade de la Mosson', 32939, 'Outdoor', 'L014');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade de Lyon', 59186, 'Outdoor', 'L015');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade de Nice', 35100, 'Outdoor', 'L016');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade des Alpes', 20068, 'Outdoor', 'L017');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('State du Hainaut', 44043, 'Outdoor', 'L018');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Stade Oceane', 25178, 'Outdoor', 'L019');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Commomwealth Stadium', 56302, 'Outdoor', 'L020');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Olympic Stadium', 56320, 'Indoor', 'L021');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('BC Place', 54320, 'Indoor', 'L022');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Moncton Stadium', 25178, 'Outdoor', 'L023');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('Investors Group Field', 33422, 'Outdoor', 'L024');
INSERT INTO Stadium (stadiumName, seatingCapacity, stadiumType, locationNo)
VALUES ('TD Place Stadium', 24000, 'Outdoor', 'L025');


INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F001', 2023, 'Australis, New Zealand', 'L001');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F002', 2023, 'Australis, New Zealand', 'L002');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F003', 2023, 'Australis, New Zealand', 'L003');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F004', 2023, 'Australis, New Zealand', 'L004');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F005', 2023, 'Australis, New Zealand', 'L005');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F006', 2023, 'Australis, New Zealand', 'L006');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F007', 2023, 'Australis, New Zealand', 'L007');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F008', 2023, 'Australis, New Zealand', 'L008');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F009', 2023, 'Australis, New Zealand', 'L009');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F010', 2023, 'Australis, New Zealand', 'L010');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F011', 2019, 'France', 'L011');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F012', 2019, 'France', 'L012');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F013', 2019, 'France', 'L013');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F014', 2019, 'France', 'L014');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F015', 2019, 'France', 'L015');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F016', 2019, 'France', 'L016');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F017', 2019, 'France', 'L017');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F018', 2019, 'France', 'L018');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F019', 2019, 'France', 'L019');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F020', 2015, 'Canada', 'L020');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F021', 2015, 'Canada', 'L021');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F022', 2015, 'Canada', 'L022');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F023', 2015, 'Canada', 'L023');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F024', 2015, 'Canada', 'L024');
INSERT INTO FIFA (fifaNo, year, host, locationNo)
VALUES ('F025', 2015, 'Canada', 'L025');


INSERT INTO Team (teamName, teamCountry)
VALUES ('Argentina', 'ARG');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Australia', 'AUS');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Brazil', 'BRA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Canada', 'CAN');
INSERT INTO Team (teamName, teamCountry)
VALUES ('China PR', 'CHN');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Colombia', 'COL');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Costa Rica', 'CRC');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Denmark', 'DEN');
INSERT INTO Team (teamName, teamCountry)
VALUES ('England', 'ENG');
INSERT INTO Team (teamName, teamCountry)
VALUES ('France', 'FRA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Germany', 'GER');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Haiti', 'HAI');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Italy', 'ITA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Jamaica', 'JAM');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Japan', 'JPN');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Korea Republic', 'KOR');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Morocco', 'MAR');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Netherlands', 'NED');
INSERT INTO Team (teamName, teamCountry)
VALUES ('New Zealand', 'NZL');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Nigeria', 'NGA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Norway', 'NOR');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Panama', 'PAN');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Philippines', 'PHI');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Portugal', 'POR');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Republic of Ireland', 'IRL');
INSERT INTO Team (teamName, teamCountry)
VALUES ('South Africa', 'RSA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Spain', 'ESP');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Sweden', 'SWE');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Switzerland', 'SUI');
INSERT INTO Team (teamName, teamCountry)
VALUES ('USA', 'USA');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Vietnam', 'VIE');
INSERT INTO Team (teamName, teamCountry)
VALUES ('Zambia', 'ZAM');


INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (1, 'Hinata Miyazawa', 5, 2023, 'Japan');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (2, 'Alex Morgan', 6, 2019,  'USA');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (3, 'Megan Rapinoe', 6, 2019,  'USA');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (4, 'Carli Lloyd', 6, 2015,  'USA');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (5, 'Homare Sawa', 5, 2011,  'Japan');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES ('6', 'Marta', 7, 2007,  'Brazil');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (7, 'Birgit Prinz', 7, 2003, 'Germany');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (8, 'Sun Wen', 7, 1999,  'China PR');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (9, 'Sissi', 7, 1999,  'Brazil');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (10, 'Ann Kristin Aarones', 6, 1995,  'Norway');
INSERT into ChampionshipRecord (recordNo, topGoalScorers, goalsScored, recordYear, teamName)
VALUES (11, 'Michelle Akers', 10, 1991,  'USA');


INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W001', 2023, 'Champion', 'Spain');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W002', 2023, 'Runner up', 'England');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W003', 2019, 'Champion', 'USA');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W004', 2019, 'Runner up', 'Netherlands');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W005', 2015, 'Champion', 'USA');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W006', 2015, 'Runner up', 'Japan');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W007', 2011, 'Champion', 'Japan');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W008', 2011, 'Runner up', 'USA');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W009', 2007, 'Champion', 'Germany');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W010', 2007, 'Runner up', 'Brazil');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W011', 2003, 'Champion', 'Germany');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W012', 2003, 'Runner up', 'Sweden');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W013', 1999, 'Champion', 'USA');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W014', 1999, 'Runner up', 'China PR');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W015', 1995, 'Champion', 'Norway');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W016', 1995, 'Runner up', 'Germany');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W017', 1991, 'Champion', 'USA');
INSERT INTO Winner (winNo, winningYear, levelOfVictory, teamName)
VALUES ('W018', 1991, 'Runner up', 'Norway');


INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Olga Carmona', 'Left Back', 'Spanish', 'Spain');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Kosovare Asllani', 'Striker', 'Swedish', 'Sweden'); 
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Sam Kerr', 'Foward', 'Australian', 'Australia');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Stephanie Catley', 'Defender', 'Australian', 'Australia');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Millie Bright', 'Defender', 'English', 'England');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Esther Gonzalez', 'Striker', 'Spanish', 'Spain');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Saki Kumagai', 'Defender', 'Japanese', 'Japan');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Cataline Usme', 'Foward', 'Colombian', 'Colombia');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Maren Mjelde', 'Defender', 'Norwegian', 'Norway');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Alexandra Popp', 'Striker', 'German', 'Germany');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Rafaelle Souza', 'Defender', 'Brazilian', 'Brazil');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Ayumi Kaihori', 'Goal Keeper', 'Japanese', 'Japan');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Hope Solo', 'Goal Keeper', 'American', 'USA');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Rumi Utsugi', 'Midfielder', 'Japanese', 'Japan');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Enith Salon', 'Goal Keeper', 'Spanish', 'Spain');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Babett Peter', 'Defender', 'German', 'Germany');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Simone Laudehr', 'Midfielder', 'German', 'Germany');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Saskia Webber', 'Defender', 'American', 'USA');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Nia Kunzer', 'Defender', 'German', 'Germany');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Tone Haugen', 'Midfielder', 'Norwegian', 'Norway');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Reidun Seth', 'Goal Keeper', 'Norwegian', 'Norway');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Debbie Rademacher', 'Defender', 'American', 'USA');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Hege Riise', 'Midfielder', 'Norwegian', 'Norway');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Joy Fawcett', 'Defender', 'German', 'Germany');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Asuna Tanaka', 'Foward', 'Japanese', 'Japan');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Irene Guerrero', 'Foward', 'Spanish', 'Spain');
INSERT INTO Player (playerName, playerPosition, playerNationality, teamName)
VALUES ('Aitana Bonmati', 'Left Back', 'Spanish', 'Spain');


INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Tony Gustavsson', 21, 'Australia');
INSERT INTO Coaches (coachName, teamName)
VALUES ('German Portanova', 'Argentina');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Andries Jonker', 2, 'Netherlands');
INSERT INTO Coaches (coachName, teamName)
VALUES ('Nacho Quintana', 'Panama');
INSERT INTO Coaches (coachName, teamName)
VALUES ('Francisco Neto', 'Portugal');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Jill Ellis', 6, 'USA');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Anson Dorrance', 10, 'USA');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Even Pellerud', 3, 'Norway');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Jorge Vilda', 5, 'Spain');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Tony DiCicco', 6, 'USA');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Tina Theune-Meyer', 7, 'Germany');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Norio Sasaki', 9, 'Japan');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Silvia Neid', 5, 'Germany');
INSERT INTO Coaches (coachName, coachExperience, teamName)
VALUES ('Colin Bell', 6, 'Korea Republic');

