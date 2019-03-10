USE [HallUp]
GO

/****** Object:  Table [dbo].[Login]    Script Date: 03/07/2019 16:44:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Login](
	[Phone] [varchar](20) NOT NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [HallUp]
GO

/****** Object:  Table [dbo].[Tables]    Script Date: 03/07/2019 16:45:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tables](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Chairs] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HallUp]
GO

/****** Object:  Table [dbo].[Guests]    Script Date: 03/07/2019 16:45:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Guests](
	[Phone] [varchar](50) NULL,
	[FullName] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HallUp]
GO

/****** Object:  Table [dbo].[Payments]    Script Date: 03/07/2019 16:45:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Payments](
	[Phone] [varchar](50) NULL,
	[EventId] [varchar](50) NULL,
	[Total] [float] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [HallUp]
GO

/****** Object:  Table [dbo].[SMS]    Script Date: 03/07/2019 16:45:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SMS](
	[SmsId] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [HallUp]
GO

/****** Object:  Table [dbo].[Events]    Script Date: 03/07/2019 16:45:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[HallId] [int] NULL,
	[Benzog] [varchar](50) NULL,
	[Batzog] [varchar](50) NULL,
	[Date] [datetime] NULL,
	[Phone] [nchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [HallUp]
GO

/****** Object:  Table [dbo].[Arrivals]    Script Date: 03/07/2019 16:46:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Arrivals](
	[EventId] [int] NULL,
	[Phone] [nchar](20) NULL,
	[IsApproved] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HallUp]
GO

/****** Object:  Table [dbo].[Halls]    Script Date: 03/07/2019 16:46:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Halls](
	[HallId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Logo] [varchar](50) NULL,
	[Phone] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[HallId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HallUp]
GO

/****** Object:  Table [dbo].[Meal_Categories]    Script Date: 03/07/2019 16:46:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Meal_Categories](
	[CatId] [int] NOT NULL,
	[EventId] [int] NULL,
	[Name] [varchar](30) NULL,
	[Pic] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HallUp]
GO

/****** Object:  Table [dbo].[Event_Owners]    Script Date: 03/07/2019 16:46:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Event_Owners](
	[EventId] [int] NULL,
	[Owner] [varchar](50) NULL,
	[Phone] [nchar](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [HallUp]
GO

/****** Object:  Table [dbo].[Meals]    Script Date: 03/07/2019 16:46:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Meals](
	[MealId] [int] NOT NULL,
	[CatId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Pic] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MealId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO













