USE [master]
GO
/****** Object:  Database [MasterPol]    Script Date: 18.11.2024 16:24:53 ******/
CREATE DATABASE [MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE = OFF
GO
USE [MasterPol]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorPartner]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorPartner](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DirectorPartner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Home] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeId] [int] NOT NULL,
	[MaterialTypeName] [nvarchar](50) NOT NULL,
	[MaterialTypeBreak] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[Id] [int] NOT NULL,
	[ProductsId] [int] NOT NULL,
	[PartnerNameId] [int] NOT NULL,
	[Count] [nvarchar](50) NOT NULL,
	[DateSold] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnersId] [int] NOT NULL,
	[PartnerTypeId] [int] NULL,
	[PartnersName] [nvarchar](50) NOT NULL,
	[PartnersDirectorId] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[IndexId] [int] NOT NULL,
	[RegionId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[StreetId] [int] NOT NULL,
	[HomeId] [int] NOT NULL,
	[Inn] [nvarchar](50) NOT NULL,
	[Raiting] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[PartnersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[MinPrice] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeId] [int] NOT NULL,
	[ProductTypeName] [nvarchar](50) NULL,
	[ProductTypeK] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 18.11.2024 16:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N' город Приморск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N' город Реутов')
INSERT [dbo].[City] ([Id], [Name]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[City] ([Id], [Name]) VALUES (5, N' город Юрга')
GO
INSERT [dbo].[DirectorPartner] ([Id], [Name]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[DirectorPartner] ([Id], [Name]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[DirectorPartner] ([Id], [Name]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[DirectorPartner] ([Id], [Name]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[DirectorPartner] ([Id], [Name]) VALUES (5, N'Степанов Степан Сергеевич')
GO
INSERT [dbo].[Home] ([Id], [Name]) VALUES (1, N'15')
INSERT [dbo].[Home] ([Id], [Name]) VALUES (2, N'18')
INSERT [dbo].[Home] ([Id], [Name]) VALUES (3, N'21')
INSERT [dbo].[Home] ([Id], [Name]) VALUES (4, N'51')
INSERT [dbo].[Home] ([Id], [Name]) VALUES (5, N'122')
GO
INSERT [dbo].[Index] ([Id], [Name]) VALUES (1, N'143960')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (2, N'164500')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (3, N'188910')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (4, N'309500')
INSERT [dbo].[Index] ([Id], [Name]) VALUES (5, N'652050')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName], [MaterialTypeBreak]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName], [MaterialTypeBreak]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName], [MaterialTypeBreak]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName], [MaterialTypeBreak]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName], [MaterialTypeBreak]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (1, 4, 1, N'15500', CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (2, 2, 1, N'12350', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (3, 3, 1, N'37400', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (4, 1, 3, N'35000', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (5, 5, 3, N'1250', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (6, 2, 3, N'1000', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (7, 4, 3, N'7550', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (8, 4, 5, N'7250', CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (9, 1, 5, N'2500', CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (10, 3, 4, N'59050', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (11, 2, 4, N'37200', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (12, 5, 4, N'4500', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (13, 2, 2, N'50000', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (14, 3, 2, N'670000', CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (15, 4, 2, N'35000', CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [ProductsId], [PartnerNameId], [Count], [DateSold]) VALUES (16, 1, 2, N'25000', CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[Partners] ([PartnersId], [PartnerTypeId], [PartnersName], [PartnersDirectorId], [Email], [Phone], [IndexId], [RegionId], [CityId], [StreetId], [HomeId], [Inn], [Raiting]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'493 123 45 67', 5, 3, 5, 1, 1, N'2222455179', 7)
INSERT [dbo].[Partners] ([PartnersId], [PartnerTypeId], [PartnersName], [PartnersDirectorId], [Email], [Phone], [IndexId], [RegionId], [CityId], [StreetId], [HomeId], [Inn], [Raiting]) VALUES (2, 1, N'МонтажПро', 5, N'stepanov@stepan.ru', N'912 888 33 33', 4, 2, 4, 3, 5, N'5552431140', 10)
INSERT [dbo].[Partners] ([PartnersId], [PartnerTypeId], [PartnersName], [PartnersDirectorId], [Email], [Phone], [IndexId], [RegionId], [CityId], [StreetId], [HomeId], [Inn], [Raiting]) VALUES (3, 3, N'Паркет 29', 3, N'vppetrov@vl.ru', N'987 123 56 78', 2, 1, 3, 5, 2, N'3333888520', 7)
INSERT [dbo].[Partners] ([PartnersId], [PartnerTypeId], [PartnersName], [PartnersDirectorId], [Email], [Phone], [IndexId], [RegionId], [CityId], [StreetId], [HomeId], [Inn], [Raiting]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', 1, 5, 2, 4, 4, N'1111520857', 5)
INSERT [dbo].[Partners] ([PartnersId], [PartnerTypeId], [PartnersName], [PartnersDirectorId], [Email], [Phone], [IndexId], [RegionId], [CityId], [StreetId], [HomeId], [Inn], [Raiting]) VALUES (5, 4, N'Стройсервис', 4, N'ansolovev@st.ru', N'812 223 32 00', 3, 4, 1, 2, 3, N'4440391035', 7)
GO
INSERT [dbo].[Products] ([Id], [ProductTypeId], [ProductName], [Article], [MinPrice]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', N'7331')
INSERT [dbo].[Products] ([Id], [ProductTypeId], [ProductName], [Article], [MinPrice]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', N'1799')
INSERT [dbo].[Products] ([Id], [ProductTypeId], [ProductName], [Article], [MinPrice]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', N'3890')
INSERT [dbo].[Products] ([Id], [ProductTypeId], [ProductName], [Article], [MinPrice]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', N'4457')
INSERT [dbo].[Products] ([Id], [ProductTypeId], [ProductName], [Article], [MinPrice]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', N'5451')
GO
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName], [ProductTypeK]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName], [ProductTypeK]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName], [ProductTypeK]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName], [ProductTypeK]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Region] ([Id], [Name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[Street] ([Id], [Name]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (5, N' ул. Строителей')
GO
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (4, N'ПАО')
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partners1] FOREIGN KEY([PartnerNameId])
REFERENCES [dbo].[Partners] ([PartnersId])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partners1]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Products] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_City]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_DirectorPartner] FOREIGN KEY([PartnersDirectorId])
REFERENCES [dbo].[DirectorPartner] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_DirectorPartner]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Home] FOREIGN KEY([HomeId])
REFERENCES [dbo].[Home] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Home]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Index] FOREIGN KEY([IndexId])
REFERENCES [dbo].[Index] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Index]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Region]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Street] FOREIGN KEY([StreetId])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Street]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_TypePartner] FOREIGN KEY([PartnerTypeId])
REFERENCES [dbo].[TypePartner] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_TypePartner]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([ProductTypeId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [MasterPol] SET  READ_WRITE 
GO
