USE [master]
GO

/****** Object:  Database [machine]    Script Date: 08.01.2022 13:00:57 ******/
CREATE DATABASE [machine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'machine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\machine.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'machine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\machine_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [machine] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [machine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [machine] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [machine] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [machine] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [machine] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [machine] SET ARITHABORT OFF 
GO

ALTER DATABASE [machine] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [machine] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [machine] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [machine] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [machine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [machine] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [machine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [machine] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [machine] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [machine] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [machine] SET  DISABLE_BROKER 
GO

ALTER DATABASE [machine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [machine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [machine] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [machine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [machine] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [machine] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [machine] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [machine] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [machine] SET  MULTI_USER 
GO

ALTER DATABASE [machine] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [machine] SET DB_CHAINING OFF 
GO

ALTER DATABASE [machine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [machine] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [machine] SET  READ_WRITE 
GO

use [machine]
go

create procedure newMachines (@mesto nvarchar(10), @marca nvarchar(20), @god date)
as
	Begin
	insert into machines values ((select ISNULL (MAX(id_st)+1,1) from machines),
	@mesto, @marca, @god)
	end

create procedure deleteMachines(@id_st int)
as
	Begin
	delete from machines where machines.id_st=@id_st
	end

create procedure newRepairs (@name nvarchar(20), @ctoim int, @prod int)
as
	Begin
	insert into repairs values ((select ISNULL (MAX(id_vid)+1,1) from repairs),
	@name, @ctoim, @prod)
	end

create procedure deleteRepairs(@id_vid int)
as
	Begin
	delete from repairs where repairs.id_vid=@id_vid
	end