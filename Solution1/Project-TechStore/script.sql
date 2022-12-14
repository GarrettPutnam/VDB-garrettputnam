USE [master]
GO
/****** Object:  Database [Project-TechStore]    Script Date: 9/27/2022 2:26:22 PM ******/
CREATE DATABASE [Project-TechStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project-TechStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project-TechStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project-TechStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project-TechStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project-TechStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project-TechStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project-TechStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project-TechStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project-TechStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project-TechStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project-TechStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project-TechStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project-TechStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project-TechStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project-TechStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project-TechStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project-TechStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project-TechStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project-TechStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project-TechStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project-TechStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project-TechStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project-TechStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project-TechStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project-TechStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project-TechStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project-TechStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project-TechStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project-TechStore] SET RECOVERY FULL 
GO
ALTER DATABASE [Project-TechStore] SET  MULTI_USER 
GO
ALTER DATABASE [Project-TechStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project-TechStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project-TechStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project-TechStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project-TechStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project-TechStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project-TechStore', N'ON'
GO
ALTER DATABASE [Project-TechStore] SET QUERY_STORE = OFF
GO
USE [Project-TechStore]
GO
/****** Object:  Table [dbo].[Population]    Script Date: 9/27/2022 2:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Population](
	[Population_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nchar](10) NOT NULL,
	[Population] [nchar](1000) NOT NULL,
 CONSTRAINT [PK_Population] PRIMARY KEY CLUSTERED 
(
	[Population_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 9/27/2022 2:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[Purchases_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nchar](10) NOT NULL,
	[Item] [nchar](100) NOT NULL,
	[Tax] [money] NOT NULL,
	[Profit] [money] NOT NULL,
 CONSTRAINT [PK_Purchases] PRIMARY KEY CLUSTERED 
(
	[Purchases_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 9/27/2022 2:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[Supply_ID] [int] IDENTITY(1,1) NOT NULL,
	[Graphics Card] [nchar](50) NULL,
	[CPU] [nchar](50) NULL,
	[MotherBoard] [nchar](50) NULL,
	[RAM] [nchar](50) NULL,
 CONSTRAINT [PK_Supply] PRIMARY KEY CLUSTERED 
(
	[Supply_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Population] ON 

INSERT [dbo].[Population] ([Population_ID], [Date], [Population]) VALUES (1, N'9/01/2022 ', N'204                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Population] ([Population_ID], [Date], [Population]) VALUES (2, N'9/02/2022 ', N'189                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Population] ([Population_ID], [Date], [Population]) VALUES (3, N'9/03/2022 ', N'259                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Population] ([Population_ID], [Date], [Population]) VALUES (4, N'9/04/2022 ', N'221                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Population] ([Population_ID], [Date], [Population]) VALUES (5, N'9/05/2022 ', N'312                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
SET IDENTITY_INSERT [dbo].[Population] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchases] ON 

INSERT [dbo].[Purchases] ([Purchases_ID], [Date], [Item], [Tax], [Profit]) VALUES (1, N'9/01/2022 ', N'ASUS TUF Gaming GeForce RTX 3070 Ti                                                                 ', 9.8600, 69.0000)
INSERT [dbo].[Purchases] ([Purchases_ID], [Date], [Item], [Tax], [Profit]) VALUES (2, N'9/01/2022 ', N'Intel Core i3-10100F                                                                                ', 11.4200, 150.0000)
INSERT [dbo].[Purchases] ([Purchases_ID], [Date], [Item], [Tax], [Profit]) VALUES (5, N'9/02/2022 ', N'Intel Core i7-12700K - Core i7                                                                      ', 13.2600, 200.0000)
INSERT [dbo].[Purchases] ([Purchases_ID], [Date], [Item], [Tax], [Profit]) VALUES (6, N'9/03/2022 ', N'GIGABYTE GeForce RTX 3050                                                                           ', 12.0000, 200.0000)
INSERT [dbo].[Purchases] ([Purchases_ID], [Date], [Item], [Tax], [Profit]) VALUES (7, N'9/03/2022 ', N'SuperMicro (M393A8G40MB2-CVF) 64GB 288-Pin DDR4                                                     ', 9.2600, 45.0000)
SET IDENTITY_INSERT [dbo].[Purchases] OFF
GO
SET IDENTITY_INSERT [dbo].[Supply] ON 

INSERT [dbo].[Supply] ([Supply_ID], [Graphics Card], [CPU], [MotherBoard], [RAM]) VALUES (1, N'ASUS TUF Gaming GeForce RTX 3070 Ti               ', N'Intel Core i5-12400F                              ', N'ASUS TUF Gaming Z690-Plus                         ', N'ZVVN 16GB Kit (2x 8GB) DDR3                       ')
INSERT [dbo].[Supply] ([Supply_ID], [Graphics Card], [CPU], [MotherBoard], [RAM]) VALUES (2, N'NULLASUS ROG Strix GeForce RTX 3050               ', N'Intel Core i3-10100F                              ', N'ASUS ROG Crosshair VIII Dark Hero AM4 AMD         ', N'SuperMicro (M393A8G40MB2-CVF) 64GB 288-Pin DDR4   ')
INSERT [dbo].[Supply] ([Supply_ID], [Graphics Card], [CPU], [MotherBoard], [RAM]) VALUES (3, N'GIGABYTE GeForce RTX 3050                         ', N'AMD Ryzen 5 5600                                  ', N'ASUS ROG Strix Z590-E Gaming                      ', N'ASUS ROG Strix Z590-E Gaming                      ')
INSERT [dbo].[Supply] ([Supply_ID], [Graphics Card], [CPU], [MotherBoard], [RAM]) VALUES (4, N'ASRock OC Formula Radeon RX 6900 XT               ', N'Intel Core i7-12700K - Core i7                    ', N'ASUS AM4 TUF Gaming X570-Plus                     ', N'Crucial 4GB Single DDR4                           ')
INSERT [dbo].[Supply] ([Supply_ID], [Graphics Card], [CPU], [MotherBoard], [RAM]) VALUES (5, N'EVGA GeForce RTX 3080                             ', N'Intel Core i9-12900F                              ', N'ASUS PRIME Z590-P LGA 1200 Intel Z590             ', N'SK Hynix HMAA8GR7AJR4N-XN 64GB DDR4               ')
SET IDENTITY_INSERT [dbo].[Supply] OFF
GO
USE [master]
GO
ALTER DATABASE [Project-TechStore] SET  READ_WRITE 
GO
