
/*

Find how many times each artist appeared on the Spotify ranking list
https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=3

Difficulty: Easy

Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.


Tables:

<spotify_worldwide_daily_song_ranking>

| Column    | Data Type  |
|-----------|------------|
| id        | int        |
| position  | int        |
| trackname | varchar    |
| artist    | varchar    |
| streams   | int        |
| url       | varchar    |
| date      | datetime   |
| region    | varchar    |


*/

select artist, count(*) from spotify_worldwide_daily_song_ranking
group by artist
order by count(*) DESC;
