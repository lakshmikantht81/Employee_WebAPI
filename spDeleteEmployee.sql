IF EXISTS (SELECT * FROM sysobjects WHERE type = 'P' AND name = 'spDeleteEmployee')
	BEGIN
		Print 'Dropping Procedure spDeleteEmployee'
		DROP  Procedure  dbo.spDeleteEmployee
	END
	
GO
PRINT 'Creating Procedure spDeleteEmployee'
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure  dbo.spDeleteEmployee
@EmpNo INT

AS
BEGIN
	SET NOCOUNT ON
	
	DELETE FROM EmployeeProfile WHERE EmpNo = @EmpNo
END
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO 