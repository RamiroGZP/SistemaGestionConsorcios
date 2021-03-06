USE [master]
GO
/****** Object:  Database [pw3_eda2]    Script Date: 21/11/2020 19:14:14 ******/
CREATE DATABASE [pw3_eda2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pw3_eda2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pw3_eda2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pw3_eda2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pw3_eda2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pw3_eda2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pw3_eda2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pw3_eda2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pw3_eda2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pw3_eda2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pw3_eda2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pw3_eda2] SET ARITHABORT OFF 
GO
ALTER DATABASE [pw3_eda2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pw3_eda2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pw3_eda2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pw3_eda2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pw3_eda2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pw3_eda2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pw3_eda2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pw3_eda2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pw3_eda2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pw3_eda2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pw3_eda2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pw3_eda2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pw3_eda2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pw3_eda2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pw3_eda2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pw3_eda2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pw3_eda2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pw3_eda2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pw3_eda2] SET  MULTI_USER 
GO
ALTER DATABASE [pw3_eda2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pw3_eda2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pw3_eda2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pw3_eda2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pw3_eda2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pw3_eda2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [pw3_eda2] SET QUERY_STORE = OFF
GO
USE [pw3_eda2]
GO
/****** Object:  Table [dbo].[GolesJugadorPorEquipo]    Script Date: 21/11/2020 19:14:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GolesJugadorPorEquipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[equipo] [varchar](100) NOT NULL,
	[cantidadGoles] [int] NULL,
	[idJugador] [int] NOT NULL,
 CONSTRAINT [PK_GolesJugadorPorEquipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 21/11/2020 19:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GolesJugadorPorEquipo] ON 

INSERT [dbo].[GolesJugadorPorEquipo] ([id], [equipo], [cantidadGoles], [idJugador]) VALUES (1, N'San Lorenzo', 3, 1)
INSERT [dbo].[GolesJugadorPorEquipo] ([id], [equipo], [cantidadGoles], [idJugador]) VALUES (2, N'San Lorenzo', 3, 2)
INSERT [dbo].[GolesJugadorPorEquipo] ([id], [equipo], [cantidadGoles], [idJugador]) VALUES (3, N'Barcelona', 13, 4)
INSERT [dbo].[GolesJugadorPorEquipo] ([id], [equipo], [cantidadGoles], [idJugador]) VALUES (4, N'Chacarita', 23, 3)
INSERT [dbo].[GolesJugadorPorEquipo] ([id], [equipo], [cantidadGoles], [idJugador]) VALUES (5, N'Chacarita', 8, 4)
SET IDENTITY_INSERT [dbo].[GolesJugadorPorEquipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([id], [nombre]) VALUES (1, N'Pepe Argento')
INSERT [dbo].[Jugador] ([id], [nombre]) VALUES (2, N'Diego')
INSERT [dbo].[Jugador] ([id], [nombre]) VALUES (3, N'MIGLES')
INSERT [dbo].[Jugador] ([id], [nombre]) VALUES (4, N'Javi')
INSERT [dbo].[Jugador] ([id], [nombre]) VALUES (5, N'Alf')
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
ALTER TABLE [dbo].[GolesJugadorPorEquipo] ADD  DEFAULT ((0)) FOR [cantidadGoles]
GO
ALTER TABLE [dbo].[GolesJugadorPorEquipo]  WITH CHECK ADD  CONSTRAINT [FK_Jugador] FOREIGN KEY([idJugador])
REFERENCES [dbo].[Jugador] ([id])
GO
ALTER TABLE [dbo].[GolesJugadorPorEquipo] CHECK CONSTRAINT [FK_Jugador]
GO
USE [master]
GO
ALTER DATABASE [pw3_eda2] SET  READ_WRITE 
GO
