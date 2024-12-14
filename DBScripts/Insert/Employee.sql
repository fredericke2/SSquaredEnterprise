DECLARE @ManagerId AS INT = NULL

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Jeffrey'
    AND LastName = 'Wells')
    BEGIN
        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0001', 'Jeffrey', 'Wells', NULL)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Victor'
    AND LastName = 'Atkins')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Jeffrey'
            AND LastName = 'Wells'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0002', 'Victor', 'Atkins', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Kelli'
    AND LastName = 'Hamilton')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Jeffrey'
            AND LastName = 'Wells'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0003', 'Kelli', 'Hamilton', @ManagerId)
    END


IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Adam'
    AND LastName = 'Braun')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Victor'
            AND LastName = 'Atkins'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0004', 'Adam', 'Braun', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Brian'
    AND LastName = 'Cruz')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Victor'
            AND LastName = 'Atkins'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0005', 'Brian', 'Cruz', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Kristen'
    AND LastName = 'Floyd')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Victor'
            AND LastName = 'Atkins'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0006', 'Kristen', 'Floyd', @ManagerId)
    END
    
IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Lois'
    AND LastName = 'Martinez')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Kelli'
            AND LastName = 'Hamilton'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0007', 'Lois', 'Martinez', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Michael'
    AND LastName = 'Lind')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Kelli'
            AND LastName = 'Hamilton'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0008', 'Michael', 'Lind', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Eric'
    AND LastName = 'Bay')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Kelli'
            AND LastName = 'Hamilton'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0009', 'Eric', 'Bay', @ManagerId)
    END

IF NOT EXISTS (SELECT 1
    FROM Employee
    WHERe FirstName = 'Brandon'
    AND LastName = 'Young')
    BEGIN
        SELECT @ManagerId = Id
        FROM Employee
        WHERE FirstName = 'Kelli'
            AND LastName = 'Hamilton'


        INSERT INTO Employee (EmployeeId, FirstName, LastName, ManagerId)
        VALUES ('0010', 'Brandon', 'Young', @ManagerId)
    END