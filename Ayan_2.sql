select
a.name, group_concat(m.title separator " : ") as movies,
count(m.title) as movie_cnt
from actors a
join movie_actor ma On ma.actor_id = a.actor_id
join movies m on m.movie_id = ma.movie_id
group by a.actor_id
order by movie_cnt desc;