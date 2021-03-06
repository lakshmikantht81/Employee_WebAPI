SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON

CREATE TABLE [dbo].[EmployeeProfile](
	[EmpNo] [INT] NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[PhoneNo] [VARCHAR](15) NOT NULL,
	[Email] [VARCHAR] (50) NOT NULL,
	[Gender] [VARCHAR] (6) NOT NULL,
	[Position] [VARCHAR] (30) NOT NULL,
	[DOB] [DATETIME]  NOT NULL,
	[Salary] [DECIMAL] (9,2) NOT NULL,
CONSTRAINT [PK_EmpNo] PRIMARY KEY CLUSTERED 
([EmpNo]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING OFF

INSERT INTO EmployeeProfile (EmpNo, Name,PhoneNo, Email, Gender, Position, DOB, Salary)
VALUES
(1,'Mary Tan','0161234567','abc@gmail.com','Female','Senior Manager','25-Jan-1970',5000.00),
(2,'Aliasgar','+60161234568','xyz@yahoo.com','Male','Manager','02-Mar-1971',3500.00),
(3,'Justin Bieber','0161234569','abc2@gmail.com','Male','Manager','25-May-1972',3300.00),
(4,'Chow Yun Fatt','0161234570','xyz2@yahoo.com','Male','Engineer','13-Feb-1973',2800.00),
(5,'Angela Baby','0161234571','abc3@gmail.com','Female','Designer','08-Aug-1974',2700.00),
(6,'Mohd Rizal','+80161234569','xyz3@yahoo.com','Male','Engineer','23-Jan-1975',2500.00),
(7,'Ken Yoong','+50161234571','abc4@gmail.com','Male','Designer','31-Jan-1976',2550.00),
(8,'Willson Wong','+44161234533','xyz4@yahoo.com','Male','Senior Manager','28-Feb-1977',5500.00),
(9,'Vivian Chong','0161234575','abc5@gmail.com','Female','COO','25-Dec-1978',7000.00),
(10 ,'Shirley Tan Wai Ling','0161234576','xyz5@yahoo.com','Female','CEO','07-Jan-1979',8000.00),
(11,'Mary Tan 2','01612345672','abc9@gmail.com','Female','Senior Manager','25-Jan-1980',5000.00),
(12,'Aliasgar 2','+601612345682','xyz9@yahoo.com','Male','Manager','02-Mar-1981',3500.00),
(13,'Justin Bieber 2','1612345692','abc29@gmail.com','Male','Manager','25-May-1982',3300.00),
(14,'Chow Yun Fatt 2','01612345702','xyz29@yahoo.com','Male','Engineer','13-Feb-1983',2800.00),
(15,'Angela Baby 2','01612345712','abc39@gmail.com','Female','Designer','08-Aug-1984',2700.00),
(16,'Mohd Rizal 2','+801612345692','xyz39@yahoo.com','Male','Engineer','23-Jan-1985',2500.00),
(17,'Ken Yoong 2','+501612345712','abc49@gmail.com','Male','Designer','31-Jan-1986',2550.00),
(18,'Willson Wong 2','+441612345332','xyz49@yahoo.com','Male','Senior Manager','28-Feb-1987',5500.00),
(19,'Vivian Chong 2','01612345752','abc59@gmail.com','Female','CTO','25-Dec-1988',7000.00),
(20,'Shirley Tan Wai Ling 2','01612345762'	,'xyz59@yahoo.com','Female','СМО','07-Jan-1989',8000.00)
