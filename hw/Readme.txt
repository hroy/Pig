Please find the below steps to compile and run the programs-

Q1. pig -x mapreduce hw3q1.pig
    hadoop fs -cat /user/hxr121830/HW3/out/1/part-r-00000
	
	206

Q2. pig -x mapreduce hw3q2.pig
    hadoop fs -cat /user/hxr121830/HW3/out/2/part-r-00000
	
	3883

Q3. pig -x mapreduce hw3q3.pig
    hadoop fs -cat /user/hxr121830/HW3/out/3/part-r-00000
	
	1000209

Q4. pig -x mapreduce hw3q4.pig
    hadoop fs -cat /user/hxr121830/HW3/out/4/part-m-00000
	
	3883

Q5. hive -f hw3q5.hive
    hadoop fs -cat /user/hxr121830/HW3/out/5/000000_0
	
	10

Q6. hive -f hw3q6.hive
    hadoop fs -cat /user/hxr121830/HW3/out/6/000000_0
	
	22

Q7. hive -f hw3q7.hive
    hadoop fs -cat /user/hxr121830/HW3/out/7/000000_0
	
	1277

Q8. hive -f hw3q8.hive

	1277
	1452
	1154

Q9. hive -f hw3q9.hive
    hadoop fs -cat /user/hxr121830/HW3/out/9/000000_0
	
	3883
	
Note-
For Q4 => myPigUDFs.jar 
For Q9 => myHiveUDFs.jar 