USE [master]
GO
/****** Object:  Database [almacenitlafinal]    Script Date: 10/12/2021 9:38:15 p. m. ******/
CREATE DATABASE [almacenitlafinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'almacenitlafinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\almacenitlafinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'almacenitlafinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\almacenitlafinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [almacenitlafinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [almacenitlafinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [almacenitlafinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [almacenitlafinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [almacenitlafinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [almacenitlafinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [almacenitlafinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [almacenitlafinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [almacenitlafinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [almacenitlafinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [almacenitlafinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [almacenitlafinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [almacenitlafinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [almacenitlafinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [almacenitlafinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [almacenitlafinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [almacenitlafinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [almacenitlafinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [almacenitlafinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [almacenitlafinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [almacenitlafinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [almacenitlafinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [almacenitlafinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [almacenitlafinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [almacenitlafinal] SET RECOVERY FULL 
GO
ALTER DATABASE [almacenitlafinal] SET  MULTI_USER 
GO
ALTER DATABASE [almacenitlafinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [almacenitlafinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [almacenitlafinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [almacenitlafinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [almacenitlafinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [almacenitlafinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'almacenitlafinal', N'ON'
GO
ALTER DATABASE [almacenitlafinal] SET QUERY_STORE = OFF
GO
USE [almacenitlafinal]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 10/12/2021 9:38:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[NombreProducto] [varchar](140) NULL,
	[MarcarProducto] [varchar](140) NULL,
	[CategoriaProducto] [varchar](140) NULL,
	[PrecioProducto] [int] NULL,
	[StockProducto] [int] NULL,
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 10/12/2021 9:38:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[UserName] [varchar](140) NOT NULL,
	[Nombre] [varchar](140) NOT NULL,
	[Apellido] [varchar](140) NOT NULL,
	[Telefono] [varchar](140) NULL,
	[Email] [varchar](140) NULL,
	[Password] [varchar](140) NOT NULL,
	[idUser] [int] IDENTITY(0,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [almacenitlafinal] SET  READ_WRITE 
GO
