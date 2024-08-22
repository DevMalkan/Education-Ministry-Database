SET SEARCH_PATH TO "DDL";

SELECT * FROM "State";
SELECT * FROM "Region";
SELECT * FROM "Student";
SELECT * FROM "Teacher";
SELECT * FROM "School";
SELECT * FROM "College";
SELECT * FROM "Education_Minister_Serves";
SELECT * FROM "School_Phone_No";
SELECT * FROM "College_Phone_No";
SELECT * FROM "Student_Phone_No";
SELECT * FROM "Teacher_Subject";
SELECT * FROM "Student_Studies_School";
SELECT * FROM "Student_Studies_College";
SELECT * FROM "Teacher_Teaches_School";
SELECT * FROM "Teacher_Teaches_College";
SELECT * FROM "Address"

COPY "State"("S_ID", "Name") FROM 'D:\Admin\Downloads\State.csv' DELIMITER ',' CSV HEADER;
COPY "Region"("S_ID", "No_Of_Schools", "No_Of_Colleges", "No_Of_Students", "No_Of_Teachers", "Population", "Literacy_Rate") FROM 'D:\Admin\Downloads\Region.csv' DELIMITER ',' CSV HEADER;
COPY "Student"("Student_ID", "First_Name", "Last_Name", "Sex", "Standard", "DOB", "Type") FROM 'D:\Admin\Downloads\Student.csv' DELIMITER ',' CSV HEADER;
COPY "Teacher"("Teacher_ID", "First_Name", "Last_Name", "Salary", "Type", "DOB", "Sex") FROM 'D:\Admin\Downloads\Teacher.csv' DELIMITER ',' CSV HEADER;
COPY "School"("School_ID", "Name", "Type", "Date_Of_Establishment", "Fees", "No_Of_Teachers", "No_Of_Students", "Mid_Day_Meal") FROM 'D:\Admin\Downloads\School.csv' DELIMITER ',' CSV HEADER;
COPY "College"("College_ID", "Name", "Type", "Date_Of_Establishment", "Fees", "No_Of_Teachers", "No_Of_Students") FROM 'D:\Admin\Downloads\College.csv' DELIMITER ',' CSV HEADER;
COPY "Education_Minister_Serves"("Minister_ID", "First_Name", "Last_Name", "DOB", "Sex", "Prime_Minister", "Political_Party", "Start_Date", "End_Date", "Terms_Of_Service", "S_ID") FROM 'D:\Admin\Downloads\Education_Minister_Serves.csv' DELIMITER ',' CSV HEADER;
COPY "School_Phone_No"("School_ID", "Phone_No") FROM 'D:\Admin\Downloads\School_Phone_No.csv' DELIMITER ',' CSV HEADER;
COPY "College_Phone_No"("College_ID", "Phone_No") FROM 'D:\Admin\Downloads\College_Phone_No.csv' DELIMITER ',' CSV HEADER;
COPY "Student_Phone_No"("Student_ID", "Phone_No") FROM 'D:\Admin\Downloads\Student_Phone_No.csv' DELIMITER ',' CSV HEADER;
COPY "Teacher_Subject"("Teacher_ID", "Subject") FROM 'D:\Admin\Downloads\Teacher_Subject.csv' DELIMITER ',' CSV HEADER;
COPY "Student_Studies_School"("Student_ID", "School_ID") FROM 'D:\Admin\Downloads\Student_Studies_School.csv' DELIMITER ',' CSV HEADER;
COPY "Student_Studies_College"("Student_ID", "College_ID") FROM 'D:\Admin\Downloads\Student_Studies_College.csv' DELIMITER ',' CSV HEADER;
COPY "Teacher_Teaches_School"("Teacher_ID", "School_ID") FROM 'D:\Admin\Downloads\Teacher_Teaches_School.csv' DELIMITER ',' CSV HEADER;
COPY "Teacher_Teaches_College"("Teacher_ID", "College_ID") FROM 'D:\Admin\Downloads\Teacher_Teaches_College.csv' DELIMITER ',' CSV HEADER;
COPY "Address"("Type", "ID", "City", "S_ID", "Line_1") FROM 'D:\Admin\Downloads\Address.csv' DELIMITER ',' CSV HEADER;








