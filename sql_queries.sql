-- count number of Athlete for each country --
SELECT Country ,count(*) as Total_Athelete_count
FROM Athletes
GROUP BY Country
ORDER BY Total_Athelete_count DESC

-- calculate the number of athlete for each Discipline --
SELECT Discipline , Count(*) as count_of_Athlete
FROM Athletes
GROUP BY Discipline
ORDER BY count_of_Athlete DESC

-- calculate number of medals won by each country --
SELECT Team_Country ,
sum(Total) as T
FROM medals
GROUP by Team_Country
ORDER by T DESC

-- calculate the average number of entries for each gender by Discipline -- 
SELECT Discipline,
AVG(male) as avg_male,
AVG(female) as avg_female
from entriesgender
GROUP BY Discipline

-- calculate the number of Coaches for each country --
SELECT Country ,count(*) as _count
FROM Coaches
GROUP BY Country 
order by _count DESC
