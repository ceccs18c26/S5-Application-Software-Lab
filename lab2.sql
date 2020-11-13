USE lab;

#1
CREATE TABLE EMPLOYEE(
	EmployeeCode CHAR(4) NOT NULL, 
    	EmployeeName VARCHAR(10) NOT NULL,
   	 Designation VARCHAR(30),
   	 DateOfBirth DATE,
   	 Salary NUMERIC,
  	  PRIMARY KEY(EmployeeCode)
);

#2
INSERT INTO EMPLOYEE (EmployeeCode, EmployeeName, Designation, DateOfBirth, Salary)
VALUES ('e1','Jonas','Manager','1985-04-09',95800),('e2','Scarlet','Analyst','1994-12-06',67400);

#3
SELECT * FROM EMPLOYEE;

#4
UPDATE EMPLOYEE
SET Salary = 75900
WHERE EmployeeCode = 'e2';


SELECT * FROM EMPLOYEE;

#5
DELETE FROM EMPLOYEE
WHERE EmployeeCode = 'e1';

SELECT * FROM EMPLOYEE;
