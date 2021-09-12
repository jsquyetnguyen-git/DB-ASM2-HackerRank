with sourceTbl as(
select *,row_number() over(partition by occupation order by name) as rownumber,
IIF(Occupation = 'Doctor',name,NULL) as Doctor,
IIF(Occupation = 'Professor',name,NULL) as Professor,
IIF(Occupation = 'Singer',name,NULL) as Singer,
IIF(Occupation = 'Actor',name,NULL) as Actor
From occupations)

select min(Doctor),min(Professor),min(Singer),min(Actor)
from sourceTbl
group by rownumber;