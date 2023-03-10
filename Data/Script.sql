USE [master]
GO
/****** Object:  Database [DrunkDriving]    Script Date: 10-06-2022 13:53:17 ******/
CREATE DATABASE [DrunkDriving]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DrunkDriving', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DrunkDriving.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DrunkDriving_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DrunkDriving_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DrunkDriving] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DrunkDriving].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DrunkDriving] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DrunkDriving] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DrunkDriving] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DrunkDriving] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DrunkDriving] SET ARITHABORT OFF 
GO
ALTER DATABASE [DrunkDriving] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DrunkDriving] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DrunkDriving] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DrunkDriving] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DrunkDriving] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DrunkDriving] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DrunkDriving] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DrunkDriving] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DrunkDriving] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DrunkDriving] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DrunkDriving] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DrunkDriving] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DrunkDriving] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DrunkDriving] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DrunkDriving] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DrunkDriving] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DrunkDriving] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DrunkDriving] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DrunkDriving] SET  MULTI_USER 
GO
ALTER DATABASE [DrunkDriving] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DrunkDriving] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DrunkDriving] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DrunkDriving] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DrunkDriving] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DrunkDriving] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DrunkDriving] SET QUERY_STORE = OFF
GO
USE [DrunkDriving]
GO
/****** Object:  Table [dbo].[BarRegister]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarRegister](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RestName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Nid] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [varchar](50) NULL,
	[Message] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Nid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PoliceLogin]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoliceLogin](
	[Id] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDrinks]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDrinks](
	[Did] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [varchar](50) NOT NULL,
	[Uname] [varchar](50) NOT NULL,
	[AlcoholQty] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Time] [varchar](50) NULL,
	[DrinkName] [varchar](100) NULL,
	[Restaurant] [varchar](50) NULL,
 CONSTRAINT [PK_UserDrinks] PRIMARY KEY CLUSTERED 
(
	[Did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegister]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegister](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Weight] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warnings]    Script Date: 10-06-2022 13:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warnings](
	[Wid] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [varchar](50) NOT NULL,
	[Uname] [varchar](50) NOT NULL,
	[BAC] [varchar](50) NOT NULL,
	[AlcoholQty] [varchar](50) NOT NULL,
	[Warning] [varchar](max) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Time] [varchar](50) NULL,
	[Restaurant] [varchar](50) NULL,
 CONSTRAINT [PK_Warnings] PRIMARY KEY CLUSTERED 
(
	[Wid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BarRegister] ([Id], [Name], [Address], [MobileNo], [Password], [RestName]) VALUES (N'1000', N'Bar Admin', N'Mumbai', N'9632587412', N'12345', N'Sai Restaurants')
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([Nid], [Uid], [Message], [Status], [Date], [Time]) VALUES (1, N'100', N'You have receive new Warning', N'Unseen', N'10-06-2022', N'12:57')
INSERT [dbo].[Notification] ([Nid], [Uid], [Message], [Status], [Date], [Time]) VALUES (2, N'101', N'You have receive new Warning', N'Seen', N'10-06-2022', N'12:58')
INSERT [dbo].[Notification] ([Nid], [Uid], [Message], [Status], [Date], [Time]) VALUES (3, N'102', N'You have receive new Warning', N'Unseen', N'10-06-2022', N'13:06')
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
INSERT [dbo].[PoliceLogin] ([Id], [Password]) VALUES (N'police', N'police')
GO
SET IDENTITY_INSERT [dbo].[UserDrinks] ON 

INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (1, N'100', N'Admin', N'30', N'08-06-2022', N'11:46 AM', N'Vodka', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (2, N'100', N'Admin', N'50', N'08-06-2022', N'11:47 AM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (3, N'101', N'user', N'30', N'08-06-2022', N'05:51 PM', N'Whiskey', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (4, N'101', N'user', N'30', N'08-06-2022', N'05:53 PM', N'Whiskey', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (5, N'101', N'user', N'30', N'08-06-2022', N'05:57 PM', N'Whiskey', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (6, N'101', N'user', N'30', N'08-06-2022', N'06:05 PM', N'Whiskey', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (7, N'100', N'Admin', N'30', N'08-06-2022', N'06:05 PM', N'Whiskey', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (8, N'100', N'Admin', N'30', N'10-06-2022', N'12:52 PM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (9, N'100', N'Admin', N'30', N'10-06-2022', N'12:53 PM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (10, N'100', N'Admin', N'30', N'10-06-2022', N'12:54 PM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (11, N'101', N'user', N'30', N'10-06-2022', N'12:56 PM', N'Vodka', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (12, N'101', N'user', N'30', N'10-06-2022', N'12:56 PM', N'Vodka', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (13, N'101', N'user', N'30', N'10-06-2022', N'12:57 PM', N'Vodka', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (14, N'102', N'John', N'30', N'10-06-2022', N'01:02 PM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (15, N'102', N'John', N'30', N'10-06-2022', N'01:02 PM', N'Beer', N'Sai Restaurants')
INSERT [dbo].[UserDrinks] ([Did], [Uid], [Uname], [AlcoholQty], [Date], [Time], [DrinkName], [Restaurant]) VALUES (16, N'102', N'John', N'30', N'10-06-2022', N'01:02 PM', N'Beer', N'Sai Restaurants')
SET IDENTITY_INSERT [dbo].[UserDrinks] OFF
GO
INSERT [dbo].[UserRegister] ([Id], [Name], [Address], [MobileNo], [Weight], [Gender], [Password]) VALUES (N'100', N'Admin', N'Mumbai', N'9874563215', N'62', N'Male', N'1234')
INSERT [dbo].[UserRegister] ([Id], [Name], [Address], [MobileNo], [Weight], [Gender], [Password]) VALUES (N'101', N'user', N'Mumbai', N'9874563245', N'56', N'Female', N'1234')
INSERT [dbo].[UserRegister] ([Id], [Name], [Address], [MobileNo], [Weight], [Gender], [Password]) VALUES (N'102', N'John', N'Mumbai', N'9852147631', N'75', N'Male', N'1234')
GO
SET IDENTITY_INSERT [dbo].[Warnings] ON 

INSERT [dbo].[Warnings] ([Wid], [Uid], [Uname], [BAC], [AlcoholQty], [Warning], [Date], [Time], [Restaurant]) VALUES (1, N'100', N'Admin', N'0.1 BAC', N'110 ml', N'You have drunk more than permissible limit today.', N'09-06-2022', N'15:23', N'Sai Restaurants')
INSERT [dbo].[Warnings] ([Wid], [Uid], [Uname], [BAC], [AlcoholQty], [Warning], [Date], [Time], [Restaurant]) VALUES (2, N'101', N'user', N'0.15 BAC', N'120 ml', N'You have drunk more than permissible limit today.', N'09-06-2022', N'15:31', N'Sai Restaurants')
INSERT [dbo].[Warnings] ([Wid], [Uid], [Uname], [BAC], [AlcoholQty], [Warning], [Date], [Time], [Restaurant]) VALUES (3, N'100', N'Admin', N'0.08 BAC', N'90 ml', N'You have drunk more than permissible limit today.', N'10-06-2022', N'12:57', N'Sai Restaurants')
INSERT [dbo].[Warnings] ([Wid], [Uid], [Uname], [BAC], [AlcoholQty], [Warning], [Date], [Time], [Restaurant]) VALUES (4, N'101', N'user', N'0.12 BAC', N'90 ml', N'You have drunk more than permissible limit today.', N'10-06-2022', N'12:58', N'Sai Restaurants')
INSERT [dbo].[Warnings] ([Wid], [Uid], [Uname], [BAC], [AlcoholQty], [Warning], [Date], [Time], [Restaurant]) VALUES (5, N'102', N'John', N'0.07 BAC', N'90 ml', N'You have drunk more than permissible limit today.', N'10-06-2022', N'13:06', N'Sai Restaurants')
SET IDENTITY_INSERT [dbo].[Warnings] OFF
GO
USE [master]
GO
ALTER DATABASE [DrunkDriving] SET  READ_WRITE 
GO
