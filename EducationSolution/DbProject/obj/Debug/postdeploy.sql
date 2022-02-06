IF EXISTS (
			SELECT * 
				FROM dbo.DeploymentScript
				WHERE Name = '01. PostDeploymentScript'
			)
	RETURN

SET IDENTITY_INSERT dbo.UserRole ON
INSERT INTO dbo.UserRole
	(Id, Name)
VALUES
	(1, 'User'),
	(2, 'Admin')
SET IDENTITY_INSERT dbo.UserRole OFF

UPDATE dbo.[User]
	SET 
		RoleId = IIF(Id % 2 = 0, 1, 2)

INSERT INTO dbo.DeploymentScript
	(Name)
VALUES
	('01. PostDeploymentScript')
GO
