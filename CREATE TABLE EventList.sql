USE bigal;

CREATE TABLE EventList (
	EventNum	INT 			NOT NULL,
    EventName	VARCHAR(100)	NOT NULL,
    PRIMARY KEY (EventNum)
);

# Read data

SELECT * FROM EventList;