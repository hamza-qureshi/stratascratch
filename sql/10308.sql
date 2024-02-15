
/*

Salaries Differences
https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3


Difficulty: Easy

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

Tables:

<db_employee>

| Column        | Data Type |
|---------------|-----------|
| id            | int       |
| first_name    | varchar   |
| last_name     | varchar   |
| salary        | int       |
| department_id | int       |

<db_dept>

| Column      | Data Type |
|-------------|-----------|
| id          | int       |
| department  | varchar   |

*/

SELECT *,
MAX(CASE 
WHEN d.department = "marketing" Then e.salary
END) -
MAX(CASE 
WHEN d.department = "engineering" Then e.salary
END)

FROM db_employee e
JOIN 
db_dept d
ON
e.department_id = d.id
