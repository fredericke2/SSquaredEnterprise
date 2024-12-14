DECLARE @EmployeeId AS INT
DECLARE @RoleId AS INT

SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Jeffrey'
    AND LastName = 'Wells'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Director'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END

SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Victor'
    AND LastName = 'Atkins'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Director'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END

SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Kelli'
    AND LastName = 'Hamilton'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Director'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Adam'
    AND LastName = 'Braun'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'IT'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Adam'
    AND LastName = 'Braun'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Support'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Brian'
    AND LastName = 'Cruz'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Accounting'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Kristen'
    AND LastName = 'Floyd'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Analyst'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Kristen'
    AND LastName = 'Floyd'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Sales'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Lois'
    AND LastName = 'Martinez'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Support'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Michael'
    AND LastName = 'Lind'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Analyst'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Eric'
    AND LastName = 'Bay'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'IT'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Eric'
    AND LastName = 'Bay'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Sales'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END
    
SELECT @EmployeeId = Id
FROM Employee
WHERE FirstName = 'Brandon'
    AND LastName = 'Bay'

SELECT @RoleId = Id
FROM Role
WHERE RoleName = 'Sales'

IF NOT EXISTS (SELECT 1
    FROM EmployeeRole
    WHERe EmployeeId = @EmployeeId
    AND RoleId = @RoleId)
    BEGIN
        INSERT INTO EmployeeRole (EmployeeId, RoleId)
        VALUES (@EmployeeId, @RoleId)
    END