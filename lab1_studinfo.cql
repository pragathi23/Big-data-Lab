

CREATE KEYSPACE Students WITH REPLICATION = {
'class':'SimpleStrategy',
'replication_factor':1};

describe keyspaces

use students;
CREATE TABLE Student_info(
RollNo int Primary Key,
StudName text,
DateofJoining timestamp,
LastExamPercent double,
);
CREATE TABLE Student_info( RollNo int Primary Key, StudName text, DateofJoining timestamp, LastExamPercent double, );
describe tables
describe table student_info;

BGEIN BATCH
INSERT INTO student_info(RollNo, StudName,DateofJoining,LastExamPercent) Values (1,'Michael Storm','2012-03-29',69.6)
INSERT INTO student_info(RollNo, StudName,DateofJoining,LastExamPercent) Values (2,'Stephen Fox','2013-02-27',72.5)
INSERT INTO student_info(RollNo, StudName,DateofJoining,LastExamPercent) Values (3,'David Fleming','2014-04-12',81.7)
INSERT INTO student_info(RollNo, StudName,DateofJoining,LastExamPercent) Values (4,'Ian String','2020-05-4',63.4)
APPLY BATCH;

SELECT * FROM Student_info;
describe tables
CREATE INDEX ON student_info(studname);
select * from student_info where studname='Stephen Fox';
create index on student_info(LLastExamPercent);
create index on student_info(LastExamPercent);
select * from student_info where lastexampercent = 81.7;
describe table student_info
UPDATE student_info SET rollno = 6 where rollno = 3;
UPDATE student_info SET studname = 'Vijay' where rollno = 3;
select * from student_info 
;
select * from student_info  ;
clear
exit
