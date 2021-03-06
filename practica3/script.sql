USE [master]
GO
/****** Object:  Database [escuela_horarios]    Script Date: 07/10/2017 02:24:21 p.m. ******/
CREATE DATABASE [escuela_horarios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'escuela_horarios', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\escuela_horarios.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'escuela_horarios_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\escuela_horarios_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [escuela_horarios] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [escuela_horarios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [escuela_horarios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [escuela_horarios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [escuela_horarios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [escuela_horarios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [escuela_horarios] SET ARITHABORT OFF 
GO
ALTER DATABASE [escuela_horarios] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [escuela_horarios] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [escuela_horarios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [escuela_horarios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [escuela_horarios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [escuela_horarios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [escuela_horarios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [escuela_horarios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [escuela_horarios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [escuela_horarios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [escuela_horarios] SET  DISABLE_BROKER 
GO
ALTER DATABASE [escuela_horarios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [escuela_horarios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [escuela_horarios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [escuela_horarios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [escuela_horarios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [escuela_horarios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [escuela_horarios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [escuela_horarios] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [escuela_horarios] SET  MULTI_USER 
GO
ALTER DATABASE [escuela_horarios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [escuela_horarios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [escuela_horarios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [escuela_horarios] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [escuela_horarios]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdMat] [int] NOT NULL,
	[NomAlu] [varchar](50) NULL,
	[Edad] [tinyint] NULL,
	[FecNac] [datetime] NULL,
	[StausReg] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [int] NOT NULL,
	[NomCarrera] [varchar](50) NULL,
	[SemCarera] [tinyint] NULL,
	[StatusReg] [varchar](1) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] NOT NULL,
	[IdSalon] [int] NOT NULL,
	[IdTurno] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[grupo_materia]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_materia](
	[IdGrupo_materia] [int] NOT NULL,
	[IdMateria_Maestro] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materia]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[IdMateria] [int] NOT NULL,
	[IdCarrera] [int] NOT NULL,
	[matNombre] [varchar](50) NULL,
	[NumCred] [tinyint] NULL,
	[Semestre] [tinyint] NULL,
	[StatusReg] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[IdProfesor] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Edad] [tinyint] NULL,
	[Sexo] [varchar](1) NULL,
	[StatusReg] [varchar](1) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor_Materia]    Script Date: 07/10/2017 02:24:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor_Materia](
	[IdMateriaMaestro] [int] NOT NULL,
	[idProfesor] [int] NOT NULL,
	[IdMateria] [int] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [escuela_horarios] SET  READ_WRITE 
GO
