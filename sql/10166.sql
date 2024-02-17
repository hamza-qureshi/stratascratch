
/*

Reviews of Hotel Arena
https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=3


Difficulty: Easy

Find the number of rows for each review score earned by 'Hotel Arena'. Output the hotel name (which should be 'Hotel Arena'), review score along with the corresponding number of rows with that score for the specified hotel.

Tables:

<hotel_reviews>

| Column                                      | Data Type                        |
|---------------------------------------------|----------------------------------|
| hotel_address                               | varchar                          |
| additional_number_of_scoring                | int                              |
| review_date                                 | datetime                         |
| average_score                               | float                            |
| hotel_name                                  | varchar                          |
| reviewer_nationality                        | varchar                          |
| negative_review                             | varchar                          |
| review_total_negative_word_counts           | int                              |
| total_number_of_reviews                     | int                              |
| positive_review                             | varchar                          |
| review_total_positive_word_counts           | int                              |
| total_number_of_reviews_reviewer_has_given  | int                              |
| reviewer_score                              | float                            |
| tags                                        | varchar                          |
| days_since_review                           | varchar                          |
| lat                                         | float                            |
| lng                                         | float                            |

*/

select hotel_name,reviewer_score, count(*)
from hotel_reviews
where hotel_name = "Hotel Arena"
group by reviewer_score
