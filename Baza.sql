USE [master]
GO

/****** Object:  Database [Baza]    Script Date: 01.02.2023 23:12:37 ******/
CREATE DATABASE [Baza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Baza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Baza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Baza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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

ALTER DATABASE [Baza] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Baza] SET  READ_WRITE 
GO

