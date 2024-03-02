
/*

Average Salaries
https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3

Difficulty: Easy

Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.

Tables:

<employee>

| Column          | Data Type  |
|-----------------|------------|
| id              | int        |
| first_name      | varchar    |
| last_name       | varchar    |
| age             | int        |
| sex             | varchar    |
| employee_title  | varchar    |
| department      | varchar    |
| salary          | int        |
| target          | int        |
| bonus           | int        |
| email           | varchar    |
| city            | varchar    |
| address         | varchar    |
| manager_id      | int        |


*/

select department, first_name, salary,
avg(salary) OVER (partition by department)
from employee
