IF EXISTS (SELECT * FROM sysobjects WHERE type = 'P' AND name = 'spAddEditEmployee')
	BEGIN
		Print 'Dropping Procedure spAddEditEmployee'
		DROP  Procedure  dbo.spAddEditEmployee
	END
	
GO
PRINT 'Creating Procedure spAddEditEmployee'
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure  dbo.spAddEditEmployee
@EmpNo INT,
@Name VARCHAR(50),
@PhoneNo VARCHAR(15),
@Email VARCHAR(50),
@Gender VARCHAR(6),
@Position VARCHAR(30),
@DOB DATETIME,
@Salary DECIMAL(9,2)

AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @EmpExist INT
	SET @EmpExist = (SELECT COUNT(EmpNo) FROM EmployeeProfile WHERE EmpNo = @EmpNo)
	
	IF(@EmpExist = 0)
	BEGIN
		INSERT INTO EmployeeProfile (EmpNo, Name, PhoneNO, Email, Gender, Position, DOB, Salary)
		VALUES(@EmpNo, @Name, @PhoneNo, @Email, @Gender, @Position, @DOB, @Salary)
	END
	ELSE
		UPDATE EmployeeProfile SET
		Name = @Name, 
		PhoneNO = @PhoneNo, 
		Email = @Email, 
		Gender = @Gender, 
		Position = @Position, 
		DOB = @DOB, 
		Salary = @Salary
		WHERE EmpNo = @EmpNo
	END
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO 
