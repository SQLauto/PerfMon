USE [master]
GO
CREATE DATABASE [PerfmonE] ON  PRIMARY 
( NAME = N'Perfmon', FILENAME = N'D:\MSSQL\Data\PerfmonE.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [MetricValues] 
( NAME = N'Perfmon_MValues', FILENAME = N'D:\MSSQL\Data\PerfmonE_MValues.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
 FILEGROUP [Stats] 
( NAME = N'Perfmon_MVStats', FILENAME = N'D:\MSSQL\Data\PerfmonE_MVStats.ndf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 51200KB ), 
 FILEGROUP [stage] 
( NAME = N'Perfmon_stage', FILENAME = N'D:\MSSQL\Data\PerfmonE_stage.ndf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 20480KB )
 LOG ON 
( NAME = N'Perfmon_log', FILENAME = N'D:\MSSQL\Data\PerfmonE_log.ldf' , SIZE = 51200KB , MAXSIZE = 20971520KB , FILEGROWTH = 20480KB )
GO
ALTER DATABASE [PerfmonE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PerfmonE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PerfmonE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PerfmonE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PerfmonE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PerfmonE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PerfmonE] SET ARITHABORT OFF 
GO
ALTER DATABASE [PerfmonE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PerfmonE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PerfmonE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PerfmonE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PerfmonE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PerfmonE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PerfmonE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PerfmonE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PerfmonE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PerfmonE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PerfmonE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PerfmonE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PerfmonE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PerfmonE] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [PerfmonE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PerfmonE] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PerfmonE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PerfmonE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PerfmonE] SET  MULTI_USER 
GO
ALTER DATABASE [PerfmonE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PerfmonE] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PerfmonE', N'ON'
GO
USE [PerfmonE]
GO
GRANT CONNECT TO [perfmon] AS [dbo]
GO
USE [master]
GO
ALTER DATABASE [PerfmonE] SET  READ_WRITE 
GO