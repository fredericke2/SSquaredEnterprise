
IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'Director')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('Director')
    END

IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'IT')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('IT')
    END

IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'Support')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('Support')
    END

IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'Accounting')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('Accounting')
    END

IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'Analyst')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('Analyst')
    END

IF NOT EXISTS (SELECT 1
    FROM Role
    WHERE RoleName = 'Sales')
    BEGIN
        INSERT INTO Role (RoleName)
        VALUES ('Sales')
    END