USE [master]
GO

/****** Object:  Database [TravelExperts]    Script Date: 2/18/2020 12:22:30 PM ******/
CREATE DATABASE [TravelExperts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelExperts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TravelExperts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelExperts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TravelExperts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelExperts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [TravelExperts] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [TravelExperts] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [TravelExperts] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [TravelExperts] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [TravelExperts] SET ARITHABORT OFF 
GO

ALTER DATABASE [TravelExperts] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [TravelExperts] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [TravelExperts] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [TravelExperts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [TravelExperts] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [TravelExperts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [TravelExperts] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [TravelExperts] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [TravelExperts] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [TravelExperts] SET  ENABLE_BROKER 
GO

ALTER DATABASE [TravelExperts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [TravelExperts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [TravelExperts] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [TravelExperts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [TravelExperts] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [TravelExperts] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [TravelExperts] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [TravelExperts] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [TravelExperts] SET  MULTI_USER 
GO

ALTER DATABASE [TravelExperts] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [TravelExperts] SET DB_CHAINING OFF 
GO

ALTER DATABASE [TravelExperts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [TravelExperts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [TravelExperts] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [TravelExperts] SET QUERY_STORE = OFF
GO

ALTER DATABASE [TravelExperts] SET  READ_WRITE 
GO

