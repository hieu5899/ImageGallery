/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Hieu Mau
 * Created: Jun 12, 2021
 */

USE [master]
GO
/****** Object:  Database [Photographer]    Script Date: 12-Jun-21 14:24:40 ******/
CREATE DATABASE [Photographer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Photographer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Photographer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Photographer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Photographer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Photographer] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Photographer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Photographer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Photographer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Photographer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Photographer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Photographer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Photographer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Photographer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Photographer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Photographer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Photographer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Photographer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Photographer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Photographer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Photographer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Photographer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Photographer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Photographer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Photographer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Photographer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Photographer] SET RECOVERY FULL 
GO
ALTER DATABASE [Photographer] SET  MULTI_USER 
GO
ALTER DATABASE [Photographer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Photographer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Photographer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Photographer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Photographer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Photographer] SET QUERY_STORE = OFF
GO
USE [Photographer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12-Jun-21 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[email] [nvarchar](500) NULL,
	[imgLink] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 12-Jun-21 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NULL,
	[imgLink] [nvarchar](50) NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intro]    Script Date: 12-Jun-21 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[about] [text] NULL,
	[imgLink] [nvarchar](50) NULL,
 CONSTRAINT [PK_Intro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 12-Jun-21 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imgLink] [varchar](50) NULL,
	[galleryID] [int] NULL,
 CONSTRAINT [PK_MorePicture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [address], [city], [country], [phone], [email], [imgLink]) VALUES (1, N'HUMAN FROM UFO', N'Hanoi', N'Vietnam', 123456789, N'daylaemail@gmail.com', N'map.png')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([id], [description], [imgLink]) VALUES (1, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'2p.jpg')
INSERT [dbo].[Gallery] ([id], [description], [imgLink]) VALUES (2, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'5p.jpg')
INSERT [dbo].[Gallery] ([id], [description], [imgLink]) VALUES (3, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'9p.jpg')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
SET IDENTITY_INSERT [dbo].[Intro] ON 

INSERT [dbo].[Intro] ([id], [title], [about], [imgLink]) VALUES (1, N'Lorem ipsum dolor sit amet

', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'7p.jpg')
SET IDENTITY_INSERT [dbo].[Intro] OFF
SET IDENTITY_INSERT [dbo].[Picture] ON 

INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (1, N'6p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (2, N'3p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (3, N'4p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (4, N'5p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (5, N'2p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (6, N'7p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (7, N'8p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (8, N'9p.jpg', 1)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (9, N'8p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (10, N'4p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (11, N'8p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (12, N'5p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (13, N'6p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (14, N'7p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (15, N'3p.jpg', 2)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (16, N'9p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (17, N'2p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (18, N'3p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (19, N'5p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (20, N'6p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (21, N'7p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (22, N'8p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (23, N'4p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (24, N'1p.jpg', 3)
INSERT [dbo].[Picture] ([id], [imgLink], [galleryID]) VALUES (25, N'2p.jpg', 3)
SET IDENTITY_INSERT [dbo].[Picture] OFF
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_Picture_Gallery] FOREIGN KEY([galleryID])
REFERENCES [dbo].[Gallery] ([id])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_Picture_Gallery]
GO
USE [master]
GO
ALTER DATABASE [Photographer] SET  READ_WRITE 
GO
