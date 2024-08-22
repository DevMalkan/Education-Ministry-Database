SET SEARCH_PATH TO "DDL";

SELECT * FROM "Education_Minister_Serves"
WHERE "Sex"='F';

SELECT * FROM "Education_Minister_Serves"
WHERE "Political_Party"='BJP';

SELECT * FROM "Region"
WHERE "Literacy_Rate"=(SELECT MAX("Literacy_Rate") FROM "Region");

SELECT * FROM "School"
WHERE "No_Of_Students"=(SELECT MAX("No_Of_Students") FROM "School")

SELECT * FROM "School"
WHERE "Fees">50000;

SELECT * FROM "School"
WHERE "Mid_Day_Meal"='true';

SELECT * FROM "School_Phone_No"
WHERE "School_ID"=50

SELECT * FROM "College_Phone_No"
WHERE "Phone_No"=81486022465;

SELECT * FROM "Student_Studies_School"
WHERE "Student_ID"=445;

SELECT * FROM "Teacher_Subject"
WHERE "Teacher_ID"=13

SELECT * FROM "Address"
WHERE "Type"='C';

SELECT * FROM "Teacher_Teaches_College"
WHERE "College_ID"=5;

