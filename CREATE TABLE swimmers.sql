USE bigal;

CREATE TABLE swimmers (
	School		CHAR(100) NOT NULL,
    SwimcloudID	INT(50) NOT NULL,
    LastName	CHAR(100) NOT NULL,
    FirstName	CHAR(100) NOT NULL,
    SEX			CHAR(1),
    Class		CHAR(2),
    City		CHAR(100),
    State		CHAR(10),
    Country		CHAR(3),
    PRIMARY KEY (SwimcloudID)
);

# Read data

SELECT * FROM swimmers;