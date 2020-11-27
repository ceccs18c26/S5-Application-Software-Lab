use lab;

#1
CREATE TABLE Department(
    `Code` CHAR(5) PRIMARY KEY NOT NULL,
    `Title` VARCHAR(30),
    `Dept_name` VARCHAR(30) UNIQUE,
    `Dept_id` INT UNIQUE NOT NULL,
    `Salary` INT,
    CHECK (`Salary` > 2000 )
);

INSERT INTO Department(`Code`, `Title`, `Dept_name`, `Dept_id`,`Salary`) 
VALUES (CS015, "HOD", "Computer Science", 100, 50000);  

#2
CREATE TABLE Instructor(
    `Name` VARCHAR(50) NOT NULL,
    `Code` INT,
    `Id` INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(`Name`, `Code`, 'Id')
VALUES ("Dumbeldore", CS007, 200);


  
   
   
   
