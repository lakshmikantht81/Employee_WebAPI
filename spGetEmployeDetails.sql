IF EXISTS (SELECT * FROM sysobjects WHERE type = 'P' AND name = 'spGetEmployeDetails')
	BEGIN
		Print 'Dropping Procedure spGetEmployeDetails'
		DROP  Procedure  dbo.spGetEmployeDetails
	END
	
GO
PRINT 'Creating Procedure spGetEmployeDetails'
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure  dbo.spGetEmployeDetails
@PageNumber INT,
@PageSize INT

AS
BEGIN
	SET NOCOUNT ON
	
	SELECT * FROM EmployeeProfile
	ORDER BY EmpNo
	OFFSET (@PageNumber -1) * @PageSize ROWS
	FETCH NEXT @PageSize ROWS ONLY
	
END
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO 
