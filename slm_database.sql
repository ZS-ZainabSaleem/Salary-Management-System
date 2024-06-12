create database SalaryManagementSystem
Use SalaryManagementSystem
CREATE TABLE Department (
    DID int PRIMARY KEY,
    D_name varchar(255)
);
CREATE TABLE Employee (
    Employee_ID int PRIMARY KEY,
	Department_Id int,
    Employee_Name varchar(255),
	Gender varchar (255),
	Emp_Address varchar(255),
	City varchar (255),
    DateofBirth Date,
    Email varchar(255),
    Contact varchar(15),
    CNIC varchar(15),
    BankAccount varchar(20),
	Empoyee_Designation varchar(50),
	Salary decimal(10,2)
	FOREIGN KEY (Department_Id) REFERENCES Department(DID)
);

CREATE TABLE Deductions (
    Deduction_ID int PRIMARY KEY,
    Deduction_Type varchar(255),
    Deduction_Amount decimal(10, 2),
);
create Table DeductionEmployee(
    Deduction_employee_id int Primary key,
	Deduction_ID int,
	Employee_ID int,
	FOREIGN KEY (Deduction_ID) REFERENCES Deductions(Deduction_ID),
	FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Allowances (
    Allowance_ID int PRIMARY KEY,
    Allowance_Type varchar(255),
    Allowance_Amount decimal(10, 2),
);
create table AllowancesEmployee(
   Allowances_Employee_id int PRIMARY KEY,
   Allowance_ID int,
   Employee_ID int,
   FOREIGN KEY (Allowance_ID) REFERENCES Allowances(Allowance_ID) On DELETE CASCADE,
   FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID) On DELETE CASCADE
);
CREATE TABLE Payroll (
    Payroll_ID int PRIMARY KEY,
    Employee_ID int,
	payroll_month varchar(50),
	payroll_year int,
    Gross_Salary decimal(10, 2),
    Net_Salary decimal(10, 2),
	total_Deduction decimal(10,2),
	total_Allowances decimal(10,2),
	total_salary decimal(10,2),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
);

-- Insert dummy values into the Department table
-- Inserting into Department table
INSERT INTO Department (DID, D_name) VALUES
(1, 'Sales'),
(2, 'Operations'),
(3, 'IT');

-- Inserting into Employee table
INSERT INTO Employee (Employee_ID, Department_Id, Employee_Name, Gender, Emp_Address, City, DateofBirth, Email, Contact, CNIC, BankAccount, Empoyee_Designation, Salary) VALUES
(1, 1, 'Ali Khan','Male', '123 Main Street', 'Karachi', '1992-09-15', 'ali@example.com', '03121234567', '12345-6789012-3', '12345678901234567890', 'Manager', 60000.00),
(2, 1, 'Sana Ahmed','Female','456 Oak Avenue', 'Karachi', '1995-05-20', 'sana@example.com', '03211234567', '98765-4321098-7', '09876543210987654321', 'Assistant', 50000.00),
(3, 2, 'Ahmed Malik','Male','789 Pine Street', 'Lahore', '1988-11-10', 'ahmed@example.com', '03331234567', '33333-2222111-0', '33333333332222211110', 'Supervisor', 55000.00),
(4, 2, 'Hina Akhtar','Female','101 Maple Avenue', 'Lahore', '1990-04-25', 'hina@example.com', '03441234567', '44444-5555566-7', '44444777888555556667', 'Analyst', 52000.00),
(5, 3, 'Zubair Iqbal','Male', '202 Cedar Street', 'Islamabad', '1998-07-30', 'zubair@example.com', '03551234567', '66666-7777788-9', '66666777778877777889', 'Developer', 48000.00);


-- Inserting into Deductions table
INSERT INTO Deductions (Deduction_ID, Deduction_Type, Deduction_Amount) VALUES
(1, 'Tax', 2000.00),
(2, 'Insurance', 1500.00),
(3, 'Pension', 1000.00);

-- Inserting into DeductionEmployee table
INSERT INTO DeductionEmployee (Deduction_employee_id, Deduction_ID, Employee_ID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5);

-- Inserting into Allowances table
INSERT INTO Allowances (Allowance_ID, Allowance_Type, Allowance_Amount) VALUES
(1, 'Medical Allownaces', 3000.00),
(2, 'Travel Allowance', 2000.00);

-- Inserting into AllowancesEmployee table
INSERT INTO AllowancesEmployee (Allowances_Employee_id, Allowance_ID, Employee_ID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5);

-- Inserting into Payroll table
INSERT INTO Payroll (Payroll_ID, Employee_ID, payroll_month,payroll_year, Gross_Salary, Net_Salary, total_Deduction, total_Allowances, total_salary) VALUES
(1, 1, 'November', 2023, 60000.00, 55500.00, 4500.00, 7500.00, 60000.00),
(2, 2, 'November', 2023, 50000.00, 46000.00, 3500.00, 5000.00, 50000.00),
(3, 3, 'November', 2023, 55000.00, 50500.00, 4000.00, 4500.00, 55000.00),
(4, 4, 'November ',2023, 52000.00, 47000.00, 3000.00, 6000.00, 52000.00),
(5, 5, 'November', 2023, 48000.00, 43000.00, 3500.00, 5000.00, 48000.00);

----------------------------------------------------------------------------------
										--Employe--
----------------------------------------------------------------------------------
CREATE PROCEDURE InsertEmployee
    @Employee_ID INT,
    @Department_Id INT,
    @Employee_Name VARCHAR(255),
    @Gender VARCHAR(255),
    @Emp_Address VARCHAR(255),
    @City VARCHAR(255),
    @DateofBirth DATE,
    @Email VARCHAR(255),
    @Contact VARCHAR(15),
    @CNIC VARCHAR(15),
    @Empoyee_Designation VARCHAR(50),
    @Salary DECIMAL(10,2),
    @BankAccount VARCHAR(20)
AS
BEGIN
    INSERT INTO Employee (
        Employee_ID,Department_Id,Employee_Name,Gender,Emp_Address,City,DateofBirth,Email,Contact,CNIC,BankAccount,Empoyee_Designation,Salary
    )
    VALUES (
        @Employee_ID,
        @Department_Id,
        @Employee_Name,
        @Gender,
        @Emp_Address,
        @City,
        @DateofBirth,
        @Email,
        @Contact,
        @CNIC,
        @BankAccount,
        @Empoyee_Designation,
        @Salary
    )
END
CREATE PROCEDURE UpdateEmployee
    @Employee_ID INT,
    @Emp_Address VARCHAR(255),
    @City VARCHAR(255),
    @Email VARCHAR(255),
    @Contact VARCHAR(15),
    @Empoyee_Designation VARCHAR(50),
    @Salary DECIMAL(10,2),
    @BankAccount VARCHAR(20)
AS
BEGIN
    UPDATE Employee
    SET
        Emp_Address = @Emp_Address,
        City = @City,
        Email = @Email,
        Contact = @Contact,
        BankAccount = @BankAccount,
        Empoyee_Designation = @Empoyee_Designation,
        Salary = @Salary
    WHERE
        Employee_ID = @Employee_ID
END
---------------------------
CREATE PROCEDURE DeleteEmployee
    @Employee_ID INT
AS
BEGIN
    DELETE FROM Employee
    WHERE Employee_ID = @Employee_ID;
END
------------------
CREATE PROCEDURE GetEmployeeById
    @Employee_ID INT
AS
BEGIN
    SELECT
        Employee_ID,
        Department_Id,
        Employee_Name,
        Gender,
        Emp_Address,
        City,
        DateofBirth,
        Email,
        Contact,
        CNIC,
        BankAccount,
        Empoyee_Designation,
        Salary
    FROM
        Employee
    WHERE
        Employee_ID = @Employee_ID;
END
----------------------------------------------------------------------------------
										--Deductions--
----------------------------------------------------------------------------------
CREATE PROCEDURE InsertDeduction
	@Deduction_ID int,
    @Deduction_Type VARCHAR(255),
    @Deduction_Amount DECIMAL(10, 2)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Deductions (Deduction_ID,Deduction_Type, Deduction_Amount)
    VALUES (@Deduction_ID,@Deduction_Type, @Deduction_Amount);
END;
--------------------------------------
CREATE PROCEDURE UpdateDeduction
    @Deduction_ID INT,
    @Deduction_Type VARCHAR(255),
    @Deduction_Amount DECIMAL(10,2)
AS
BEGIN
    UPDATE Deductions
    SET
        Deduction_Type = @Deduction_Type,
        Deduction_Amount = @Deduction_Amount
    WHERE
        Deduction_ID = @Deduction_ID
END
-------------------------------
CREATE PROCEDURE DeleteDeduction
    @Deduction_ID INT
AS
BEGIN
    DELETE FROM Deductions
    WHERE Deduction_ID = @Deduction_ID;
END
------------------------------
CREATE PROCEDURE GetDeductionById
    @Deduction_ID INT
AS
BEGIN
    SELECT Deduction_ID, Deduction_Type, Deduction_Amount
    FROM Deductions
    WHERE Deduction_ID = @Deduction_ID;
END
-------------------------------------------------------------------------------
										--Allowances--
--------------------------------------------------------------------------------
CREATE PROCEDURE InsertAllowance
    @Allowance_ID INT,
    @Allowance_Type VARCHAR(255),
    @Allowance_Amount DECIMAL(10, 2)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Allowances (Allowance_ID, Allowance_Type, Allowance_Amount)
    VALUES (@Allowance_ID, @Allowance_Type, @Allowance_Amount);
END;
---------------------------------
CREATE PROCEDURE UpdateAllowance
    @Allowance_ID INT,
    @Allowance_Amount DECIMAL(10, 2)
AS
BEGIN
    UPDATE Allowances
    SET
        Allowance_Amount = @Allowance_Amount
    WHERE
        Allowance_ID = @Allowance_ID;
END;
-----------------------------------
CREATE PROCEDURE DeleteAllowance
    @Allowance_ID INT
AS
BEGIN
    DELETE FROM Allowances
    WHERE Allowance_ID = @Allowance_ID;
END;
-------------------------------------
CREATE PROCEDURE GetAllowanceById
    @Allowance_ID INT
AS
BEGIN
    SELECT Allowance_ID, Allowance_Type, Allowance_Amount
    FROM Allowances
    WHERE Allowance_ID = @Allowance_ID;
END;
----------------------------------------------------------------------------------
										--Department--
----------------------------------------------------------------------------------
CREATE PROCEDURE GetDepartmentById
    @Department_ID INT
AS
BEGIN
    SELECT DID, D_name
    FROM Department
    WHERE DID = @Department_ID;
END
--------------------------------
CREATE PROCEDURE InsertDepartment
    @DID INT,
    @D_name VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Department (DID, D_name)
    VALUES (@DID, @D_name);
END;
-------------------------
CREATE PROCEDURE DeleteDepartment
    @Department_ID INT
AS
BEGIN
    -- Delete the department
    DELETE FROM Department
    WHERE DID = @Department_ID;

	
END;
---------------------------------------------------------------------------------
ALTER TABLE Employee
DROP CONSTRAINT FK__Employee__Salary__571DF1D5;

ALTER TABLE Employee
ADD CONSTRAINT FK__Employee__Salary__571DF1D5
FOREIGN KEY (Department_Id) REFERENCES Department(DID)
ON DELETE CASCADE;

ALTER TABLE DeductionEmployee
DROP CONSTRAINT FK__Deduction__Emplo__787EE5A0;

ALTER TABLE DeductionEmployee
ADD CONSTRAINT FK__Deduction__Emplo__787EE5A0
FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
ON DELETE CASCADE;

ALTER TABLE DeductionEmployee
DROP CONSTRAINT FK__Deduction__Deduc__778AC167;
ALTER TABLE DeductionEmployee
ADD CONSTRAINT FK__Deduction__Deduc__778AC167
FOREIGN KEY (Deduction_ID) REFERENCES Deductions(Deduction_ID)
ON DELETE CASCADE;

-------------------------------------------------------------------------------
									--VIEWS--
--------------------------------------------------------------------------------
CREATE VIEW EmployeePayrollView AS
  SELECT e.Employee_ID, e.Employee_name, e.salary, p.payroll_month, p.payroll_year, d.D_name AS DepartmentName
  FROM Employee e
  JOIN Payroll p ON e.Employee_ID = p.Employee_ID
  JOIN Department d ON e.Department_id = d.DID;

CREATE VIEW EmployeeDeductionView AS
  SELECT empView.Employee_ID,SUM(d.Deduction_Amount) AS TotalDeduction
  FROM EmployeePayrollView empView
  LEFT JOIN DeductionEmployee d_emp ON d_emp.Employee_ID = empView.Employee_ID
  LEFT JOIN  Deductions d ON d_emp.Deduction_ID = d.Deduction_ID
  GROUP BY empView.Employee_ID

CREATE VIEW EmployeeAllowanceView AS
  SELECT empView.Employee_ID,SUM(a.Allowance_Amount) AS TotalAllowance
  FROM EmployeePayrollView empView
  LEFT JOIN AllowancesEmployee a_emp ON a_emp.Employee_ID = empView.Employee_ID
  LEFT JOIN  Allowances a ON a_emp.Allowance_ID = a.Allowance_ID
  GROUP BY empView.Employee_ID

CREATE VIEW CalculatGrossSalary AS
  SELECT Ea.Employee_ID,salary,(TotalAllowance+salary) AS GrossSalary
  FROM EmployeeAllowanceView Ea
  JOIN Employee e ON  e.Employee_ID =Ea.Employee_ID

CREATE VIEW CalculatNetSalary AS
  SELECT Ea.Employee_ID,GrossSalary,(GrossSalary-TotalDeduction) AS NetSalary
  FROM CalculatGrossSalary Ea
  JOIN EmployeeDeductionView Ed ON  Ed.Employee_ID =Ea.Employee_ID
 
 SELECT COUNT(*) AS TotalPayroll FROM Payroll

 SELECT TOP 1 * FROM Payroll ORDER BY Payroll_ID DESC;
 delete from Payroll where Payroll_ID>5

CREATE VIEW getaccount AS
 SELECT pay_View.Employee_ID,e.BankAccount 
 from Employee e
 join EmployeePayrollView pay_View
 on e.Employee_ID = pay_View.Employee_id

 CREATE VIEW getMedicalAllownce AS
 SELECT A.Allowance_Amount as medicalAmount,pay_View.Employee_ID
 from Allowances A
 JOIN AllowancesEmployee AE ON A.Allowance_ID=AE.Allowance_ID And A.Allowance_Type like '%Medical%'
 JOIN EmployeePayrollView pay_View ON pay_View.Employee_ID=AE.Employee_ID

 CREATE VIEW getTravelAllownce AS
 SELECT A.Allowance_Amount as travelAmount,pay_View.Employee_ID
 from Allowances A
 JOIN AllowancesEmployee AE ON A.Allowance_ID=AE.Allowance_ID And A.Allowance_Type like '%Travel%'
 JOIN EmployeePayrollView pay_View ON pay_View.Employee_ID=AE.Employee_ID

select* from EmployeeDeductionView
select* from EmployeeAllowanceView
select* from Allowances
select* from AllowancesEmployee
select* from CalculatGrossSalary
select* from CalculatNetSalary
select* from Payroll
select* from getaccount
select* from getMedicalAllownce
select* from getTravelAllownce

select* from Employee
select * from Department
select * from Deductions
select* from Payroll
select* from Allowances

