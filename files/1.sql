USE [AppDB]
GO
/****** Object:  Table [dbo].[CooperativeCourierData]    Script Date: 2020-10-20 10:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CooperativeCourierData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[ExpressCompanyId] [int] NULL,
	[CourierId] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[CollectionNum] [int] NULL,
	[LineOfCredit] [decimal](18, 0) NULL,
	[DefaultType] [int] NULL,
 CONSTRAINT [PK__Cooperat__3214EC27FAF81AA5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExpresscompanyData]    Script Date: 2020-10-20 10:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpresscompanyData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Remarks] [varchar](200) NULL,
 CONSTRAINT [PK__Expressc__3214EC27A99364AF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpressStaffData]    Script Date: 2020-10-20 10:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpressStaffData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[Name] [varchar](50) NULL,
	[PhoneNum] [varchar](50) NULL,
	[DefaultType] [int] NULL,
	[Remarks] [varchar](200) NULL,
 CONSTRAINT [PK__ExpressS__3214EC2772212A35] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RetentionTimeData]    Script Date: 2020-10-20 10:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RetentionTimeData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[ExpressCompanyId] [int] NULL,
	[RemainingPartsDays] [int] NULL,
 CONSTRAINT [PK__Retentio__3214EC27D487856D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
