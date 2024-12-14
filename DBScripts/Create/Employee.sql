IF NOT EXISTS (
    SELECT 1 FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Employee')
BEGIN
    CREATE TABLE Employee
    (
        Id BIGINT Identity NOT NULL,
        EmployeeId VARCHAR(255) NOT NULL,
        FirstName VARCHAR(255) NOT NULL,
        LastName VARCHAR(255) NOT NULL,
        ManagerId BIGINT,
        CONSTRAINT PK_Employee PRIMARY KEY (Id),
        CONSTRAINT FK_Person_ManagerId FOREIGN KEY (ManagerId) REFERENCES Employee(Id)
    )
END