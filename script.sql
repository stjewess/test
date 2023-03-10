USE [master]
GO
/****** Object:  Database [Baza]    Script Date: 03.02.2023 13:22:03 ******/
CREATE DATABASE [Baza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Baza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Baza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Baza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Baza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Baza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Baza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Baza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Baza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Baza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Baza] SET ARITHABORT OFF 
GO
ALTER DATABASE [Baza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Baza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Baza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Baza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Baza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Baza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Baza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Baza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Baza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Baza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Baza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Baza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Baza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Baza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Baza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Baza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Baza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Baza] SET RECOVERY FULL 
GO
ALTER DATABASE [Baza] SET  MULTI_USER 
GO
ALTER DATABASE [Baza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Baza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Baza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Baza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Baza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Baza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Baza', N'ON'
GO
ALTER DATABASE [Baza] SET QUERY_STORE = OFF
GO
USE [Baza]
GO
/****** Object:  Table [dbo].[character]    Script Date: 03.02.2023 13:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[character](
	[id] [int] NOT NULL,
	[name] [varchar](200) NULL,
	[element] [varchar](200) NULL,
	[stars] [varchar](200) NULL,
	[price] [money] NULL,
	[image] [varchar](300) NULL,
 CONSTRAINT [PK_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 03.02.2023 13:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id] [int] NOT NULL,
	[login] [varchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (1, N'Дэхья', N'Пиро', N'Лега', 600.0000, N'Resources/1.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (2, N'Аль-Хайтам', N'Дендро', N'Лега', 600.0000, N'Resources/2.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (3, N'Яо Яо', N'Дендро', N'Фиолка', 400.0000, N'Resources/3.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (4, N'Странник', N'Анемо', N'Лега', 600.0000, N'Resources/4.png')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (5, N'Фарузан', N'Анемо', N'Фиолка', 400.0000, N'Resources/5.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (6, N'Лайла', N'Крио', N'Фиолка', 400.0000, N'Resources/6.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (7, N'Нахида', N'Дендро', N'Лега', 600.0000, N'Resources/7.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (8, N'Нилу', N'Гидро', N'Лега', 600.0000, N'Resources/8.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (9, N'Сайно', N'Электро', N'Лега', 600.0000, N'Resources/9.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (10, N'Кандакия', N'Гидро', N'Фиолка', 400.0000, N'Resources/10.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (11, N'Дори', N'Электро', N'Фиолка', 400.0000, N'Resources/11.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (12, N'Тигнари', N'Дендро', N'Лега', 600.0000, N'Resources/12.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (13, N'Коллеи', N'Дендро', N'Фиолка', 400.0000, N'Resources/13.png')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (14, N'Хэйдзо', N'Анемо', N'Фиолка', 400.0000, N'Resources/14.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (15, N'Синобу', N'Электро', N'Фиолка', 400.0000, N'Resources/15.jpg')
INSERT [dbo].[character] ([id], [name], [element], [stars], [price], [image]) VALUES (16, N'Путешественник', N'Неизвестно', N'Лега', 1000000.0000, N'Resources/16.png')
GO
INSERT [dbo].[clients] ([id], [login], [password]) VALUES (1, N'avorovuss', N'1234567890')
GO
USE [master]
GO
ALTER DATABASE [Baza] SET  READ_WRITE 
GO
