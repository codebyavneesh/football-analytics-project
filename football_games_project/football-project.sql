-- ============================================================
--  Football Database - MySQL Tables Creation Script
-- ============================================================

CREATE DATABASE IF NOT EXISTS football_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE football_db;

-- ── 1. CLUBS TABLE (clubNames.csv) ───────────────────────────
DROP TABLE IF EXISTS clubs;
CREATE TABLE clubs (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    Name  VARCHAR(150) NOT NULL,
    url   VARCHAR(500)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ── 2. NATIONALS TABLE (nationalNames.csv) ───────────────────
DROP TABLE IF EXISTS nationals;
CREATE TABLE nationals (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    Name  VARCHAR(150) NOT NULL,
    url   VARCHAR(500)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ── 3. PLAYER NAMES TABLE (playerNames.csv) ──────────────────
DROP TABLE IF EXISTS player_names;
CREATE TABLE player_names (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    Name  VARCHAR(150) NOT NULL,
    url   VARCHAR(500)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ── 4. GAMES TABLE (fullData.csv) ────────────────────────────
DROP TABLE IF EXISTS games;
CREATE TABLE games (
    Name                VARCHAR(150),
    Nationality         VARCHAR(100),
    National_Position   VARCHAR(10),
    National_Kit        INT,
    Club                VARCHAR(150),
    Club_Position       VARCHAR(10),
    Club_Kit            INT,
    Club_Joining        VARCHAR(20),
    Contract_Expiry     INT,
    Rating              INT,
    Height              VARCHAR(10),
    Weight              VARCHAR(10),
    Preffered_Foot      VARCHAR(10),
    Birth_Date          VARCHAR(20),
    Age                 INT,
    Preffered_Position  VARCHAR(10),
    Work_Rate           VARCHAR(30),
    Weak_foot           INT,
    Skill_Moves         INT,
    Ball_Control        INT,
    Dribbling           INT,
    Marking             INT,
    Sliding_Tackle      INT,
    Standing_Tackle     INT,
    Aggression          INT,
    Reactions           INT,
    Attacking_Position  INT,
    Interceptions       INT,
    Vision              INT,
    Composure           INT,
    Crossing            INT,
    Short_Pass          INT,
    Long_Pass           INT,
    Acceleration        INT,
    Speed               INT,
    Stamina             INT,
    Strength            INT,
    Balance             INT,
    Agility             INT,
    Jumping             INT,
    Heading             INT,
    Shot_Power          INT,
    Finishing           INT,
    Long_Shots          INT,
    Curve               INT,
    Freekick_Accuracy   INT,
    Penalties           INT,
    Volleys             INT,
    GK_Positioning      INT,
    GK_Diving           INT,
    GK_Kicking          INT,
    GK_Handling         INT,
    GK_Reflexes         INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
select * from fullData;
select * from player_names;
select * from nationals;
select * from clubs;
show tables;
SELECT 'Sabhi 4 tables successfully ban gaye!' AS Status;

-- Q16 Top 10 highest rated players nikaalo (Name, Club, Nationality, Rating) — SQL query 
SELECT 
    Name, Club, Nationality, MAX(rating) AS highest_rating
FROM
    fullData
GROUP BY Name , Club , Nationality
LIMIT 10;

-- Q17. Har club mein player count, avg Rating, avg Age nikalo — sirf 5+ players wale clubs (HAVING clause) 
SELECT 
    Club,
    COUNT(Name) AS total_player,
    ROUND(AVG(Rating), 2) AS avg_rating,
    ROUND(AVG(Age), 2) AS avg_age
FROM
    fullData
GROUP BY Club
HAVING total_player > 5
ORDER BY total_player DESC;

-- Q18. full_Data aur ClubNames ko JOIN karo — har player ka naam aur club URL nikalo 



-- Q19. Subquery: woh players jo apne club ki average rating se zyada rated hain 
select Name, Rating
from fullData f1
where Rating>(
select avg(rating) from fullData f2
where f1.club=f2.club
);

-- Q20. Top 5 nationalities jo sabse zyada 85+ rated players produce karti hain — SQL query 
select nationality, max(Rating) as rating_85
from fullData
group by nationality
having rating_85>85
limit 5;
















