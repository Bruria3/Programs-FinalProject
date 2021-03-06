USE [master]
GO
/****** Object:  Database [TamarChadad_BruriaGreenwald_FinalProject]    Script Date: 20/05/2021 01:45:54 ******/
CREATE DATABASE [TamarChadad_BruriaGreenwald_FinalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TamarChadad_BruriaGreenwald_FinalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TamarChadad_BruriaGreenwald_FinalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TamarChadad_BruriaGreenwald_FinalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TamarChadad_BruriaGreenwald_FinalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TamarChadad_BruriaGreenwald_FinalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET RECOVERY FULL 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET  MULTI_USER 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TamarChadad_BruriaGreenwald_FinalProject', N'ON'
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET QUERY_STORE = OFF
GO
USE [TamarChadad_BruriaGreenwald_FinalProject]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [nvarchar](50) NOT NULL,
	[Cdescription] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](50) NOT NULL,
	[Fpath] [nvarchar](200) NOT NULL,
	[FtypeId] [int] NOT NULL,
	[FprogramId] [int] NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileType]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileType](
	[FTid] [int] IDENTITY(1,1) NOT NULL,
	[FTname] [nvarchar](50) NOT NULL,
	[FTdescription] [nvarchar](300) NULL,
 CONSTRAINT [PK_FileType] PRIMARY KEY CLUSTERED 
(
	[FTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [nvarchar](50) NOT NULL,
	[PcategoryId] [int] NOT NULL,
	[Pprice] [int] NOT NULL,
	[PextraPriceForAdditionalScreening] [int] NOT NULL,
	[PproductionDate] [date] NOT NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[RuserId] [int] NOT NULL,
	[RfromDate] [datetime] NOT NULL,
	[RtoDate] [datetime] NOT NULL,
	[Rprice] [int] NOT NULL,
	[Rpassword] [nvarchar](15) NOT NULL,
	[Ractive] [bit] NOT NULL,
	[RprogramId] [int] NOT NULL,
	[Rstatus] [bit] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Response]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Response](
	[RSid] [int] IDENTITY(1,1) NOT NULL,
	[RSprogramId] [int] NOT NULL,
	[RSuserId] [int] NOT NULL,
	[RSdescription] [nvarchar](max) NOT NULL,
	[RSshown] [bit] NOT NULL,
 CONSTRAINT [PK_Response] PRIMARY KEY CLUSTERED 
(
	[RSid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20/05/2021 01:45:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[UfirstName] [nvarchar](50) NOT NULL,
	[UlastName] [nvarchar](50) NOT NULL,
	[Uaddress] [nvarchar](50) NULL,
	[Uemail] [nvarchar](50) NOT NULL,
	[Uphone] [nvarchar](10) NOT NULL,
	[Upassword] [nvarchar](15) NOT NULL,
	[UuserName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 20/05/2021 01:45:55 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User]
(
	[UuserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_FileType] FOREIGN KEY([FtypeId])
REFERENCES [dbo].[FileType] ([FTid])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_FileType]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Program] FOREIGN KEY([FprogramId])
REFERENCES [dbo].[Program] ([Pid])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Program]
GO
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program_Category] FOREIGN KEY([PcategoryId])
REFERENCES [dbo].[Category] ([Cid])
GO
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program_Category]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Renting_Renting] FOREIGN KEY([RprogramId])
REFERENCES [dbo].[Program] ([Pid])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Renting_Renting]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_User] FOREIGN KEY([RuserId])
REFERENCES [dbo].[User] ([Uid])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Table_1_User]
GO
ALTER TABLE [dbo].[Response]  WITH CHECK ADD  CONSTRAINT [FK_Response_Response] FOREIGN KEY([RSprogramId])
REFERENCES [dbo].[Program] ([Pid])
GO
ALTER TABLE [dbo].[Response] CHECK CONSTRAINT [FK_Response_Response]
GO
ALTER TABLE [dbo].[Response]  WITH CHECK ADD  CONSTRAINT [FK_Response_User] FOREIGN KEY([RSuserId])
REFERENCES [dbo].[User] ([Uid])
GO
ALTER TABLE [dbo].[Response] CHECK CONSTRAINT [FK_Response_User]
GO
USE [master]
GO
ALTER DATABASE [TamarChadad_BruriaGreenwald_FinalProject] SET  READ_WRITE 
GO
