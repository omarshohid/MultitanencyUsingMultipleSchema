USE [master]
GO
/****** Object:  Database [Company1]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE DATABASE [Company1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Company1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Company1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Company1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Company1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Company1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Company1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Company1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Company1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Company1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Company1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Company1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Company1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Company1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Company1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Company1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Company1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Company1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Company1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Company1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Company1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Company1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Company1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Company1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Company1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Company1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Company1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Company1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Company1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Company1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Company1] SET  MULTI_USER 
GO
ALTER DATABASE [Company1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Company1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Company1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Company1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Company1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Company1]
GO
/****** Object:  Schema [Abc]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [Abc]
GO
/****** Object:  Schema [abcd]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [abcd]
GO
/****** Object:  Schema [angular]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [angular]
GO
/****** Object:  Schema [anindya]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [anindya]
GO
/****** Object:  Schema [ashiq]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [ashiq]
GO
/****** Object:  Schema [belayet]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [belayet]
GO
/****** Object:  Schema [Company1]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [Company1]
GO
/****** Object:  Schema [Company2]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [Company2]
GO
/****** Object:  Schema [shohid]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [shohid]
GO
/****** Object:  Schema [testschema]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [testschema]
GO
/****** Object:  Schema [TestTenant]    Script Date: 8/18/2019 10:29:20 AM ******/
CREATE SCHEMA [TestTenant]
GO
/****** Object:  Table [Abc].[__MigrationHistory]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Abc].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_Abc.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Abc].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Abc].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abc.Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [abcd].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [abcd].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [abcd].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [abcd].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [angular].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [angular].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [angular].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [angular].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [anindya].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [anindya].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [anindya].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [anindya].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ashiq].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ashiq].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [ashiq].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ashiq].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [belayet].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [belayet].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [belayet].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [belayet].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Company1].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Company1].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Company2].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Company2].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_JobCompany1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [shohid].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shohid].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [shohid].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shohid].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [TestTenant].[abc]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TestTenant].[abc](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [TestTenant].[Job]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TestTenant].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [Abc].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906250403548_InitialCreate', N'MultiTanenetWithMultipleDatabase.SystemDAL.DataContext', 0x1F8B0800000000000400CD57DB6EDB38107D5F60FF81E0D31648CD5C5E7603B985D74E8AECC64950A5ED332D8D6DA2BCA82415D8DFB60FFB49FB0B1DEA6E298E93B628167989A8993333876766E4FFFEF9377ABB51923C8075C2E8313D191D53023A31A9D0AB31CDFDF2F5EFF4ED9B5F7F892E52B5211F6BBBB360879EDA8DE9DAFBEC9C3197AC4171375222B1C699A51F2546319E1A767A7CFC073B3961801014B10889DEE7DA0B05C5033E4E8D4E20F3399773938274D539BE890B5472C315B88C2730A6F35C7A71CF3568F09F845F17CF998419F77CC11D8CE2ADF3A066936B4A265270CC3006B9A4846B6D3CF798FFF90707B1B746AFE20C0FB8BCDF6680764B2E1D54759DB7E6CF2DF1F83494C85AC71A2AC99D37EA858027671567ACEFFE4DCCD3865364F502D9F7DB5075C1EC98FE651694F4E39C4FA50D36CFE0BCBCB611C21C9143C6478D8C506DE1EF884CD124B730D6907BCBE511B9CB1752247FC3F6DE7C063DD6B994DD02B0047CB773804777D66460FDF63D2CABB2AE524AD8AE1FEB3B366E1D9FB2EA2BEDCF4E29B9C1E07C21A1D14787A1D81B0BEFB052CB3DA477DC7BB03A6040C1F0207A2F16F215FEA903A226B1ED2899F3CD35E8955F23F37C43C9A5D8405A9F54497CD002BB149DBCCD61374EC4DAFB1DDE3AF69AE70233AE7208D712CE60E31F9100764AA5025785DA2DA8C48CC1B715394ADAF865F38D0A7D3D9663934DDBF2ACECF97A36B03DC3219AF32C43BA3AC3A23A21713929A6AFE397B78A2A3158E21EE99826DB2612DE3F5F41EF2D86C64C2F8575BE163D25D3540DCCBADCEFE1B58ED4A1B7AFFB96EDDA38FC5F3A3C7F5A1677D4836E39BDC432158ABAA8189AECCAC931F02A063797DC3ED25B532373A5F7F5E753DE4DB774219AC3214EC47AC9F7896303E67AB3A27F0B4F09B86FD2446F84DC136C5489E7F0CA1BA8A934A104097A10695052798DA360308ABFC8A914586F6B30E75A2CC1F9729C52DC2EA7BDEDF8FFD954CCB9541E5E573F7D1D8840E8C1813FD8162FDA00FA81DB64CDED6F8A6F5E75C1BE77CA0F07D2C139BE6F8C97E21BD3C922C1B4CBF4BE67BE0FDB2062DDEFC368064EAC5A88F0B5A82109FA6A416B9B2BBD3435C5584D37A3DAA4770373F03C455226D68B254F3CBE4EC0B962117FE43247930BB580F44ADFE63ECBFDC439500BB9B3DB23F674FC6289EDE61CDD66E1C9FD8812304D8125C0ADFE3317326DF2BE1C2A701F44D047256BCC0A3F44106EB56D906E8C7E265045DF0C32D0A129EE416512C1DCAD8EF9037C4B6EF80D720D2B9E6CEB69B61FE4F045ECD21ECD045F59AE5C85D1FA87DF3C2CFCE879F315D25FDF93260D0000, N'6.1.3-40302')
SET IDENTITY_INSERT [angular].[Job] ON 

INSERT [angular].[Job] ([Id], [JobName]) VALUES (1, N'Software Engineer, Created by: angular@gmail.com')
SET IDENTITY_INSERT [angular].[Job] OFF
SET IDENTITY_INSERT [anindya].[Job] ON 

INSERT [anindya].[Job] ([Id], [JobName]) VALUES (1, N'Software Engineer, Created by: anindya@gmail.com')
SET IDENTITY_INSERT [anindya].[Job] OFF
SET IDENTITY_INSERT [belayet].[Job] ON 

INSERT [belayet].[Job] ([Id], [JobName]) VALUES (4, N'Software Engineer, Created by: belayet@gmail.com')
INSERT [belayet].[Job] ([Id], [JobName]) VALUES (5, N'Database Engineer, Created by: belayet@gmail.com')
SET IDENTITY_INSERT [belayet].[Job] OFF
SET IDENTITY_INSERT [Company1].[Job] ON 

INSERT [Company1].[Job] ([Id], [JobName]) VALUES (1, N'With Schema Company 1 Job 1')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (2, N'Company1 email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (3, N'Company1 email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (4, N'Company1 email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (5, N'Company1 email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (6, N'Company1 email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (7, N'Software Engineer, Created by: email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (8, N'Test, Created by: email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (9, N'Test Two, Created by: email@company1.com')
INSERT [Company1].[Job] ([Id], [JobName]) VALUES (10, N'Software Engineer, Created by: email@company1.com')
SET IDENTITY_INSERT [Company1].[Job] OFF
SET IDENTITY_INSERT [Company2].[Job] ON 

INSERT [Company2].[Job] ([Id], [JobName]) VALUES (1, N'With Schema Company 2 Job 1')
INSERT [Company2].[Job] ([Id], [JobName]) VALUES (2, N'Company2 email@company2.com')
INSERT [Company2].[Job] ([Id], [JobName]) VALUES (3, N'Company2 email@company2.com')
INSERT [Company2].[Job] ([Id], [JobName]) VALUES (4, N'Company2 email@company2.com')
INSERT [Company2].[Job] ([Id], [JobName]) VALUES (5, N'Company2 email@company2.com')
INSERT [Company2].[Job] ([Id], [JobName]) VALUES (6, N'Company2 email@company2.com')
SET IDENTITY_INSERT [Company2].[Job] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([Id], [JobName]) VALUES (1, N'Company 1 Job 1')
INSERT [dbo].[Job] ([Id], [JobName]) VALUES (2, N'Company 1 Job 2')
INSERT [dbo].[Job] ([Id], [JobName]) VALUES (3, N'Company 1 Job 3')
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [shohid].[Job] ON 

INSERT [shohid].[Job] ([Id], [JobName]) VALUES (1, N'Data Entry Operator, Created by: shohid@gmail.com')
INSERT [shohid].[Job] ([Id], [JobName]) VALUES (2, N'Software Engineer, Created by: shohid@gmail.com')
INSERT [shohid].[Job] ([Id], [JobName]) VALUES (3, N', Created by: shohid@gmail.com')
INSERT [shohid].[Job] ([Id], [JobName]) VALUES (4, N'Software Engineer-New, Created by: shohid@gmail.com')
INSERT [shohid].[Job] ([Id], [JobName]) VALUES (5, N', Created by: shohid@gmail.com')
INSERT [shohid].[Job] ([Id], [JobName]) VALUES (6, N'New Job, Created by: shohid@gmail.com')
SET IDENTITY_INSERT [shohid].[Job] OFF
/****** Object:  StoredProcedure [abcd].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [abcd].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM abcd.Job
END

GO
/****** Object:  StoredProcedure [abcd].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [abcd].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM abcd.Job
END

GO
/****** Object:  StoredProcedure [angular].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [angular].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM angular.Job
END

GO
/****** Object:  StoredProcedure [angular].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [angular].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM angular.Job
END

GO
/****** Object:  StoredProcedure [anindya].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [anindya].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM anindya.Job
END

GO
/****** Object:  StoredProcedure [anindya].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [anindya].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM anindya.Job
END

GO
/****** Object:  StoredProcedure [ashiq].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ashiq].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ashiq.Job
END

GO
/****** Object:  StoredProcedure [ashiq].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ashiq].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ashiq.Job
END

GO
/****** Object:  StoredProcedure [belayet].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [belayet].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM belayet.Job
END

GO
/****** Object:  StoredProcedure [belayet].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [belayet].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM belayet.Job
END

GO
/****** Object:  StoredProcedure [dbo].[CreateTenantSP]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC CreateTenantSP 'belayet','dbo'
-- =============================================
CREATE PROCEDURE [dbo].[CreateTenantSP]
	@toSchema nvarchar(max),
	@fromSchema nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE  @object_name nvarchar(max),@object_defination nvarchar(max)


DECLARE curSp CURSOR FAST_FORWARD READ_ONLY LOCAL FOR
    SELECT ROUTINE_NAME,ROUTINE_DEFINITION  FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE = 'PROCEDURE'  AND SPECIFIC_SCHEMA = @fromSchema AND ROUTINE_NAME NOT IN ( 'CreateTenantWithTable','CreateTenantSP') AND ROUTINE_NAME NOT LIKE 'sp_%'
OPEN curSp

FETCH NEXT FROM curSp INTO @object_name, @object_defination

WHILE @@FETCH_STATUS = 0 BEGIN

    DECLARE @SQL NVARCHAR(MAX) = ''
	DECLARE @DROPSQL NVARCHAR(MAX) = ''

	SELECT @DROPSQL = 'IF EXISTS ('+CHAR(13)+'      SELECT * FROM sys.objects 
	    WHERE object_id = OBJECT_ID(N'''+@toSchema+'.'+@object_name+''') AND type in (N''P'')'+CHAR(13)+'      )'
	+CHAR(13)+'       DROP PROCEDURE '+@toSchema+'.'+@object_name + CHAR(13)


SELECT @SQL = REPLACE(REPLACE(@object_defination,@object_name,@object_name),@fromSchema,@toSchema)+CHAR(13)+''

	PRINT @DROPSQL
	PRINT @SQL
	
	EXEC (@DROPSQL)
	EXEC (@SQL)
	SET @SQL = ''
	SET @DROPSQL= ''
FETCH NEXT FROM curSp INTO @object_name, @object_defination
END

CLOSE curSp
DEALLOCATE curSp
END

GO
/****** Object:  StoredProcedure [dbo].[CreateTenantWithTable]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC CreateTenantWithTable 'testschema', 'dbo'
-- =============================================
CREATE PROCEDURE [dbo].[CreateTenantWithTable]
	@toSchema nvarchar(max),
	@fromSchema nvarchar(max)
AS
BEGIN

	SET NOCOUNT ON;

-------- CREATE SCHEMA HERE ------
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = @toSchema)
BEGIN
EXEC('CREATE SCHEMA '+@toSchema)
END
---------------- END of Chreate Schema -----------------



---------- COPY ALL TABLES FROM Main Schema to newly created schema-----------------

DECLARE @object_id INT, @object_name SYSNAME

DECLARE cur CURSOR FAST_FORWARD READ_ONLY LOCAL FOR
    SELECT o.[object_id], '[' + s.name + '].[' + o.name + ']'
    FROM sys.objects o WITH (NOWAIT)
    JOIN sys.schemas s WITH (NOWAIT) ON o.[schema_id] = s.[schema_id]
    WHERE o.[type] = 'U' AND s.name = @fromSchema
        AND o.is_ms_shipped = 0
OPEN cur

FETCH NEXT FROM cur INTO @object_id, @object_name

WHILE @@FETCH_STATUS = 0 BEGIN

    DECLARE @SQL NVARCHAR(MAX) = ''

    ;WITH index_column AS 
    (
        SELECT 
              ic.[object_id]
            , ic.index_id
            , ic.is_descending_key
            , ic.is_included_column
            , c.name
        FROM sys.index_columns ic WITH (NOWAIT)
        JOIN sys.columns c WITH (NOWAIT) ON ic.[object_id] = c.[object_id] AND ic.column_id = c.column_id
        WHERE ic.[object_id] = @object_id
    ),
    fk_columns AS 
    (
         SELECT 
              k.constraint_object_id
            , cname = c.name
            , rcname = rc.name
        FROM sys.foreign_key_columns k WITH (NOWAIT)
        JOIN sys.columns rc WITH (NOWAIT) ON rc.[object_id] = k.referenced_object_id AND rc.column_id = k.referenced_column_id 
        JOIN sys.columns c WITH (NOWAIT) ON c.[object_id] = k.parent_object_id AND c.column_id = k.parent_column_id
        WHERE k.parent_object_id = @object_id
    )


    SELECT @SQL = 'IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'''+REPLACE(@object_name,@fromSchema,@toSchema)+''') AND type in (N''U''))

BEGIN CREATE TABLE ' + REPLACE(@object_name,@fromSchema,@toSchema) + CHAR(13) + '(' + CHAR(13) + STUFF((
        SELECT CHAR(9) + ', [' + c.name + '] ' + 
            CASE WHEN c.is_computed = 1
                THEN 'AS ' + cc.[definition] 
                ELSE UPPER(tp.name) + 
                    CASE WHEN tp.name IN ('varchar', 'char', 'varbinary', 'binary', 'text')
                           THEN '(' + CASE WHEN c.max_length = -1 THEN 'MAX' ELSE CAST(c.max_length AS VARCHAR(5)) END + ')'
                         WHEN tp.name IN ('nvarchar', 'nchar', 'ntext')
                           THEN '(' + CASE WHEN c.max_length = -1 THEN 'MAX' ELSE CAST(c.max_length / 2 AS VARCHAR(5)) END + ')'
                         WHEN tp.name IN ('datetime2', 'time2', 'datetimeoffset') 
                           THEN '(' + CAST(c.scale AS VARCHAR(5)) + ')'
                         WHEN tp.name = 'decimal' 
                           THEN '(' + CAST(c.[precision] AS VARCHAR(5)) + ',' + CAST(c.scale AS VARCHAR(5)) + ')'
                        ELSE ''
                    END +
                    CASE WHEN c.is_nullable = 1 THEN ' NULL' ELSE ' NOT NULL' END +
                    CASE WHEN dc.[definition] IS NOT NULL THEN ' DEFAULT' + dc.[definition] ELSE '' END + 
                    CASE WHEN ic.is_identity = 1 THEN ' IDENTITY(' + CAST(ISNULL(ic.seed_value, '0') AS CHAR(1)) + ',' + CAST(ISNULL(ic.increment_value, '1') AS CHAR(1)) + ')' ELSE '' END 
            END + CHAR(13)
        FROM sys.columns c WITH (NOWAIT)
        JOIN sys.types tp WITH (NOWAIT) ON c.user_type_id = tp.user_type_id
        LEFT JOIN sys.computed_columns cc WITH (NOWAIT) ON c.[object_id] = cc.[object_id] AND c.column_id = cc.column_id
        LEFT JOIN sys.default_constraints dc WITH (NOWAIT) ON c.default_object_id != 0 AND c.[object_id] = dc.parent_object_id AND c.column_id = dc.parent_column_id
        LEFT JOIN sys.identity_columns ic WITH (NOWAIT) ON c.is_identity = 1 AND c.[object_id] = ic.[object_id] AND c.column_id = ic.column_id
        WHERE c.[object_id] = @object_id
        ORDER BY c.column_id
        FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, CHAR(9) + ' ')
        + ISNULL((SELECT CHAR(9) + ', CONSTRAINT [' + k.name + '] PRIMARY KEY (' + 
                        (SELECT STUFF((
                             SELECT ', [' + c.name + '] ' + CASE WHEN ic.is_descending_key = 1 THEN 'DESC' ELSE 'ASC' END
                             FROM sys.index_columns ic WITH (NOWAIT)
                             JOIN sys.columns c WITH (NOWAIT) ON c.[object_id] = ic.[object_id] AND c.column_id = ic.column_id
                             WHERE ic.is_included_column = 0
                                 AND ic.[object_id] = k.parent_object_id 
                                 AND ic.index_id = k.unique_index_id     
                             FOR XML PATH(N''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, ''))
                + ')' + CHAR(13)
                FROM sys.key_constraints k WITH (NOWAIT)
                WHERE k.parent_object_id = @object_id 
                    AND k.[type] = 'PK'), '') + ')'  + CHAR(13)
        + ISNULL((SELECT (
            SELECT CHAR(13) +
                 'ALTER TABLE ' + REPLACE(@object_name,@fromSchema,@toSchema) + ' WITH' 
                + CASE WHEN fk.is_not_trusted = 1 
                    THEN ' NOCHECK' 
                    ELSE ' CHECK' 
                  END + 
                  ' ADD CONSTRAINT [' + fk.name  + '] FOREIGN KEY(' 
                  + STUFF((
                    SELECT ', [' + k.cname + ']'
                    FROM fk_columns k
                    WHERE k.constraint_object_id = fk.[object_id]
                    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '')
                   + ')' +
                  ' REFERENCES [' + SCHEMA_NAME(ro.[schema_id]) + '].[' + ro.name + '] ('
                  + STUFF((
                    SELECT ', [' + k.rcname + ']'
                    FROM fk_columns k
                    WHERE k.constraint_object_id = fk.[object_id]
                    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '')
                   + ')'
                + CASE 
                    WHEN fk.delete_referential_action = 1 THEN ' ON DELETE CASCADE' 
                    WHEN fk.delete_referential_action = 2 THEN ' ON DELETE SET NULL'
                    WHEN fk.delete_referential_action = 3 THEN ' ON DELETE SET DEFAULT' 
                    ELSE '' 
                  END
                + CASE 
                    WHEN fk.update_referential_action = 1 THEN ' ON UPDATE CASCADE'
                    WHEN fk.update_referential_action = 2 THEN ' ON UPDATE SET NULL'
                    WHEN fk.update_referential_action = 3 THEN ' ON UPDATE SET DEFAULT'  
                    ELSE '' 
                  END 
                + CHAR(13) + 'ALTER TABLE ' + REPLACE(@object_name,@fromSchema,@toSchema) + ' CHECK CONSTRAINT [' + fk.name  + ']' + CHAR(13)
            FROM sys.foreign_keys fk WITH (NOWAIT)
            JOIN sys.objects ro WITH (NOWAIT) ON ro.[object_id] = fk.referenced_object_id
            WHERE fk.parent_object_id = @object_id
            FOR XML PATH(N''), TYPE).value('.', 'NVARCHAR(MAX)')), '')
        + ISNULL(((SELECT
             CHAR(13) + 'CREATE' + CASE WHEN i.is_unique = 1 THEN ' UNIQUE' ELSE '' END 
                    + ' NONCLUSTERED INDEX [' + i.name + '] ON ' + REPLACE(@object_name,@fromSchema,@toSchema) + ' (' +
                    STUFF((
                    SELECT ', [' + c.name + ']' + CASE WHEN c.is_descending_key = 1 THEN ' DESC' ELSE ' ASC' END
                    FROM index_column c
                    WHERE c.is_included_column = 0
                        AND c.index_id = i.index_id
                    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') + ')'  
                    + ISNULL(CHAR(13) + 'INCLUDE (' + 
                        STUFF((
                        SELECT ', [' + c.name + ']'
                        FROM index_column c
                        WHERE c.is_included_column = 1
                            AND c.index_id = i.index_id
                        FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') + ')', '')  + CHAR(13)
            FROM sys.indexes i WITH (NOWAIT)
            WHERE i.[object_id] = @object_id
                AND i.is_primary_key = 0
                AND i.[type] = 2
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)')
        ), '') + CHAR(13) + 'END'

    PRINT @SQL
	EXEC (@SQL)

    FETCH NEXT FROM cur INTO @object_id, @object_name

END

CLOSE cur
DEALLOCATE cur

-------------- END of Copy tables-----------------------
END

GO
/****** Object:  StoredProcedure [dbo].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.Job
END

GO
/****** Object:  StoredProcedure [dbo].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.Job
END

GO
/****** Object:  StoredProcedure [shohid].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [shohid].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM shohid.Job
END

GO
/****** Object:  StoredProcedure [shohid].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [shohid].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM shohid.Job
END

GO
/****** Object:  StoredProcedure [TestTenant].[TestOne]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [TestTenant].[TestOne]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TestTenant.Job
END

GO
/****** Object:  StoredProcedure [TestTenant].[TestTwo]    Script Date: 8/18/2019 10:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [TestTenant].[TestTwo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TestTenant.Job
END

GO
USE [master]
GO
ALTER DATABASE [Company1] SET  READ_WRITE 
GO
