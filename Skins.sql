USE [master]
GO
/****** Object:  Database [Skins]    Script Date: 28/11/2022 00:39:15 ******/
CREATE DATABASE [Skins]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Skins', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Skins.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Skins_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Skins_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Skins] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Skins].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Skins] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Skins] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Skins] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Skins] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Skins] SET ARITHABORT OFF 
GO
ALTER DATABASE [Skins] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Skins] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Skins] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Skins] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Skins] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Skins] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Skins] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Skins] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Skins] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Skins] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Skins] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Skins] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Skins] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Skins] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Skins] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Skins] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Skins] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Skins] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Skins] SET  MULTI_USER 
GO
ALTER DATABASE [Skins] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Skins] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Skins] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Skins] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Skins] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Skins] SET QUERY_STORE = OFF
GO
USE [Skins]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 28/11/2022 00:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[IdPersonaje] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[IdPersonaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skin]    Script Date: 28/11/2022 00:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skin](
	[IdSkin] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Precio] [int] NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Creacion] [date] NOT NULL,
	[IdPersonaje] [int] NULL,
 CONSTRAINT [PK_Skin] PRIMARY KEY CLUSTERED 
(
	[IdSkin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Personaje] ON 

INSERT [dbo].[Personaje] ([IdPersonaje], [Nombre], [Foto]) VALUES (1, N'Miss Fortune', N'https://images.contentstack.io/v3/assets/blt187521ff0727be24/bltc6e788b11a9c8245/60ee0f71a86d0f5a0be449a3/MissFortune_0.jpg')
INSERT [dbo].[Personaje] ([IdPersonaje], [Nombre], [Foto]) VALUES (2, N'Vayne', N'https://images.contentstack.io/v3/assets/blt187521ff0727be24/bltb55f82eda095f4e8/60ee13795397524ead38918b/Vayne_0.jpg')
INSERT [dbo].[Personaje] ([IdPersonaje], [Nombre], [Foto]) VALUES (3, N'Zac', N'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Zac_0.jpg')
SET IDENTITY_INSERT [dbo].[Personaje] OFF
GO
SET IDENTITY_INSERT [dbo].[Skin] ON 

INSERT [dbo].[Skin] ([IdSkin], [Nombre], [Foto], [Precio], [Categoria], [Creacion], [IdPersonaje]) VALUES (2, N'PROYECTO: Vayne', N'https://lolstatic-a.akamaihd.net/frontpage/apps/prod/skins-project-microsite-2017/es_MX/2a8c54aa43035c95db27e9615dbe059b7d4147cc/assets/images/skin-vayne-full.jpg', 1820, N'Legendaria', CAST(N'2022-11-27' AS Date), 2)
INSERT [dbo].[Skin] ([IdSkin], [Nombre], [Foto], [Precio], [Categoria], [Creacion], [IdPersonaje]) VALUES (4, N'Vayne Centinela', N'https://pbs.twimg.com/media/E4fsUt1XIAMdm3o?format=jpg&name=4096x4096', 1820, N'Legendaria', CAST(N'2022-11-27' AS Date), 2)
INSERT [dbo].[Skin] ([IdSkin], [Nombre], [Foto], [Precio], [Categoria], [Creacion], [IdPersonaje]) VALUES (6, N'Vayne Flor Espiritual', N'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt79738cc433a282da/5fe0e2c9b47cdf7fc7d69d0b/SpiritBlossomVayne_FINAL.jpg', 1350, N'Legendaria', CAST(N'2022-11-27' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Skin] OFF
GO
ALTER TABLE [dbo].[Skin]  WITH CHECK ADD  CONSTRAINT [FK_Skin_Personaje] FOREIGN KEY([IdPersonaje])
REFERENCES [dbo].[Personaje] ([IdPersonaje])
GO
ALTER TABLE [dbo].[Skin] CHECK CONSTRAINT [FK_Skin_Personaje]
GO
USE [master]
GO
ALTER DATABASE [Skins] SET  READ_WRITE 
GO
