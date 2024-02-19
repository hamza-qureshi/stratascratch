
/*

Count the number of movies that Abigail Breslin nominated for oscar
https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=3

Difficulty: Easy

Count the number of movies that Abigail Breslin was nominated for an oscar.

Tables:

<oscar_nominees>

| Column   | Data Type  |
|----------|------------|
| year     | int        |
| category | varchar    |
| nominee  | varchar    |
| movie    | varchar    |
| winner   | bool       |
| id       | int        |
*/

select count(*)
from oscar_nominees
where nominee = "Abigail Breslin"
