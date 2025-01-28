CREATE TABLE results (
    EventNum	INT		NOT NULL,
    Placement	INT(50),
    Final	VARCHAR(100)	NOT NULL,
    PreTime	VARCHAR(100)	NOT NULL,
    FinalTime	VARCHAR(100)	NOT NULL,
    SwimcloudID	INT(50)		NOT NULL,
    FOREIGN KEY (SwimcloudID) REFERENCES swimmers(SwimcloudID),
    FOREIGN KEY (EventNum) REFERENCES records(EventNum)
);

# Read data

SELECT * FROM results;
