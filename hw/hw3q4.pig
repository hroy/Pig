-- registering jar
REGISTER myPigUDFs.jar;

-- applying FORMAT_GENRE to genre
A = LOAD '/HW_3_Data_bk/movies_new' using PigStorage(';') as (MOVIEID: chararray, TITLE: chararray, GENRE: chararray);
Q4 = foreach A generate TITLE, FORMAT_GENRE(GENRE);
store Q4 into '/user/hxr121830/HW3/out/4';
