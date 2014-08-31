-- loading data
A = LOAD '/HW_3_Data_bk/movies_new' using PigStorage(';') as (MOVIEID: chararray, TITLE: chararray, GENRE: chararray);
B = LOAD '/HW_3_Data_bk/ratings_new' using PigStorage(';') as (UserID: chararray, RatingMovieID: chararray, Rating: int, Timestamp: chararray);

-- applying cogroup
C = cogroup  B by RatingMovieID, A by MOVIEID;
Q3 = foreach C generate flatten(B), flatten(A);
store Q3 into '/user/hxr121830/HW3/out/3';
