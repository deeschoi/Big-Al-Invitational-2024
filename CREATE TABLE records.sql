USE bigal;

CREATE TABLE records(
    EventNum 		INT 	        NOT NULL,
    EventName		VARCHAR(100)    NOT NULL,
    PoolRecord		VARCHAR(100)    NOT NULL,
    RecordSchool	CHAR(100),
    RecordDate		INT,
    D1A 		    VARCHAR(100),
    D1B 		    VARCHAR(100),
    FOREIGN KEY (EventNum) REFERENCES EventList(EventNum)
);

# Read data

SELECT * FROM records;
