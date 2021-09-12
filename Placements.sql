select st.name
from students as st
join packages as pk
on st.id = pk.id
join friends as fr
on fr.id = st.id
join packages as pk2
on pk2.id = fr.friend_id
where pk.salary < pk2.salary
order by pk2.salary;