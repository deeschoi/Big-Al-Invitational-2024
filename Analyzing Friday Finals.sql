USE bigal;

# 1. List swimmers in alphabetical order by school, with schools arranged alphabetically. 
# 	 Within each school, list all women first, followed by men, both sorted alphabetically.
SELECT * FROM swimmers
ORDER BY School,
	SEX DESC,
	LastName ASC;

# 2. Count the number of swimmers from each school.
SELECT 
	School, COUNT(*) as "Swimmer Count"
FROM swimmers
GROUP BY School
	ORDER BY School ASC;

# 3. Display swimmers from Pennsylvania women's team in alphabetical order and display count at the top.
SELECT 
    COUNT(*) AS "Count",
    NULL AS "Penn Women"
FROM swimmers
WHERE SEX = "W" AND School = "Pennsylvania"
UNION ALL
SELECT
	NULL AS "Count",
    CONCAT(LastName, ", ", FirstName) AS "Penn Women"
FROM swimmers
WHERE SEX = "W" AND School = "Pennsylvania"
ORDER BY `Penn Women`;

# 4. Count the number of swimmers from each state in the US. List them from states with the highest to lowest frequency
SELECT
	State, 
    COUNT(*) as "# of Swimmers"
FROM swimmers
WHERE Country = "USA"
GROUP BY State
ORDER BY `# of Swimmers` DESC;

# 5. Display only international swimmers and what events they swam on Friday in alphabetical order.
#	 List the women first, then men.
SELECT	
	swimmers.School,
	CONCAT(swimmers.LastName, ", ", swimmers.FirstName) AS "Name",
	EventList.EventName AS "Event Name", 
	swimmers.SEX,
    swimmers.Country
FROM swimmers
JOIN results
ON swimmers.SwimcloudID = results.SwimcloudID
JOIN EventList
ON results.EventNum = EventList.EventNum
WHERE Country != "USA"
ORDER BY SEX DESC,
LastName;

# 6. Read results for only men's events.
SELECT 
    EventList.EventNum AS "Event #",
    CONCAT("Event: ",EventList.EventName) AS "Event",
    NULL AS Final,
    NULL AS Placement,
    NULL AS "Name",
    NULL AS School,
    NULL AS "Prelims Time",
    NULL AS "Finals Time"
FROM EventList
WHERE EventList.EventNum % 2 = 0 
UNION ALL
SELECT 
    results.EventNum AS "Event #",
    NULL AS "Event",
    results.Final,
    results.Placement,
    CONCAT(swimmers.FirstName, " ", swimmers.LastName) AS "Name",
    swimmers.School,
    results.PreTime AS "Prelims Time",
    results.FinalTime AS "Finals Time"
FROM results
JOIN swimmers
ON results.SwimcloudID = swimmers.SwimcloudID
JOIN EventList
ON results.EventNum = EventList.EventNum
WHERE EventList.EventNum % 2 = 0
ORDER BY `Event #`, Final, Placement;

# 7. Show any swimmers that broke a record and the time that they went
SELECT
	CONCAT(swimmers.FirstName, " ", swimmers.LastName) AS "Name",
	EventList.EventName,
    results.FinalTime AS "New Pool Record",
    records.PoolRecord AS "Old Pool Record"
FROM swimmers
JOIN results
ON swimmers.SwimcloudID = results.SwimCloudID
JOIN EventList
ON results.EventNum = EventList.EventNum
JOIN records
ON results.EventNum = records.EventNum
WHERE results.FinalTime < records.PoolRecord
ORDER BY EventList.EventName, results.FinalTime; 	# No pool records were broken at this meet
	
	# Use query below to test if question 6 works:
		UPDATE results
		SET FinalTime = "04:35.00"
		WHERE SwimcloudID = 1335949;
	# Revert result back to normal after testing:
		UPDATE results
		SET FinalTime = "04:41.61"
		WHERE SwimcloudID = 1335949;

# 8. Display swimmers that got either a 'Division I A' or 'Division I B' time achievement
# 	 State the specific event, swimmer name, school, country, and time as well
SELECT
	EventList.EventName AS "Event Name", 
	CONCAT(swimmers.FirstName, " ", swimmers.LastName) AS "Name",
	swimmers.School,
    swimmers.SEX,
    swimmers.Country,
    results.FinalTime, 
    CASE
        WHEN results.FinalTime <= records.D1A THEN 'D1A' 
        WHEN results.FinalTime <= records.D1B THEN 'D1B'
    END AS "Record Classification"
FROM swimmers
JOIN results
    ON swimmers.SwimcloudID = results.SwimcloudID
JOIN EventList
    ON results.EventNum = EventList.EventNum
JOIN records
    ON EventList.EventNum = records.EventNum
WHERE results.FinalTime <= records.D1A OR results.FinalTime <= records.D1B
ORDER BY EventList.EventNum;