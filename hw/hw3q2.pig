-- loading data
A = LOAD '/HW_3_Data_bk/movies_new' using PigStorage(';') as (MOVIEID: chararray, TITLE: chararray, GENRE: chararray);
B = LOAD '/HW_3_Data_bk/ratings_new' using PigStorage(';') as (UserID: chararray, RatingMovieID: chararray, Rating: int, Timestamp: chararray);

-- applying cogroup
Q2 = cogroup  B by RatingMovieID, A by MOVIEID;
store Q2 into '/user/hxr121830/HW3/out/2';