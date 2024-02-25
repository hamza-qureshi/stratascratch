
/*

Find the base pay for Police Captains
https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=3

Difficulty: Easy

Find the base pay for Police Captains.
Output the employee name along with the corresponding base pay.

Tables:

<sf_public_salaries>

| Column           | Data Type  |
|------------------|------------|
| id               | int        |
| employeename     | varchar    |
| jobtitle         | varchar    |
| basepay          | float      |
| overtimepay      | float      |
| otherpay         | float      |
| benefits         | float      |
| totalpay         | float      |
| totalpaybenefits | float      |
| year             | int        |
| notes            | datetime   |
| agency           | varchar    |
| status   

*/

select employeename, basepay 
from sf_public_salaries
where jobtitle Like "%Police%";
