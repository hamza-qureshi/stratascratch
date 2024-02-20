
/*

Lyft Driver Wages
https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=3

Difficulty: Easy

Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.

Tables:

<lyft_drivers>

| Column        | Data Type  |
|---------------|------------|
| index         | int        |
| start_date    | datetime   |
| end_date      | datetime   |
| yearly_salary | int        |


*/

select * 
from lyft_drivers
where yearly_salary <= 30000 OR yearly_salary >= 70000;
