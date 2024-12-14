IF NOT EXISTS (
    SELECT 1 FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'EmployeeRole')
BEGIN
    CREATE TABLE EmployeeRole
    (
        Id BIGINT Identity NOT NULL,
        EmployeeId BIGINT NOT NULL,
        RoleId INT NOT NULL,
        CONSTRAINT PK_EmployeeRole PRIMARY KEY (Id),
        CONSTRAINT FK_EmployeeRole_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES Employee(Id),
        CONSTRAINT FK_EmployeeRole_RoleId FOREIGN KEY (RoleId) REFERENCES Role(Id)
    )
END