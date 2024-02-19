
/*

Find all posts which were reacted to with a heart
https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=3

Difficulty: Easy

Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.

Tables:

<facebook_reactions>

| Column    | Data Type |
|-----------|-----------|
| poster    | int       |
| friend    | int       |
| reaction  | varchar   |
| date_day  | int       |
| post_id   | int       |

<facebook_posts>

| Column        | Data Type  |
|---------------|------------|
| post_id       | int        |
| poster        | int        |
| post_text     | varchar    |
| post_keywords | varchar    |
| post_date     | datetime   |


*/

select post.*
from facebook_reactions react  
  Join facebook_posts post ON
react.post_id = post.post_id
where reaction = "heart"
group by post_id;
