USE [master]
GO
/****** Object:  Database [ApplicationTier.Database]    Script Date: 22/02/2021 9:27:39 CH ******/
CREATE DATABASE [ApplicationTier.Database]

ALTER DATABASE [ApplicationTier.Database] SET COMPATIBILITY_LEVEL = 130
GO
ALTER DATABASE [ApplicationTier.Database] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET ARITHABORT ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ApplicationTier.Database] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ApplicationTier.Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ApplicationTier.Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ApplicationTier.Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET RECOVERY FULL 
GO
ALTER DATABASE [ApplicationTier.Database] SET  MULTI_USER 
GO
ALTER DATABASE [ApplicationTier.Database] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [ApplicationTier.Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ApplicationTier.Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ApplicationTier.Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ApplicationTier.Database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ApplicationTier.Database', N'ON'
GO
ALTER DATABASE [ApplicationTier.Database] SET QUERY_STORE = OFF
GO
USE [ApplicationTier.Database]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ApplicationTier.Database]
GO
/****** Object:  Table [dbo].[Work]    Script Date: 22/02/2021 9:27:40 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwWork]    Script Date: 22/02/2021 9:27:40 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwWork]
	AS 
	SELECT *
	FROM [dbo].[Work]
GO
SET IDENTITY_INSERT [dbo].[Work] ON 

INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (1, N'Real Estate', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (2, N'Construction', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (3, N'Education', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (4, N'Marketplace', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (5, N'Data Management', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (6, N'Procurement', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (7, N'Marketing', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (8, N'Recruitment', NULL)
INSERT [dbo].[Work] ([Id], [Name], [Description]) VALUES (9, N'ERP', NULL)
SET IDENTITY_INSERT [dbo].[Work] OFF
/****** Object:  StoredProcedure [dbo].[spGetWorks]    Script Date: 22/02/2021 9:27:40 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetWorks]
	@pId int = NULL
AS
	SELECT * FROM [dbo].[vwWork]
	WHERE Id = @pId OR @pId IS NULL
RETURN 0
GO
USE [master]
GO
ALTER DATABASE [ApplicationTier.Database] SET  READ_WRITE 
GO
