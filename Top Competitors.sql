select hk.hacker_id,hk.name
from submissions as sm
join hackers as hk
on sm.hacker_id = hk.hacker_id
join challenges as cl
on sm.challenge_id = cl.challenge_id
join difficulty as df
on df.difficulty_level = cl.difficulty_level

where df.difficulty_level = cl.difficulty_level and df.score = sm.score
group by hk.hacker_id, hk.name
having count(hk.hacker_id) > 1
order by count(hk.hacker_id) desc, hacker_id;