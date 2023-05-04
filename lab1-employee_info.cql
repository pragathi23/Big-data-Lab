
CREATE KEYSPACE Employee WITH REPLICATION ={ 'class':'SimpleStrategy', 'replication_factor':1};
use employee;


CREATE TABLE EmployeeInfo(Emp_Id int Primary Key, Emp_Name text,Designation text, Date_of_Joining timestamp, Salary double, Dept_Name text);

Begin Batch
INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (1,'a','CEO','2020-03-05',25500.50,'CSE')
INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (2,'b','HR','2021-04-15',5500.50,'CSE')
INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (3,'c','Manager','2020-05-25',55500.50,'IT')
Apply BATCH;

Begin Batch INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (1,'a','CEO','2020-03-05',25500.50,'CSE') INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (2,'b','HR','2021-04-15',5500.50,'CSE') INSERT INTO EmployeeInfo (Emp_Id,Emp_Name,Designation,Date_of_joining,Salary,Dept_Name) Values (3,'c','Manager','2020-05-25',55500.50,'IT') APPLY BATCH;

select * from EmployeeInfo;

update  employeeinfo SET emp_name = 'e' , dept_name = 'management' where emp_id = 1;

select * from EmployeeInfo;
