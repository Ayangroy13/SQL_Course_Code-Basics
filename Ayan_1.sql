SELECT * FROM movies where imdb_rating<= 9;
select * from movies where release_year=2019;
select * from movies;
select * from movies where industry="bollywood" order by imdb_rating;
select min(imdb_rating) from movies where industry = "Hollywood"; 
select studio, count(*) as cnt  from movies group by studio order by cnt desc;
select industry, count(industry) as cnt, round(avg(imdb_rating),1) as avg_rating from movies group by industry;
select studio, count(studio) as cnt, round(avg(imdb_rating),1) as avg_rating from movies where studio!="" group by studio order by avg_rating desc;
select release_year, count(*) as cnt from movies group by release_year having cnt>2 order by cnt desc;