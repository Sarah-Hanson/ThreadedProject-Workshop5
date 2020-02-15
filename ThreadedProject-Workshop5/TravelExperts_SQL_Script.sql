IF DB_ID('TravelExperts') IS NOT NULL
	DROP DATABASE TravelExperts

CREATE DATABASE TravelExperts
GO


USE [TravelExperts]
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agency](
	[AgencyId] [int] IDENTITY(1,1) NOT NULL,
	[AgencyAddress] [nvarchar](50) NULL,
	[AgencyCity] [nvarchar](50) NULL,
	[AgencyProv] [nvarchar](50) NULL,
	[AgencyPostal] [nvarchar](50) NULL,
	[AgencyCountry] [nvarchar](50) NULL,
	[AgencyPhone] [nvarchar](50) NULL,
	[AgencyFax] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaPK_Agency] PRIMARY KEY CLUSTERED 
(
	[AgencyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agency] ON
INSERT [dbo].[Agency] ([AgencyId], [AgencyAddress], [AgencyCity], [AgencyProv], [AgencyPostal], [AgencyCountry], [AgencyPhone], [AgencyFax]) VALUES (1, N'1155 8th Ave SW', N'Calagary', N'AB', N'T2P1N3', N'Canada', N'4032719873', N'4032719872')
INSERT [dbo].[Agency] ([AgencyId], [AgencyAddress], [AgencyCity], [AgencyProv], [AgencyPostal], [AgencyCountry], [AgencyPhone], [AgencyFax]) VALUES (2, N'110 Main Street', N'Okatokes', N'AB', N'T7R3J5', N'Canada', N'4035632381', N'4035632382')
SET IDENTITY_INSERT [dbo].[Agency] OFF
/****** Object:  Table [dbo].[Affiliation]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliation](
	[AffilitationId] [nvarchar](10) NOT NULL,
	[AffName] [nvarchar](50) NULL,
	[AffDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaAffiliation_PK] PRIMARY KEY NONCLUSTERED 
(
	[AffilitationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'ACTA', N'Association of Canadian Travel Agent', NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'ACTANEW', NULL, NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'ACTANEWP', NULL, NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'ACTAPGY', NULL, NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'NEW', NULL, NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'NEWPGY', NULL, NULL)
INSERT [dbo].[Affiliation] ([AffilitationId], [AffName], [AffDesc]) VALUES (N'PGY', NULL, NULL)
/****** Object:  Table [dbo].[TravelClass]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelClass](
	[ClassId] [nvarchar](5) NOT NULL,
	[ClassName] [nvarchar](20) NOT NULL,
	[ClassDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaTravelClass_PK] PRIMARY KEY NONCLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'BSN', N'Business Class', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'DBL', N'Double', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'DLX', N'Delux', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'ECN', N'Economy', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'FST', N'First Class', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'INT', N'Interior', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'NA', N'Not Applicable', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'OCNV', N'Ocean View', NULL)
INSERT [dbo].[TravelClass] ([ClassId], [ClassName], [ClassDesc]) VALUES (N'SNG', N'Single', NULL)
/****** Object:  Table [dbo].[Fee]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[FeeId] [nvarchar](10) NOT NULL,
	[FeeName] [nvarchar](50) NOT NULL,
	[FeeAmt] [money] NOT NULL,
	[FeeDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaFee_PK] PRIMARY KEY NONCLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'BK', N'Booking Charge', 25.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'CH', N'Change', 15.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'GR', N'Group Booking', 100.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'NC', N'No Charge', 0.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'NSF', N'Insufficient Funds', 25.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'RF', N'Refund', 25.0000, NULL)
INSERT [dbo].[Fee] ([FeeId], [FeeName], [FeeAmt], [FeeDesc]) VALUES (N'RS', N'Research', 50.0000, NULL)
/****** Object:  Table [dbo].[Employee]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpFirstName] [nvarchar](20) NOT NULL,
	[EmpMiddleInitial] [nvarchar](5) NULL,
	[EmpLastName] [nvarchar](20) NOT NULL,
	[EmpBusPhone] [nvarchar](20) NOT NULL,
	[EmpEmail] [nvarchar](50) NOT NULL,
	[EmpPosition] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Janet', NULL, N'Delton', N'(403) 210-7801', N'janet.delton@travelexperts.com', N'Senior Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Judy', NULL, N'Lisle', N'(403) 210-7802', N'judy.lisle@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Dennis', N'C.', N'Reynolds', N'(403) 210-7843', N'dennis.reynolds@travelexperts.com', N'Junior Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'John', NULL, N'Coville', N'(403) 210-7823', N'john.coville@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Janice', N'W.', N'Dahl', N'(403) 210-7865', N'janice.dahl@travelexperts.com', N'Manager')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Bruce', N'J.', N'Dixon', N'(403) 210-7867', N'bruce.dixon@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Beverly', N'S.', N'Jones', N'(403) 210-7812', N'beverly.jones@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Jane', NULL, N'Merrill', N'(403) 210-7868', N'jane.merrill@travelexperts.com', N'Senior Agent')
INSERT [dbo].[Employee] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Brian', N'S.', N'Peterson', N'(403) 210-7833', N'brian.peterson@travelexperts.com', N'Junior Agent')
/****** Object:  Table [dbo].[TravelPackage]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPackage](
	[TravelPackageId] [int] IDENTITY(1,1) NOT NULL,
	[PkgName] [nvarchar](50) NOT NULL,
	[PkgStartDate] [datetime] NULL,
	[PkgEndDate] [datetime] NULL,
	[PkgDesc] [nvarchar](50) NULL,
	[PkgBasePrice] [money] NOT NULL,
	[PkgAgencyCommission] [money] NULL,
 CONSTRAINT [aaaaaTravelPackage_PK] PRIMARY KEY NONCLUSTERED 
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TravelPackage] ON
INSERT [dbo].[TravelPackage] ([TravelPackageId], [PkgName], [PkgStartDate], [PkgEndDate], [PkgDesc], [PkgBasePrice], [PkgAgencyCommission]) VALUES (1, N'Caribbean New Year', CAST(0x0000973500000000 AS DateTime), CAST(0x0000973F00000000 AS DateTime), N'Cruise the Caribbean & Celebrate the New Year.', 4800.0000, 400.0000)
INSERT [dbo].[TravelPackage] ([TravelPackageId], [PkgName], [PkgStartDate], [PkgEndDate], [PkgDesc], [PkgBasePrice], [PkgAgencyCommission]) VALUES (2, N'Polynesian Paradise', CAST(0x0000972800000000 AS DateTime), CAST(0x0000973000000000 AS DateTime), N'8 Day All Inclusive Hawaiian Vacation', 3000.0000, 310.0000)
INSERT [dbo].[TravelPackage] ([TravelPackageId], [PkgName], [PkgStartDate], [PkgEndDate], [PkgDesc], [PkgBasePrice], [PkgAgencyCommission]) VALUES (3, N'Asian Expedition', CAST(0x000097C100000000 AS DateTime), CAST(0x000097CF00000000 AS DateTime), N'Airfaire, Hotel and Eco Tour.', 2800.0000, 300.0000)
INSERT [dbo].[TravelPackage] ([TravelPackageId], [PkgName], [PkgStartDate], [PkgEndDate], [PkgDesc], [PkgBasePrice], [PkgAgencyCommission]) VALUES (4, N'European Vacation', CAST(0x000096FF00000000 AS DateTime), CAST(0x0000970C00000000 AS DateTime), N'Euro Tour with Rail Pass and Travel Insurance', 3000.0000, 280.0000)
SET IDENTITY_INSERT [dbo].[TravelPackage] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProdName] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaProduct_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductId] ON [dbo].[Product] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (1, N'Air')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (2, N'Attractions')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (3, N'Car rental')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (4, N'Cruise')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (5, N'Hotel')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (6, N'Motor Coach')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (7, N'Railroad')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (8, N'Tours')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (9, N'Travel Insurance')
INSERT [dbo].[Product] ([ProductId], [ProdName]) VALUES (10, N'Yacht/Boat Charters')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Reward]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reward](
	[RewardId] [int] NOT NULL,
	[RwdName] [nvarchar](50) NULL,
	[RwdDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaReward_PK] PRIMARY KEY NONCLUSTERED 
(
	[RewardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Reward] ([RewardId], [RwdName], [RwdDesc]) VALUES (1, N'Air Miles', NULL)
INSERT [dbo].[Reward] ([RewardId], [RwdName], [RwdDesc]) VALUES (2, N'AeroPlan', NULL)
INSERT [dbo].[Reward] ([RewardId], [RwdName], [RwdDesc]) VALUES (3, N'AeroPlan Gold', NULL)
INSERT [dbo].[Reward] ([RewardId], [RwdName], [RwdDesc]) VALUES (4, N'Coast Reward', NULL)
INSERT [dbo].[Reward] ([RewardId], [RwdName], [RwdDesc]) VALUES (5, N'Mariott Reward', NULL)
/****** Object:  Table [dbo].[Region]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [nvarchar](5) NOT NULL,
	[RegionName] [nvarchar](25) NULL,
 CONSTRAINT [aaaaaRegion_PK] PRIMARY KEY NONCLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'AFR', N'Africa                   ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'ANZ', N'Australia & New Zealand  ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'ASIA', N'Asia                     ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'EU', N'Europe & United Kingdom  ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'MEAST', N'Middle East              ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'MED', N'Mediterranean            ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'NA', N'North America            ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'OTHR', N'Other                    ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'SA', N'South America            ')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (N'SP', N'South Pacific            ')
/****** Object:  Table [dbo].[TripType]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripType](
	[TripTypeId] [nvarchar](1) NOT NULL,
	[TTName] [nvarchar](25) NULL,
 CONSTRAINT [aaaaaTripType_PK] PRIMARY KEY NONCLUSTERED 
(
	[TripTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TripType] ([TripTypeId], [TTName]) VALUES (N'B', N'Business                 ')
INSERT [dbo].[TripType] ([TripTypeId], [TTName]) VALUES (N'G', N'Group                    ')
INSERT [dbo].[TripType] ([TripTypeId], [TTName]) VALUES (N'L', N'Leisure                  ')
/****** Object:  Table [dbo].[Supplier]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] NOT NULL,
	[SupName] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaSupplier_PK] PRIMARY KEY NONCLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SupplierId] ON [dbo].[Supplier] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (69, N'NEW CONCEPTS - CANADA')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (80, N'CHAT / TRAVELINE')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (100, N'AVILA TOURS INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (317, N'BLYTH & COMPANY TRAVEL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (323, N'COMPAGNIA ITALIANA TURISM')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (796, N'CYPRUS AIRWAYS LTD')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (828, N'DER TRAVEL SERVICE LTD')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (845, N'DISCOVER THE WORLD MARKET')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (908, N'ELITE ORIENT TOURS INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1005, N'ENCORE CRUISES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1028, N'EUROP-AUTO-VACANCES/HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1040, N'EXECUTIVE SUITES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1205, N'GOLDMAN MARKETING')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1406, N'EUROCRUISES INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1416, N'THE HOLIDAY NETWORK')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1425, N'HOLLAND AMERICA LINE WEST')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1542, N'INSIGHT VACATIONS CANADA')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1620, N'INTAIR VACATIONS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1634, N'ISLANDS IN THE SUN CRUISE')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1685, N'GOWAY TRAVEL LTD.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1713, N'JETPACIFIC HOLIDAYS INC')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1766, N'KLM ROYAL DUTCH AIRLINES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1859, N'LOTUS HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (1918, N'MARKET SQUARE TOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2140, N'NAGEL TOURS LTD')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2386, N'PAVLIK TRAVEL GROUP')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2466, N'PLANET FRANCE/PLANET EURO')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2588, N'UNIQUE VACATIONS (CANADA)')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2592, N'ESPRIT/SERVICENTRE HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2827, N'SOUTH WIND TOURS LTD.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2938, N'SUN & LEISURE TRAVEL CORP.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2987, N'TOURCAN VACATIONS INC')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (2998, N'ALIOTOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3119, N'MEDIAN AVIATION RESOURCES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3212, N'TREK HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3273, N'MARKETING AHEAD')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3376, N'MARTINAIR SERVICES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3549, N'BONANZA HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3576, N'BLUE DANUBE HOLIDAYS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3589, N'G.A.P ADVENTURES INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3600, N'GOLDEN ESCAPES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3622, N'CHINA TRAVEL SERVICE (CAN)')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3633, N'VIP INTERNATIONAL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (3650, N'CUNARD LINES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (4196, N'TRAVEL STUDIO')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5081, N'ANHEUSER-BUSCH ADVENTURE')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5228, N'THE RMR GROUP INC')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5492, N'SKYWAYS INTERNATIONAL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5777, N'TRAVEL BY RAIL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5796, N'REPWORLD INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5827, N'RESORT MARKETING INC')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (5857, N'TOURS OF EXPLORATION')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (6346, N'PASSAGES EXPEDITIONS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (6505, N'TRADE WINDS ASSOCIATES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (6550, N'LTI TOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (6873, N'BIMAN BANGLADESH AIRLINES')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (7244, N'WORLD ACCESS MARKETING')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (7377, N'MAJESTIC TOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (8089, N'EXCLUSIVE TOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (8837, N'SCANDITOURS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (9285, N'JTB INTERNATIONAL (CANADA)')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (9323, N'BONAVE')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (9396, N'SKYLINK TICKET CENTRE')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (9766, N'KINTETSU INTERNATIONAL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (9785, N'MANDITOURS INTL INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11156, N'ALITOURS INTERNATIONAL INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11160, N'TOTAL ADVANTAGE TRAVEL')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11163, N'D-TOUR MARKETING')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11172, N'MERIT TRAVEL GROUP INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11174, N'GRUPO TACA')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11237, N'DKM COACH LINES LTD')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (11549, N'GO ACTIVE VACATIONS')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (12657, N'SAAAI TRAVEL INC.')
INSERT [dbo].[Supplier] ([SupplierId], [SupName]) VALUES (13596, N'A & TIC SUPPORT INC.')
/****** Object:  Table [dbo].[SupplierContact]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierContact](
	[SupplierContactId] [int] NOT NULL,
	[SupConFirstName] [nvarchar](50) NULL,
	[SupConLastName] [nvarchar](50) NULL,
	[SupConCompany] [nvarchar](255) NULL,
	[SupConAddress] [nvarchar](255) NULL,
	[SupConCity] [nvarchar](255) NULL,
	[SupConProv] [nvarchar](255) NULL,
	[SupConPostal] [nvarchar](255) NULL,
	[SupConCountry] [nvarchar](255) NULL,
	[SupConBusPhone] [nvarchar](50) NULL,
	[SupConFax] [nvarchar](50) NULL,
	[SupConEmail] [nvarchar](255) NULL,
	[SupConURL] [nvarchar](255) NULL,
	[AffiliationId] [nvarchar](10) NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [aaaaaSupplierContact_PK] PRIMARY KEY NONCLUSTERED 
(
	[SupplierContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AffiliationSupCon] ON [dbo].[SupplierContact] 
(
	[AffiliationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SupplierSupCon] ON [dbo].[SupplierContact] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (16, NULL, NULL, N'PACIFIC WINGS: Oahu-Molokai-Maui-Hawaii', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (17, NULL, NULL, N'WINAIR / WINDWARD ISLANDS AIRWAYS INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (18, N'A.', N'Haziza', N'NEW CONCEPTS - CANADA', N'1595 Calverton Court', N'Mississauga', N'ON', N'L5G 2W4', N' ', N'9052748508', N'9052714603', N'alhaziza@newconcepts.ca', N'http://www.newconcepts.ca', N'ACTAPGY', 69)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (19, N'A.', N'Haziza', N'DIVI RESORTS', N'1595 Calverton Court', N'Mississauga', N'ON', N'L5G 2W4', N' ', N'9052748508', N'9052714603', N'alhaziza@newconcepts.ca', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (20, N'A.', N'Haziza', N'TIMBERWOODS VACATION VILLAS', N'7964 Timberwood Circle', N'Sarasota', N'FL', N'34238', N'USA', N'9419234966', N'9419243109', N'reserve@timberwoods.com', N'www.timberwoods.com', NULL, 69)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (26, N'Nick', N'Kissanis', N'AMALIA HOTELS (GREECE)', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (27, N'Nick', N'Kissanis', N'CHAT/TRAVELINE', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (28, N'Nick', N'Kissanis', N'CHAT TOURS', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (47, N'Dr. Carlos', N'Pechtel de A', N'GLOBAL QUEST', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (48, N'Dr. Carlos', N'Pechtel de A', N'MARINE EXPEDITIONS', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (49, N'Dr. Carlos', N'Pechtel de A', N'AMAZON RIVER CRUISES', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (51, NULL, NULL, N'EUROPE RIVER CRUISES/CROISI EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (52, NULL, NULL, N'QUARK EXPEDITIONS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (53, N'Dr. Carlos', N'Pechtel de A', N'AVILA TOURS INC.', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', N'ACTAPGY', 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (56, NULL, NULL, N'TUMBACO GALAPAGOS YACHT CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (65, NULL, NULL, N'CUBA CRUISE CORPORATION', N'13 Hazelton Ave', N'Toronto', N'ON', N'M5R 2E1', N' ', N'4169642569', N'4169645644', N'cuba@blythtravel.com', N'http://www.cubacruising.com', N'PGY', 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (66, N'Sam', N'Blyth', N'BLYTH & COMPANY TRAVEL LTD.', N'13 Hazelton Ave', N'Toronto', N'ON', N'M5R 2E1', N' ', N'4169642569', N'4169643416', N'blythco@blythtravel.com', N'http://www.blythtravel.com', N'PGY', 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (67, NULL, NULL, N'THE ROYAL SCOTSMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (68, NULL, NULL, N'THE EASTERN & ORIENTAL EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (70, NULL, NULL, N'THE BRITISH PULLMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (71, NULL, NULL, N'THE VENICE SIMPLON ORIENT EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (73, NULL, NULL, N'MOUNTAIN TRAVEL *SOBEK', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (74, NULL, NULL, N'BACKROADS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (75, NULL, NULL, N'EXOTIC SUN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (113, N'M.', N'Pangallo', N'COMPAGNIA ITALIANA TURISMO INC', N'666 Sherbrooke W', N'Montreal', N'PQ', N'H3A 1E7', N' ', N'5148454310', N'5148459137', N'citmontreal@cittours.com', N' ', N'ACTAPGY', 323)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (114, NULL, NULL, N'ITALY/EURAILPASS/EUROPASS/GERMAN PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 323)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (121, N'Mary', N'Papamichael', N'CYPRUS AIRWAYS LTD', N'34-09 Broadway', N'Astoria', N'NY', N'11106', N'USA', N'7182676882', N'7182676885', N'kinisisusa@aol.com', N' ', NULL, 796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (123, N'Mary', N'Papamichael', N'KINISIS TRAVEL & TOURS', N'34-09 Broadway', N'Astoria', N'NY', N'11106', N'USA', N'7182676880', N'7182676885', N'kinisisusa@aol.com', N' ', NULL, 796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (127, NULL, NULL, N'BRITISH HERITAGE PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (128, N'Charlotte', N' Mikolaiczyk', N'DER TRAVEL SERVICE LTD', N'904 The East Mall', N'Toronto (Etobicoke)', N'ON', N'M9B 6K2', N' ', N'4166951209', N'4166951210', N'der@dercanada.com', N'http://www.dercanada.com', N'ACTAPGY', 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (129, NULL, NULL, N'EUROLINE BUS PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (131, N'Charlotte', N' Mikolaiczyk', N'DERRAIL - EUROPEAN RAIL SERVICES', N'904 The East Mall', N'Toronto (Etobicoke)', N'ON', N'M9B 6K2', N' ', N'4166951209', N'4166951210', N'der@dercanada.com', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (132, NULL, NULL, N'BENELUX PASS (BELGIUM LUXEMBOURG THE NETHERLANDS)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (133, NULL, NULL, N'BRITRAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (134, NULL, NULL, N'GREEK RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (135, NULL, NULL, N'EURAIL/EURO PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (136, NULL, NULL, N'BALKAN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (137, NULL, NULL, N'GERMAN RAIL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (138, NULL, NULL, N'EUROPEAN EAST PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (139, NULL, NULL, N'SCANRAIL NORWAY SWEDEN RAILPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (140, NULL, NULL, N'PARIS METRO PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (141, NULL, NULL, N'IBERIC FLEXIPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (142, NULL, NULL, N'SPAIN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (143, NULL, NULL, N'HOLLAND RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (144, NULL, NULL, N'ITALIAN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (145, NULL, NULL, N'AUSTRIAN RAILPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (146, NULL, NULL, N'LONDON VISITOR CARD', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (147, NULL, NULL, N'EUROSTAR SERVICES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (150, N'Joanne', N'Lundy', N'DISCOVER THE WORLD MARKETING', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (151, NULL, NULL, N'BRITISH MIDLAND', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (152, N'Joanne', N'Lundy', N'AEROMEXICO', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (153, N'Joanne', N'Lundy', N'AOM FRENCH AIRLINES', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (154, NULL, NULL, N'AMERICA WEST AIRLINES', N'4000 E Sky Harbor Blvd', N'Phoenix', N'AZ', N'85034', N' ', N'8002929378', NULL, N'toronto@discovertheworld.ca', N'http://www.americawest.com', NULL, 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (156, N'Joanne', N'Lundy', N'HYATT NORTH AMERICA/CARIBBEAN', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9052331234', N'9058918026', N'toronto@discovertheworld.ca', N'www.hyatt.com', N'PGY', 845)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (161, N'Angie', N'Lo', N'ELITE ORIENT TOURS INC.', N'170 University Ave', N'Toronto', N'ON', N'M5H 3B3', N' ', N'4169773026', N'4169773104', N' ', N' ', N'ACTAPGY', 908)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (165, N'Angie', N'Lo', N'JAPAN RAIL PASS', N'170 University Ave', N'Toronto', N'ON', N'M5H 3B3', N' ', N'4169773026', N'4169773104', N' ', N' ', NULL, 908)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (167, N'Aideen', N'Hennessy', N'ENCORE CRUISES', N'160 Bloor St E', N'Toronto', N'ON', N'M4W 1B9', N' ', N'4169602516', N'4169670303', N' ', N' ', N'ACTAPGY', 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (168, NULL, NULL, N'CUNARD LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (169, NULL, NULL, N'WINDSTAR CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (170, NULL, NULL, N'CELEBRITY CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (171, NULL, NULL, N'SEABOURN CRUISE LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (172, NULL, NULL, N'ORIENT LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (173, NULL, NULL, N'SILVERSEA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (174, NULL, NULL, N'STAR CLIPPERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (175, NULL, NULL, N'ROYAL CARIBBEAN INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (176, NULL, NULL, N'ROYAL OLYMPIC CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (177, NULL, NULL, N'HOLLAND AMERICA LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (178, NULL, NULL, N'RADISSON SEVEN SEAS CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (181, N'Maria', N'Conte', N'EUROCRUISES INC.', N'33 Little W 12th St', N'New York', N'NY', N'10014', N'USA', N'2126912099', N'2123664747', N'info@eurocruises.com', N'http://www.eurocruises.com', N'PGY', 1406)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (182, NULL, NULL, N'DELPHIN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (184, NULL, NULL, N'KRISTINA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (185, NULL, NULL, N'FRED. OLSEN CRUISE LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (186, N'Marcel', N'Paoli', N'EUROP-AUTO-VACANCES/HOLIDAYS', N'5174 Cote des Neiges', N'Montreal', N'PQ', N'H3T 1X8', N' ', N'5147353083', N'5143428802', N'europauto@netrover.com', N'http://www.europauto.qc.ca', N'ACTANEWP', 1028)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (187, NULL, NULL, N'EUROPCAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.europauto.qc.ca', NULL, 1028)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (188, N'M.', N'Schon', N'EXECUTIVE SUITES', N'Emerald Business Centre', N'Mississauga', N'ON', N'L5R 3K6', N' ', N'9055029550', N'9055020355', N'execsuit@idirect.com', N'http://www.execsuit.com', N'PGY', 1040)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (189, NULL, NULL, N'PARK SUITES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1040)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (210, N'Rochelle', N'Goldman', N'GOLDMAN MARKETING STRATEGY INC', N'80 St Clair Ave E', N'Toronto', N'ON', N'M4T 1N6', N' ', N'4169235705', N'4169235628', N'gms@on.aibn.com', N' ', N'PGY', 1205)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (211, N'Rochelle', N'Goldman', N'HEBRIDEAN ISLAND CRUISES: THE HEBRIDEAN PRINCESS', N'80 St Clair Ave E', N'Toronto', N'ON', N'M4T 1N6', N' ', N'4169235705', N'4169235628', N'gms@on.aibn.com', N' ', N'PGY', 1205)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (214, N'Bruce', N'Hodge', N'GOWAY TRAVEL LTD.', N'3284 Yonge St', N'Toronto', N'ON', N'M4N 3M7', N' ', N'4163221034', N'4163221109', N'res@goway.com', N'http://www.goway.com', N'ACTAPGY', 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (215, NULL, NULL, N'GREAT BARRIER REEF CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (216, NULL, NULL, N'FIJI (BLUE LAGOON) CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (217, NULL, NULL, N'YANTZE RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (219, N'Bruce', N'Hodge', N'AUSTRALIAN RAIL', N'3284 Yonge St', N'Toronto', N'ON', N'M4N 3M7', N' ', N'4163221034', N'4163221109', N'res@goway.com', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (221, NULL, NULL, N'AAT KINGS AUSTRALIAN TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (245, N'Marc', N'Vezina', N'TOURS MAISON - THE HOLIDAY NETWORK', N'2155 Guy St', N'Montreal', N'PQ', N'H3H 2R9', N' ', N'5149357103', N'5149854492', N' ', N'http://www.holidaynetwork.ca', N'ACTAPGY', 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (249, NULL, NULL, N'WOODS CAR RENTAL - BRITAIN', N' ', N' ', N' ', N' ', N' ', N'8002688354', N'4163671749', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (250, NULL, NULL, N'ALAMO RENT A CAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (251, NULL, NULL, N'DOLLAR HAWAII', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (252, NULL, NULL, N'AVIS RENT A CAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (257, NULL, NULL, N'KD RIVER CRUISES OF EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (258, NULL, NULL, N'DISNEY CRUISE LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (259, NULL, NULL, N'CRYSTAL CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (260, NULL, NULL, N'PRINCESS CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (261, NULL, NULL, N'SILVERSEA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (262, NULL, NULL, N'NORWEGIAN CRUISE LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (263, NULL, NULL, N'COSTA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (264, NULL, NULL, N'SUN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (266, N'Astrinos', N' Kozoronis', N'CARRIERS TRAVEL INTERNATIONAL INC. - THE HOLIDAY NETWORK', N'75 The Donway W', N'Toronto', N'ON', N'M3C 2E9', N' ', N'4164299000', N'4164297159', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (267, N'Leanda', N'Townsend', N'HOLIDAY HOUSE', N'26 Wellington St E 5th Fl', N'Toronto', N'ON', N'M5E 1S2', N' ', N'4163645100', N'4163671836', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (268, N'Leanda', N'Townsend', N'SIVER FERN - THE HOLIDAY NETWORK', N'26 Wellington St E 5th Fl', N'Toronto', N'ON', N'M5E 1S2', N' ', N'4163645100', N'4163671836', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (272, N'Erik', N'Elvejord', N'HOLLAND AMERICA LINE WESTOURS INC', N'300 Elliott Ave W', N'Seattle', N'WA', N'98119', N'USA', N'8004260327', N'2062863229', N' ', N' ', N'ACTAPGY', 1425)
GO
print 'Processed 100 total records'
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (274, NULL, NULL, N'WESTOURS INC.', N'300 Elliott Ave W', N'Seattle', N'WA', N'98119', N'USA', N'8004260327', N'2064260329', N' ', N' ', N'ACTAPGY', 1425)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (282, NULL, NULL, N'EVAN EVANS TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1542)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (283, N'Helen', N'Panagides', N'INSIGHT VACATIONS CANADA LTD.', N'2300 Yonge St', N'Toronto', N'ON', N'M4P 1E4', N' ', N'4164822116', N'4164824307', N' ', N' ', N'ACTAPGY', 1542)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (288, N'Jacques', N'Darcy', N'INTAIR TRANSIT', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142869747', N'5148437678', N' ', N' ', N'ACTANEWP', 1620)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (289, N'Jacques', N'Darcy', N'INTAIR VACATIONS', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142862800', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (290, N'Jacques', N'Darcy', N'BOOMERANG TOURS', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142866035', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (291, N'Jacques', N'Darcy', N'INTAIR VACATIONS / INTAIR USA / INTAIR CRUISES', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142862800', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (294, NULL, NULL, N'TALL SHIP CRUISES (MAINE THE CARIBBEAN SOUTH PACIFIC)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (295, NULL, NULL, N'IVARAN CRUISE LINE (FREIGHTER CRUISES)-SOUTH AMERICA/CARIBBEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (296, NULL, NULL, N'ZEUS TALL SHIP CRUISES-GREECE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (297, NULL, NULL, N'TEMPTRESS CRUISES-COSTA RICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (298, NULL, NULL, N'ARANUI CRUISES (FREIGHTER CRUISES) - TAHITI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (299, NULL, NULL, N'CROWN BLUE LINE/FRANCE CANAL & RIVER POWER BOATS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (300, NULL, NULL, N'AMAZING GRACE (FREIGHTER CRUISES)-CARIBBEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (301, N'Michael', N'Tomlinson', N'WINDJAMMER BAREFOOT CRUISES', N'200 10441-124th St', N'Edmonton', N'AB', N'T5N 1R7', N' ', N'7804825022', N'7804825328', N'islands@cruising.nu', N'http://www.cruising.nu', N'ACTAPGY', 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (302, N'Michael', N'Tomlinson', N'ISLANDS IN THE SUN CRUISES', N'200 10441-124th St', N'Edmonton', N'AB', N'T5N 1R7', N' ', N'7804825022', N'7804825328', N'islands@cruising.nu', N'http://www.cruising.nu', N'ACTAPGY', 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (303, NULL, NULL, N'NEILSON CYCLING HOLIDAYS-GREECE/TURKEY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (304, NULL, NULL, N'ISLANDS IN THE SUN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (305, NULL, NULL, N'SUNSAIL SAIL & STAY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (306, NULL, NULL, N'MOORINGS THE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (307, NULL, NULL, N'VIRGIN ISLANDS CHARTER YACHT LEAGUE CREWED YACHT HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (308, NULL, NULL, N'CLUB MARINER SAIL & STAY HOLIDAYS-ST. LUCIA/GRENADA/BVI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (309, NULL, NULL, N'NEILSON FLOTILLA SAILING-GREECE/TURKEY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (310, NULL, NULL, N'TRAWLERS IN PARADISE - CARIBBEAN USVI''S', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (311, NULL, NULL, N'VIKING TOURS AND TALL SHIP CRUISES OF GREECE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (312, NULL, NULL, N'WINDJAMMER BAREFOOT CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (313, NULL, NULL, N'DIVE BELIZE-AGGRESSOR DIVE FLEET', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (314, NULL, NULL, N'SUNSAIL YACHT CHARTERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (315, NULL, NULL, N'SOUTH FLORIDA SAILING SCHOOL & YACHT CHARTERS - FLORIDA KEYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (316, NULL, NULL, N'BAREBOAT YACHT CHARTERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (317, NULL, NULL, N'NEILSON CYCLING HOLIDAYS-DOMINICAN REPUBLIC/GRENADA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (318, NULL, NULL, N'SUNSAIL CLUB ANTIGUA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (319, NULL, NULL, N'HORIZON POWER/SAIL BVI''S', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (320, NULL, NULL, N'AGGRESSOR DIVE HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (321, NULL, NULL, N'HOSEASONS - UK CANALBOATS (U-DRIVE) FRANCE/EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (322, NULL, NULL, N'QUEENSLAND YACHT CHARTERS - AUSTRALIAN BARRIER REEF', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (323, NULL, NULL, N'COPPER SKY-NW PACIFIC', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (330, N'Kenny', N'Lee', N'JETPACIFIC HOLIDAYS INC.', N'120-8877 Odlin Cres', N'Richmond', N'BC', N'V6X 3Z7', N' ', N'6042148932', N'6042148933', N'jetpac@infoserve.net', N' ', N'ACTAPGY', 1713)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (331, NULL, NULL, N'BANGKOK AIRWAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (333, NULL, NULL, N'BALI HAI CRUISES - BALI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (334, NULL, NULL, N'STAR CRUISES - SINGAPORE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (342, N'Chris', N'Rivers', N'KLM ROYAL DUTCH AIRLINES', N'777 Bay St', N'Toronto', N'ON', N'M5G 2C8', N' ', N'4162045151', N'4162049708', N' ', N' ', N'ACTAPGY', 1766)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (343, NULL, NULL, N'NORTHWEST AIRLINES & KLM ROYAL DUTCH AIRLINES (NW/KL)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1766)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (357, N'Emile', N'Habib', N'LOTUS HOLIDAYS', N'792 Kennedy Rd', N'Toronto (Scarborough)', N'ON', N'M1K 2C8', N' ', N'4167517025', N'4167510608', N' ', N' ', N'PGY', 1859)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (359, NULL, NULL, N'NILE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1859)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (369, N'Corinne', N'Martin', N'MARKET SQUARE TOURS', N'273 Donald St', N'Winnipeg', N'MB', N'R3C 1M9', N' ', N'2049564279', N'2049490188', N'sales@gctc-mst.com', N'http://www.greatcanadiantravel.com', N'ACTAPGY', 1918)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (370, N'Corinne', N'Martin', N'THE GREAT CANADIAN TRAVEL COMPANY LTD', N'273 Donald St', N'Winnipeg', N'MB', N'R3C 1M9', N' ', N'2049490199', N'2049490188', N'sales@gctc-mst.com', N'http://www.greatcanadiantravel.com', NULL, 1918)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (371, N'Antonio', N'Alonso', N'MARKETING AHEAD', N'433 Fifth Ave.', N'New York', N'NY', N'10016', N'USA', N'2126869213', N'2126860271', N' ', N' ', N'PGY', 3273)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (372, NULL, NULL, N'PARADORES OF SPAIN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 3273)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (373, NULL, NULL, N'POUSADAS OF PORTUGAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 3273)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (375, N'S.R.', N'Vale', N'MARTINAIR SERVICES', N'111 Richmond St W', N'Toronto', N'ON', N'M5H 2G4', N' ', N'4163643672', N'4163643886', N' ', N' ', N'ACTAPGY', 3376)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (376, N'S.R.', N'Vale', N'MARTINAIR HOLLAND', N'111 Richmond St W', N'Toronto', N'ON', N'M5H 2G4', N' ', N'4163643672', N'4163643886', N' ', N' ', N'PGY', 3376)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (396, N'Pat', N'Nagel', N'NAGEL TOURS LTD', N'Edmonton Inn', N'Edmonton', N'AB', N'T5G 0X5', N' ', N'7804527345', N'7804786666', N' ', N'http://www.nageltours.com', N'PGY', 2140)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (397, N'Pat', N'Nagel', N'OKANAGAN VALLEY WINE TRAIN', N'Edmonton Inn', N'Edmonton', N'AB', N'T5G 0X5', N' ', N'7804888725', N'7804827666', N' ', N'http://www.okanaganwinetrain.com', N'PGY', 2140)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (419, NULL, NULL, N'HOTEL NARROW BOATS/UK', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (420, NULL, NULL, N'CROWN BLUE LINE FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (421, NULL, NULL, N'LOCABOAT - SELF-SKIPPERED PENICHETTES - EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (422, NULL, NULL, N'EUROPE RIVER CRUISES/CROISI EUROPE (ALSACE CROISIERES)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (423, NULL, NULL, N'CONTINENTAL WATERWAYS - HOTEL-BARGE CRUISES FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (424, NULL, NULL, N'BARGE CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (425, NULL, NULL, N'CANAL & RIVER CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (426, N'Janet', N'Pavlik', N'PAVLIK TRAVEL GROUP', N'2221 Panorama Dr', N'N Vancouver', N'BC', N'V7G 1V4', N' ', N'6049297911', N'6049240634', N'pavlik@infomatch.com', N'http://www.infomatch.com/~pavlik', N'PGY', 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (428, NULL, NULL, N'ANGLO WELSH SELF SKIPPERED BOATS(BRITAIN)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (429, NULL, NULL, N'IRELAND - SELF SKIPPERED CANAL BOATS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (430, NULL, NULL, N'HOLLAND - CANAL BOATING', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (431, NULL, NULL, N'CROWN BLUE LINE (FRANCE)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (434, N'Patricia', N'Fargeon', N'PLANET FRANCE INC.', N'7351 Victoria Park Ave', N'Markham', N'ON', N'L3R 3A5', N' ', N'9054796121', N'9054795411', N'planet.pat@sympatico.ca', N' ', N'PGY', 2466)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (435, N'Patricia', N'Fargeon', N'PLANET EUROPE GROUP', N'7351 Victoria Park Ave', N'Markham', N'ON', N'L3R 3A5', N' ', N'9054797069', N'9054795411', N'planet.pat@sympatico.ca', N' ', N'PGY', 2466)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (466, N'Gary C.', N'Sadler', N'UNIQUE VACATIONS (CANADA) INC.', N'4211 Yonge St', N'Toronto (North York)', N'ON', N'M2P 2A9', N' ', N'4162230028', N'4162233306', N' ', N' ', N'ACTA', 2588)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (467, NULL, NULL, N'SANDALS AND BEACHES RESORTS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', N'ACTA', 2588)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (476, N'Ash', N'Mukherjee', N'ESPRIT/SERVICENTRE HOLIDAYS', N'5945 Airport Rd', N'Mississauga', N'ON', N'L4V 1R9', N' ', N'9056733333', N'9056733327', N'tscash@aol.com', N'http://www.espritvacations.com', N'PGY', 2592)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (477, NULL, NULL, N'CLUBAVANTAGE GROUP TRAVE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.espritvacations.com', NULL, 2592)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (496, N'Julio', N'Erhart', N'HOTEL NETS', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169214012', N'4169698916', N'southwin@ican.net', N' ', NULL, 2827)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (497, N'Julio', N'Erhart', N'SOUTH WIND TOURS LTD.', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169214012', N'4169698916', N'southwin@ican.net', N' ', NULL, 2827)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (500, N'Mela', N'Pascoe', N'SUN & LEISURE TRAVEL CORP', N'401 The West Mall', N'Toronto (Etobicoke)', N'ON', N'M9C 5J5', N' ', N'4166265199', N'4166200009', N' ', N' ', N'PGY', 2938)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (501, NULL, NULL, N'CANADIAN TOURS INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 2938)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (517, NULL, NULL, N'YANGTZE RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (518, NULL, NULL, N'EASTERN & ORIENTAL EXPRESS/ROAD TO MANDALAY CRUISE BURMA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (519, NULL, NULL, N'STAR CRUISE LINES-SINGAPORE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (520, NULL, NULL, N'STAR CLIPPER-ASIA-CARIBBEAN-MEDITERRANEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (521, N'Miki', N'Friendly', N'TOURCAN VACATIONS INC', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', N'ACTAPGY', 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (522, N'Miki', N'Friendly', N'ROVOS RAIL - SOUTH AFRICA', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (523, NULL, NULL, N'ROYAL SCOTSMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (524, NULL, NULL, N'VENICE SIMPLON - ORIENT - EXPRESS - LONDON/VENICE OR V.V. EASTERN & ORI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (525, N'Miki', N'Friendly', N'VENICE SIMPLON -- ORIENT EXPRESS - EUROPE EASTERN & ORIENTAL ORIENT EXP', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvac', N' ', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (526, N'Miki', N'Friendly', N'PALACE ON WHEELS - INDIA', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (532, N'Elisabeth', N'Dupuis', N'ALIOTOURS', N'1410 Stanley St', N'Montreal', N'PQ', N'H3A 1P8', N' ', N'5142871066', N'5148435680', N' ', N' ', N'ACTA', 2998)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (533, N'Elisabeth', N'Dupuis', N'ALIO TOURS DIV. TOURS NEW YORK', N'1410 Stanley St', N'Montreal', N'PQ', N'H3A 1P8', N' ', N'5142871066', N'5148435680', N' ', N' ', N'ACTA', 2998)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (538, N'Joaquin', N'Murillo', N'TRANS WORLD AIRLINES INC. (TWA)', N'1751 Richardson St', N'Montreal', N'PQ', N'H3K 1G6', N' ', N'5148448242', N'5148440921', N'aviaction@median-aviation.com', N'http://www.median-aviation.com', N'PGY', 3119)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (540, N'Joaquin', N'Murillo', N'AVIACTION', N'Airway Centre 1 5955 Airport', N'Mississauga', N'ON', N'L4V 1R9', N' ', N'9056778242', N'9056779394', N'aviaction@median-aviation.com', N'http://www.median-aviation.com', N'PGY', 3119)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (550, N'Terri', N'Ronneseth', N'TREK AIR', N'8412 - 109 St', N'Edmonton', N'AB', N'T6G 1E2', N' ', N'7804399118', N'7804335494', N'airfares@trekholidays.com', N'http://www.trekholidays.com', N'ACTAPGY', 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (551, N'Terri', N'Ronneseth', N'TREK HOLIDAYS', N'8412 - 109 St', N'Edmonton', N'AB', N'T6G 1E2', N' ', N'7804399118', N'7804335494', N'adventures@trekholidays.com', N'http://www.trekholidays.com', N'ACTAPGY', 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (552, NULL, NULL, N'KARIBU SAFARIS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (553, NULL, NULL, N'PEREGRINE ADVENTURES/GECKO ADVENTURES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (554, NULL, NULL, N'EXPLORE WORLDWIDE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (555, NULL, NULL, N'DRAGOMAN HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (556, NULL, NULL, N'KIRRA TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (557, NULL, NULL, N'IMAGINATIVE TRAVELLER', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (558, NULL, NULL, N'ENCOUNTER OVERLAND', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (568, N'Vicky', N'Alberto', N'VIP INTERNATIONAL', N'727-7th Ave SW', N'Calgary', N'AB', N'T2P 0Z5', N' ', N'4032693566', N'4032612046', N'info@vipintcorp.com', N' ', N'PGY', 3633)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (569, N'Kelly', N'Blake', N'ALL SUITES INTERNATIONAL', N'727-7th Ave SW', N'Calgary', N'AB', N'T2P 0Z5', N' ', N'4032664776', N'4032665228', N'info@vipintcorp.com', N' ', N'PGY', 3633)
GO
print 'Processed 200 total records'
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (586, N'Jeronimo', N'Rius', N'BONANZA HOLIDAYS', N'1224 Stanley St', N'Montreal', N'PQ', N'H3B 2S7', N' ', N'5143939501', N'5143939504', N'bonanza@globalserve.net', N' ', N'ACTAPGY', 3549)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (598, NULL, NULL, N'AUSTRIA HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (599, NULL, NULL, N'CEDOK CZECH TOURIST/TRAVEL AGENCY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (600, NULL, NULL, N'VIENNA INTERNATIONAL HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (601, NULL, NULL, N'DANUBIUS SPA HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (602, NULL, NULL, N'HUNGARIAN HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (604, NULL, NULL, N'GRAYLINE FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (605, NULL, NULL, N'GRAYLINE AUSTRIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (606, NULL, NULL, N'GRAYLINE ITALY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (607, NULL, NULL, N'GRAYLINE SPAIN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (609, N'Madeline', N'Ferenzy', N'BLUE DANUBE HOLIDAYS', N'80 Richmond St W', N'Toronto', N'ON', N'M5H 2A4', N' ', N'4163625000', N'4163628024', N'bluedanube@bluedanubeholidays.com', N'http://www.bluedanubeholidays.com', N'PGY', 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (610, NULL, NULL, N'MAHART-HYDROFOIL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (620, N'Susan', N'Savoie', N'GOLDEN ESCAPES', N'75 The Donway W', N'Toronto', N'ON', N'M3C 2E9', N' ', N'4164477683', N'4164474824', N'admin@goldenescapes.com', N'http://www.goldenescapes.com', N'PGY', 3600)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (621, NULL, NULL, N'BACK ROADS TOURING COMPANY of Great Britain', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goldenescapes.com', NULL, 3600)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (622, N'Sandra', N'Mirkovic', N'G.A.P ADVENTURES INC', N'The Great Adventure People', N'Toronto', N'ON', N'M5H 3H1', N' ', N'4162600999', N'4162601888', N'adventure@gap.ca', N'http://www.gap.ca', N'ACTAPGY', 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (623, NULL, NULL, N'TREK AMERICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (624, NULL, NULL, N'EXODUS WORLDWIDE ADVENTURE HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (625, NULL, NULL, N'TREK AUSTRALIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (626, NULL, NULL, N'INTREPID SOUTH EAST ASIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (627, NULL, NULL, N'GUERBA EXPEDITIONS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (628, NULL, NULL, N'AMADABLAM ADVENTURES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (639, N'Paul', N'Chu', N'CHINA TRAVEL SERVICE (CANADA) INC', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', N'ACTAPGY', 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (641, N'Paul', N'Chu', N'CHINA TRAVEL AIR SERVICE HONG KONG LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (642, N'Paul', N'Chu', N'SHENZHEN AIRLINE CHINA', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (644, N'Paul', N'Chu', N'YANGTZE RIVER SPLENDID CHINA CRUISE LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (646, N'Paul', N'Chu', N'CHINA TRAVEL HOTEL MANAGEMENT SERVICES HONG KONG LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (648, N'Paul', N'Chu', N'CHINA NATIONAL RAILWAY', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (662, NULL, NULL, N'CUNARD LINES', N'6100 Blue Lagoon Drive', N'Miami', N'FL', N'33126', N' ', N'8007286273', NULL, N' ', N'http://www.cunard.com', N'ACTAPGY', 3650)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (681, N'Nigel', N'Wood', N'TRAVEL STUDIO', N'Suite 890', N'Vancouver', N'BC', N'V6C 1N5', N' ', N'8005656670', N'8006652998', N'tsyvr@baxter.net', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (683, NULL, NULL, N'ROVOS RAIL - SOUTH AFRICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (684, NULL, NULL, N'BLUE TRAIN - SOUTH AFRICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (706, N'Randy', N'Anger', N'ANHEUSER-BUSCH ADVENTURE PARKS', N'358 Broadway Ave', N'Toronto', N'ON', N'M4P 1X2', N' ', N'4164839410', N'4164835982', N' ', N' ', N'PGY', 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (707, NULL, NULL, N'BUSCH GARDENS TAMPA BAY, FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (708, NULL, NULL, N'ADVENTURE ISLAND TAMPA BAY, FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (709, NULL, NULL, N'SESAME PLACE, LANGHORNE PENNSYLVANIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (710, NULL, NULL, N'SEAWORLD ADVENTURE PARK, ORLANDO FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (711, NULL, NULL, N'SEAWORLD ADVENTURE PARK, CLEVELAND OHIO', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (712, NULL, NULL, N'SEAWORLD ADVENTURE PARK, SAN DIEGO CALIFORNIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (713, NULL, NULL, N'BUSCH GARDENS, WILLIAMSBURG VIRGINIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (714, NULL, NULL, N'WATER COUNTRY USA, WILLIAMSBURG VIRGINIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (715, NULL, NULL, N'SEAWORLD ADVENTURE PARK, SAN ANTONIO TEXAS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (716, NULL, NULL, N'DISCOVERY COVE, ORLANDO FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (726, N'Maybelle', N'Ravin', N'THE RMR GROUP INC', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164858724', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (727, N'Maybelle', N'Ravin', N'KLM uk/buzz', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164858724', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (728, N'Jackie', N'Lutz', N'THE RMR GROUP INC', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164844864', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (733, N'Lourdes', N'Freire', N'SKYWAYS INTERNATIONAL', N'486 College St', N'Toronto', N'ON', N'M6G 1A4', N' ', N'4169238949', N'4169601339', N'skyways@netcom.ca', N'http://www.addictravel.com', N'PGY', 5492)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (734, N'Lourdes', N'Freire', N'AEROCONTINENTE (CODE N6) PERUVIAN AIRLINES', N'486 College St', N'Toronto', N'ON', N'M6G 1A4', N' ', N'4169238949', N'4169601339', N'skyways@netcom.ca', N'http://www.addictravel.com', N'PGY', 5492)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (739, N'Hope', N'Burridge', N'TRAVEL BY RAIL', N'34 Flintridge Rd', N'Toronto (Scarborough)', N'ON', N'M1P 1G3', N' ', N'4167010756', N'4167010751', N'travelbyrail@hotmail.com', N'http://www.travelbyrail.com', N'PGY', 5777)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (740, NULL, NULL, N'BAUDHHA PARIKRAMA EXPRESS - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (741, NULL, NULL, N'PALACE ON WHEELS - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (742, NULL, NULL, N'ROYAL ORIENT - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (743, NULL, NULL, N'RAZDAN HOLIDAYS (INDIA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (744, N'Paulo', N'Karbach', N'REPWORLD INC', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', N'ACTAPGY', 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (745, N'Paulo', N'Karbach', N'LTU INTERNATIONAL AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (746, N'Paulo', N'Karbach', N'LLOYD AEREO BOLIVIANO', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (747, N'Paulo', N'Karbach', N'ACES (Aerolineas Centrales De Colombia S.A.)', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (748, N'Paulo', N'Karbach', N'HARBOUR AIR SEAPLANES', N'4760 Inglis Dr', N'Richmond', N'BC', N'V7B 1W4', N' ', N'6042783478', N'6042789897', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (749, N'Paulo', N'Karbach', N'HELIUSA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (750, N'Paulo', N'Karbach', N'ECUATORIANA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (751, N'Paulo', N'Karbach', N'SRI LANKAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (752, N'Paulo', N'Karbach', N'AERO CALIFORNIA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (753, N'Paulo', N'Karbach', N'LAUDA AIR', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (754, N'Paulo', N'Karbach', N'SURINAM AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (755, N'Paulo', N'Karbach', N'ETHIOPIAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (756, N'Paulo', N'Karbach', N'ICELANDAIR', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (757, N'Paulo', N'Karbach', N'MERIDIANA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (758, N'Paulo', N'Karbach', N'ASIANA AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (759, N'Paulo', N'Karbach', N'TURKISH AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (760, N'Paulo', N'Karbach', N'TAM BRAZILIAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (761, N'Paulo', N'Karbach', N'GHANA AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (764, N'Tina', N'Myers', N'RESORT MARKETING INC', N'19495 Biscayne Blvd', N'Aventura', N'FL', N'33180-2', N'USA', N'8004320221', N'3059320023', N'radcblebch@aol.com', N'http://www.radisson.com/nassaubs', N'ACTAPGY', 5827)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (765, N'Tina', N'Myers', N'RESORT MARKETING', N'19495 Biscayne Blvd', N'Aventura', N'FL', N'33180-2', N'USA', N'8004320221', N'3059320023', N'radcblebch@aol.com', N'http://www.radisson.com/nassaubs', N'ACTAPGY', 5827)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (766, NULL, NULL, N'RADISSON CABLE BEACH RESORT', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5827)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (767, N'Catherine', N'Evans', N'TOURS OF EXPLORATION', N'PO Box 48225', N'Vancouver', N'BC', N'V7X 1N8', N' ', N'6048867300', N'6048867304', N'info@toursexplore.com', N'http://www.toursexplore.com', N'PGY', 5857)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (768, NULL, NULL, N'DIRECTIONS IN TRVL SPECIALTY TRS INC', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.toursexplore.com', NULL, 5857)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (769, N'Gary', N'Murtagh', N'PASSAGES EXPEDITIONS', N'597 Markham St', N'Toronto', N'ON', N'M6G 2L7', N' ', N'4165885000', N'4165889839', N'eldertreks@eldertreks.com', N'http://www.eldertreks.com', N'PGY', 6346)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (770, N'Gary', N'Murtagh', N'ELDERTREKS', N'597 Markham St', N'Toronto', N'ON', N'M6G 2L7', N' ', N'4165885000', N'4165889839', N'eldertreks@eldertreks.com', N'http://www.eldertreks.com', N'PGY', 6346)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (776, N'Nilufer', N'Mama', N'GULF AIR', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (777, N'Nilufer', N'Mama', N'AEROMAR', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (778, N'Nilufer', N'Mama', N'AERO ASIA', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (779, N'Nilufer', N'Mama', N'JET AIRWAYS', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (780, N'Nilufer', N'Mama', N'TRADE WINDS ASSOCIATES CANADA INC', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', N'ACTAPGY', 6505)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (781, N'D.', N'Soota', N'LTI TOURS', N'719 Yonge St', N'Toronto', N'ON', N'M4Y 2B5', N' ', N'4169629661', N'4169625910', N'info@ltitours.com', N'http://www.ltitours.com', N'PGY', 6550)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (783, NULL, NULL, N'EASTERN & ORIENTAL EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.ltitours.com', NULL, 6550)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (784, NULL, NULL, N'PALACE ON WHEELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.ltitours.com', NULL, 6550)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (786, N'Ashraf', N'Khan', N'BIMAN BANGLADESH AIRLINES', N'206 Bloor St W', N'Toronto', N'ON', N'M5S IT8', N' ', N'4169200110', N'4169209598', N' ', N' ', N'PGY', 6873)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (788, N'Ashraf', N'Khan', N'AIR EXPRESS TRAVEL INC', N'206 Bloor St W', N'Toronto', N'ON', N'M5S IT8', N' ', N'4169200110', N'4169209598', N' ', N' ', N'PGY', 6873)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (822, N'Rosie', N'Melkonian', N'WORLD ACCESS MARKETING', N'33 Blue Ridge Rd', N'Toronto (North York)', N'ON', N'M2K 1R8', N' ', N'4162235506', N'4162220319', N'reservations@outrigger.com', N' ', N'PGY', 7244)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (823, N'Rosie', N'Melkonian', N'OUTRIGGER HOTELS & RESORTS', N'33 Blue Ridge Rd', N'Toronto (North York)', N'ON', N'M2K 1R8', N' ', N'4162235506', N'4162220319', N'reservations@outrigger.com', N' ', N'PGY', 7244)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (825, NULL, NULL, N'BALKAN AIRLINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 7377)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (826, N'Subash', N'Chauhan', N'MAJESTIC TOURS', N'545 N Rivermede Rd', N'Concord', N'ON', N'L4K 4H1', N' ', N'9056604704', N'9056603055', N' ', N' ', N'PGY', 7377)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (834, N'Robert', N'Townshend', N'MUSTIQUE AIRWAYS', N'2011 Lawrence Ave W', N'Toronto', N'ON', N'M9N 3V3', N' ', N'4162407700', N'4162407701', N'travel@totaladvantage.com', N' ', N'PGY', 11160)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (835, N'Robert', N'Townshend', N'TOTAL ADVANTAGE TRAVEL & TOURS INC', N'2011 Lawrence Ave W', N'Toronto', N'ON', N'M9N 3V3', N' ', N'4162407700', N'4162407701', N'travel@totaladvantage.com', N' ', N'PGY', 11160)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (839, N'Mary', N'Warner', N'EXCLUSIVE TOURS', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'et@merit.ca', N' ', N'PGY', 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (840, NULL, NULL, N'DANUBE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (841, NULL, NULL, N'CONTINENTAL WATERWAYS - HOTEL BARGE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (842, NULL, NULL, N'VIKING RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (843, NULL, NULL, N'BARGE CANAL & RIVER CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (845, NULL, NULL, N'EUROPEAN WATERWAYS/LUXURY EUROPEAN BARGE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (846, NULL, NULL, N'PETER DEILMANN EUROPAMERICA CRUISES:', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (849, NULL, NULL, N'UNIWORLD EUROPE RIVER CRUISES & WATERWAYS OF RUSSIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
GO
print 'Processed 300 total records'
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (862, N'Ross', N'de Gregorio', N'MANDITOURS - ITALY', N'9625 Yonge St', N'Richmond Hill', N'ON', N'L4C 5T2', N' ', N'9055088190', N'9057372978', N'mandi@italia-magica.com', N' ', N'PGY', 9785)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (867, N'Stephen', N'Yo', N'KINTETSU INTERNATIONAL EXPRESS', N'1550 Enterprises Rd', N'Mississauga', N'ON', N'L4W 4P4', N' ', N'9056708710', N'9056702238', N'outbound@kiecan.com', N'http://www.kiecan.com/outbound', N'PGY', 9766)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (868, N'Stephen', N'Yo', N'JAPAN RAIL PASS', N'1550 Enterprises Rd', N'Mississauga', N'ON', N'L4W 4P4', N' ', N'9056708710', N'9056702238', N'outbound@kiecan.com', N'http://www.kiecan.com/outbound', N'PGY', 9766)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (872, N'Timo', N'Jokinen', N'SCANDITOURS', N'191 Eglinton Ave E', N'Toronto', N'ON', N'M4P 1K1', N' ', N'4164823006', N'4164829447', N'toronto@scanditours.com', N'http://www.scanditours.com', N'PGY', 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (873, NULL, NULL, N'STENA LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (874, NULL, NULL, N'GOTA CANAL (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (875, NULL, NULL, N'DFDS SEAWAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (876, NULL, NULL, N'VIKING LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (877, NULL, NULL, N'ESTLINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (878, NULL, NULL, N'FRED OLSEN LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (886, N'Vonna', N'McDonald', N'BONAVENTURE TOURS', N'205-221 W Esplanade', N'N Vancouver', N'BC', N'V7M 3J3', N' ', N'6049907390', N'6049907394', N'info@bonaventuretours.com', N'http://www.bonaventuretours.com', N'PGY', 9323)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (887, N'Vonna', N'McDonald', N'BONAVENTURE TOURS - UK & IRELAND - CANAL BOAT CHARTERS', N'205-221 W Esplanade', N'N Vancouver', N'BC', N'V7M 3J3', N' ', N'6049907390', N'6049907394', N'info@bonaventuretours.com', N'http://www.bonaventuretours.com', N'PGY', 9323)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (888, N'Jim', N'Cohen', N'HOTELINK', N'1027 Yonge St', N'Toronto', N'ON', N'M4W 2K9', N' ', N'4169232003', N'4169442245', N'info@skylinkholidays.com', N' ', N'PGY', 9396)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (895, N'Mari', N'Abe', N'JTB INTERNATIONAL (CANADA) LTD', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (897, N'Mari', N'Abe', N'JAPAN RAIL PASS', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (899, N'Mari', N'Abe', N'SUNRISE TOURS', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (908, N'Eric', N'Douay', N'D-TOUR MARKETING', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (909, N'Eric', N'Douay', N'RIVAGES CROISIERES THE CARIBBEAN INTIMATE YACHT CRUISES', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketin', NULL, 11163)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (910, N'Eric', N'Douay', N'CONCORDE HOTELS (WORLDWIDE)', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (911, N'Eric', N'Douay', N'PRIMEREVE ''ALL-SUITE'' HOTEL (Martinique)', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (912, N'Eric', N'Douay', N'CHATEAUX & HOTELS DE FRANCE', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (913, N'Michael', N'Merrithew', N'MERIT TRAVEL GROUP INC', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'golf@merit.ca', N' ', N'PGY', 11172)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (914, N'Michael', N'Merrithew', N'GOLF HOLIDAYS', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'golf@merit.ca', N' ', N'PGY', 11172)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (938, N'Hugo', N'Maggi', N'GRUPO TACA', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169682222', N'4169680363', N' ', N'http://www.grupotaca.com', N'PGY', 11174)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (939, NULL, NULL, N'LACSA AIRLINES OF COSTA RICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11174)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (942, N'Loreen', N'Walter', N'DKM COACH LINES LTD', N'1908 Spruce Hill Rd', N'Pickering', N'ON', N'L1V 1S7', N' ', N'4164104680', N'4168313384', N'dkmcl@home.com', N'http://www.dkmtravel.com', N'PGY', 11237)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (943, NULL, NULL, N'CASINO DIRECT', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11237)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (957, NULL, NULL, N'ALITOURS CAR RENTAL BY HERTZ', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11156)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (958, N'Tony', N'Veca', N'ALITOURS INTERNATIONAL INC.', N'792 St. Clair Ave W', N'Toronto', N'ON', N'M6C 1B6', N' ', N'4166537751', N'4166539010', N'alitours@baxter.net', N'http://www.alitours.com', N'PGY', 11156)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1113, N'Cindy', N' Harris', N'TRANS SIBERIAN RAILWAY', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6046061830', N'6047378854', N'adventure@freshtracks.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1114, N'Cindy', N' Harris', N'GO ACTIVE VACATIONS', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6046061830', N'6047378854', N'team@goactivevacations.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1115, N'Cindy', N' Harris', N'FRESH TRACKS CANADA', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6047378743', N'6047185110', N'adventure@freshtracks.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1126, N'Bashiruddin', N'Ahmed', N'SAAAI TRAVEL INC.', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149311100', N'5149311200', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1127, N'Bashiruddin', N'Ahmed', N'BIMAN BANGLADESH AIRLINES', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149311100', N'5149311200', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1128, N'Bashiruddin', N'Ahmed', N'SAAAI TRAVEL', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149314070', N'5149339992', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1129, N'Bashiruddin', N'Ahmed', N'S.I. TRAVELS', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149314070', N'5149339992', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1158, N'Kristin', N'Karbach', N'A & TIC SUPPORT INC.', N'80 John Stiver Cres', N'Markham', N'ON', N'L3R 9B3', N' ', N'9059439763', N'9059439764', N'elcotour-na@netcom.ca', N' ', N'PGY', 13596)
INSERT [dbo].[SupplierContact] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1159, N'Kristin', N'Karbach', N'ELCOTOUR - BRAZIL TOUR SPECIALISTS', N'80 John Stiver Cres', N'Markham', N'ON', N'L3R 9B3', N' ', N'9059439763', N'9059439764', N'elcotour-na@netcom.ca', N' ', N'PGY', 13596)
/****** Object:  Table [dbo].[Product_Supplier]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Supplier](
	[ProductupplierId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [aaaaaProduct_Supplier_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Product Supplier ID] ON [dbo].[Product_Supplier] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductId] ON [dbo].[Product_Supplier] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductProduct_Supplier1] ON [dbo].[Product_Supplier] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductupplierId] ON [dbo].[Product_Supplier] 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SupplierProduct_Supplier1] ON [dbo].[Product_Supplier] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product_Supplier] ON
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (1, 1, 5492)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (2, 1, 6505)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (3, 8, 796)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (4, 1, 4196)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (6, 8, 1040)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (7, 1, 3576)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (8, 3, 845)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (9, 7, 828)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (10, 8, 5777)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (11, 8, 5827)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (12, 5, 3273)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (13, 1, 80)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (14, 8, 9396)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (15, 8, 3589)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (16, 1, 69)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (19, 1, 3376)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (20, 3, 323)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (23, 1, 3549)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (24, 5, 1918)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (25, 3, 11156)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (26, 8, 8837)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (28, 8, 8089)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (29, 1, 1028)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (30, 1, 2466)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (31, 5, 1406)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (32, 3, 1416)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (33, 5, 13596)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (34, 1, 9323)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (35, 5, 11237)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (36, 8, 9785)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (37, 5, 11163)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (39, 9, 11172)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (40, 8, 9285)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (41, 5, 3622)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (42, 5, 9323)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (43, 1, 1766)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (44, 1, 3212)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (45, 9, 11174)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (46, 8, 3600)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (47, 9, 11160)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (48, 8, 11549)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (49, 4, 2827)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (50, 9, 12657)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (51, 8, 7377)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (52, 5, 6550)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (53, 4, 1634)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (54, 8, 2140)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (55, 3, 317)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (56, 1, 1205)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (57, 8, 3633)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (58, 2, 6873)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (59, 1, 7377)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (60, 5, 7244)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (61, 3, 2938)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (63, 2, 5081)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (64, 1, 3119)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (65, 9, 2998)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (66, 8, 3576)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (67, 8, 2592)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (68, 4, 100)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (69, 9, 2987)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (70, 4, 1005)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (71, 4, 908)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (72, 1, 5796)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (73, 10, 2386)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (74, 1, 3650)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (75, 4, 1425)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (76, 8, 6346)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (78, 1, 1685)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (79, 2, 2588)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (80, 6, 1620)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (81, 4, 1542)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (82, 5, 9766)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (83, 5, 5228)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (84, 6, 9396)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (87, 1, 1859)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (90, 1, 1713)
INSERT [dbo].[Product_Supplier] ([ProductupplierId], [ProductId], [SupplierId]) VALUES (93, 4, 3650)
SET IDENTITY_INSERT [dbo].[Product_Supplier] OFF
/****** Object:  Table [dbo].[Agent]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[AgentId] [int] IDENTITY(1,1) NOT NULL,
	[AgtFirstName] [nvarchar](20) NULL,
	[AgtMiddleInitial] [nvarchar](5) NULL,
	[AgtLastName] [nvarchar](20) NULL,
	[AgtBusPhone] [nvarchar](20) NULL,
	[AgtEmail] [nvarchar](50) NULL,
	[AgtPosition] [nvarchar](20) NULL,
	[AgencyId] [int] NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[AgentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (1, N'Janet', NULL, N'Delton', N'(403) 210-7801', N'janet.delton@travelexperts.com', N'Senior Agent', 1)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (2, N'Judy', NULL, N'Lisle', N'(403) 210-7802', N'judy.lisle@travelexperts.com', N'Intermediate Agent', 1)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (3, N'Dennis', N'C.', N'Reynolds', N'(403) 210-7843', N'dennis.reynolds@travelexperts.com', N'Junior Agent', 1)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (4, N'John', NULL, N'Coville', N'(403) 210-7823', N'john.coville@travelexperts.com', N'Intermediate Agent', 1)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (5, N'Janice', N'W.', N'Dahl', N'(403) 210-7865', N'janice.dahl@travelexperts.com', N'Senior Agent', 1)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (6, N'Bruce', N'J.', N'Dixon', N'(403) 210-7867', N'bruce.dixon@travelexperts.com', N'Intermediate Agent', 2)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (7, N'Beverly', N'S.', N'Jones', N'(403) 210-7812', N'beverly.jones@travelexperts.com', N'Intermediate Agent', 2)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (8, N'Jane', NULL, N'Merrill', N'(403) 210-7868', N'jane.merrill@travelexperts.com', N'Senior Agent', 2)
INSERT [dbo].[Agent] ([AgentId], [AgtFirstName], [AgtMiddleInitial], [AgtLastName], [AgtBusPhone], [AgtEmail], [AgtPosition], [AgencyId]) VALUES (9, N'Brian', N'S.', N'Peterson', N'(403) 210-7833', N'brian.peterson@travelexperts.com', N'Junior Agent', 2)
SET IDENTITY_INSERT [dbo].[Agent] OFF
/****** Object:  Table [dbo].[TravelPackage_Product_Supplier]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPackage_Product_Supplier](
	[TravelPackageId] [int] NOT NULL,
	[ProductupplierId] [int] NOT NULL,
 CONSTRAINT [aaaaaTravelPackage_Product_Supplier_PK] PRIMARY KEY NONCLUSTERED 
(
	[TravelPackageId] ASC,
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TravelPackageTravelPackage_Product_Supplier] ON [dbo].[TravelPackage_Product_Supplier] 
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Product_SupplierTravelPackage_Product_Supplier] ON [dbo].[TravelPackage_Product_Supplier] 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductupplierId] ON [dbo].[TravelPackage_Product_Supplier] 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (1, 65)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (1, 93)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (2, 32)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (2, 33)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (2, 90)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (3, 28)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (3, 82)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (3, 87)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (4, 9)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (4, 65)
INSERT [dbo].[TravelPackage_Product_Supplier] ([TravelPackageId], [ProductupplierId]) VALUES (4, 84)
/****** Object:  UserDefinedFunction [dbo].[Find duplicates for Product_Supplier]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Find duplicates for Product_Supplier] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Product_Supplier.ProductId, Product_Supplier.SupplierId, Product_Supplier.ProductupplierId
FROM Product_Supplier
WHERE (((Product_Supplier.ProductId) In (SELECT ProductId FROM Product_Supplier As Tmp GROUP BY ProductId,SupplierId HAVING count(*)>1  And SupplierId = Product_Supplier.SupplierId)))
ORDER BY Product_Supplier.ProductId, Product_Supplier.SupplierId)
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustFirstName] [nvarchar](25) NOT NULL,
	[CustLastName] [nvarchar](25) NOT NULL,
	[CustAddress] [nvarchar](75) NOT NULL,
	[CustCity] [nvarchar](50) NOT NULL,
	[CustProv] [nvarchar](2) NOT NULL,
	[CustPostal] [nvarchar](7) NOT NULL,
	[CustCountry] [nvarchar](25) NULL,
	[CustHomePhone] [nvarchar](20) NULL,
	[CustBusPhone] [nvarchar](20) NOT NULL,
	[CustEmail] [nvarchar](50) NOT NULL,
	[AgentId] [int] NULL,
 CONSTRAINT [aaaaaCustomer_PK] PRIMARY KEY NONCLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmployeeCustomer] ON [dbo].[Customer] 
(
	[AgentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (104, N'Laetia', N'Enison', N'144-61 87th Ave, NE', N'Calgary', N'AB', N'T2J 6B6', N'Canada', N'4032791223', N'4032557865', N'                                                  ', 4)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (105, N'Angel', N'Moskowitz', N'320 John St., NE', N'Calgary', N'AB', N'T2J 7E3', N'Canada', N'4032794228', N'4036409874', N'amoskowitz@home.com                               ', 3)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (106, N'Judith', N'Olvsade', N'29 Elmwood Ave.,', N'Calgary', N'AB', N'T2Z 3M9', N'Canada', N'4032795652', N'4036861598', N'jolvsade@aol.com                                  ', 1)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (107, N'Catherine', N'Mierzwa', N'22-70 41st St.,NW', N'Calgary', N'AB', N'T2Z 2Z9', N'Canada', N'4032796878', N'4036404563', N'cmierzwa@msn.com                                  ', 5)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (108, N'Judy', N'Sethi', N'63 Stratton Hall, SW', N'Calgary', N'AB', N'T1Y 6N4', N'Canada', N'4032795111', N'4036204789', N'judysehti@home.com                                ', 7)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (109, N'Larry', N'Walter', N'38 Bay 26th ST. #2A, NE', N'Calgary', N'AB', N'T2J 6B6', N'Canada', N'4032793254', N'4032845588', N'lwalter@aol.com                                   ', 4)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (114, N'Winsome', N'Laporte', N'268 E.3rd St, SW', N'Calgary', N'AB', N'T1Y 6N4', N'Canada', N'4032691125', N'4032844565', N'                                                  ', 8)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (117, N'Nancy', N'Kuehn', N'44-255 9th St., SW', N'Calgary', N'AB', N'T1Y 6N5', N'Canada', N'4032693965', N'4032843211', N'                                                  ', 6)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (118, N'Hiedi', N'Lopez', N'168 Rowayton Ave, NW', N'Calgary', N'AB', N'T3A 4ZG', N'Canada', N'4032699856', N'4035901587', N'hlopez@aol.com                                    ', 5)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (119, N'Mardig', N'Abdou', N'160-04 32nd Ave., SW', N'Calgary', N'AB', N'T2P 2G7', N'Canada', N'4032691429', N'4032251952', N'                                                  ', 9)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (120, N'Ralph', N'Alexander', N'2054 73rd St, SW', N'Calgary', N'AB', N'T2P 2G7', N'Canada', N'4032691634', N'4032256547', N'                                                  ', 1)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (121, N'Sean', N'Pineda', N'3 Salem Rd., NW', N'Calgary', N'AB', N'T2K 3E3', N'Canada', N'4032691954', N'4036864444', N'spineda@hotmail.com                               ', 3)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (122, N'Julita', N'Lippen', N'51-76 VanKleeck St., NW', N'Calgary', N'AB', N'T2K 6C5', N'Canada', N'4032551956', N'4035901478', N'jlippen@cadvision.co                              ', 4)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (123, N'Pierre', N'Radicola', N'322 Atkins Ave., SE', N'Calgary', N'AB', N'T3G 2C6', N'Canada', N'4032551677', N'4036867536', N'pradicola@home.com                                ', 8)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (127, N'Gary', N'Aung', N'135-32 Louis Blvd, NE', N'Calgary', N'AB', N'T2V 2K5', N'Canada', N'4032807858', N'4037501587', N'                                                  ', 9)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (128, N'Jeff', N'Runyan', N'109-15 Queens Blvd., NE', N'Calgary', N'AB', N'T2V 2K6', N'Canada', N'4032809635', N'4036201122', N'jrunyan@aol.com                                   ', 5)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (130, N'Lula', N'Oates', N'11A Emory St., NE', N'Calgary', N'AB', N'T3E 3Z4', N'Canada', N'4032439653', N'4036861587', N'loates@aol.com                                    ', 9)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (133, N'James', N'Reed', N'109-621 96th St, NE', N'Calgary', N'AB', N'T3E 4A1', N'Canada', N'4032432358', N'4037201155', N'jreed@aol.com                                     ', 2)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (135, N'Michelle', N'Masser', N'379 Ovington Ave, NE', N'Calgary', N'AB', N'T2J 2S9', N'Canada', N'4032441586', N'4035908522', N'mmasser@aol.com                                   ', 6)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (138, N'John', N'Smith', N'45 Plaza St. West #2D, NE', N'Calgary', N'AB', N'T3E 5C7', N'Canada', N'4032449653', N'4032837896', N'johnSmith@hotmail.co                              ', 7)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (139, N'Angelo', N'Garshman', N'82 Western Ave., NE', N'Calgary', N'AB', N'T3E 5C8', N'Canada', N'4032259966', N'4032696541', N'                                                  ', 3)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (140, N'Derrick', N'Baltazar', N'9111 Church Ave. #3N, NE', N'Calgary', N'AB', N'T3E 5C9', N'Canada', N'4032255231', N'4037502547', N'                                                  ', 6)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (141, N'Robert', N'Boyd', N'96-04 57th Ave #12A, NE', N'Calgary', N'AB', N'T3E 5C5', N'Canada', N'4032255647', N'4037509512', N'                                                  ', 3)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (142, N'Monica', N'Waldman', N'257 Depot Rd., NE', N'Calgary', N'AB', N'T2J 6P3', N'Canada', N'4032255629', N'4032844566', N'mwaldman@aol.com                                  ', 2)
INSERT [dbo].[Customer] ([CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId]) VALUES (143, N'Gerard', N'Biers', N'205 19th St., NE', N'Calgary', N'AB', N'T2J 6B6', N'Canada', N'4032251952', N'4037506578', N'                                                  ', 8)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Customer_Reward]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Reward](
	[CustomerId] [int] NOT NULL,
	[RewardId] [int] NOT NULL,
	[RwdNumber] [nvarchar](25) NOT NULL,
 CONSTRAINT [aaaaaCustomer_Reward_PK] PRIMARY KEY NONCLUSTERED 
(
	[CustomerId] ASC,
	[RewardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomerCustomer_Reward] ON [dbo].[Customer_Reward] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RewardCustomer_Reward] ON [dbo].[Customer_Reward] 
(
	[RewardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (104, 1, N'123456 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (104, 2, N'5435 678 CF')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (105, 2, N'1435 678 CA')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (106, 1, N'123456 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (106, 4, N'4643 23 5435')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (107, 2, N'5735 638 CF')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (107, 5, N'2354 4583 63A')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (108, 1, N'129456 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (109, 4, N'4343 23 5435')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (109, 5, N'2784 4553 63F')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (114, 2, N'5875 678 CG')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (117, 1, N'123456 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (118, 3, N'FG2343 785')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (123, 2, N'5435 678 CF')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (127, 1, N'113526 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (138, 1, N'124256 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (140, 4, N'4343 23 5435')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (142, 1, N'123456 4322')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (142, 3, N'FG2343 785')
INSERT [dbo].[Customer_Reward] ([CustomerId], [RewardId], [RwdNumber]) VALUES (142, 5, N'2254 4553 63Z')
/****** Object:  Table [dbo].[CreditCard]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[CreditCardId] [int] IDENTITY(1,1) NOT NULL,
	[CCName] [nvarchar](10) NOT NULL,
	[CCNumber] [nvarchar](50) NOT NULL,
	[CCExpiry] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [aaaaaCreditCard_PK] PRIMARY KEY NONCLUSTERED 
(
	[CreditCardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomerCreditCard] ON [dbo].[CreditCard] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CreditCard] ON
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (2, N'AMEX', N'12342324248393', CAST(0x0000935000000000 AS DateTime), 123)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (26, N'AMEX', N'33454212345651', CAST(0x0000940300000000 AS DateTime), 127)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (28, N'AMEX', N'3422343212433430', CAST(0x000093BB00000000 AS DateTime), 107)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (30, N'AMEX', N'34458998784345', CAST(0x0000927000000000 AS DateTime), 140)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (31, N'AMEX', N'345433789979389', CAST(0x00008E7300000000 AS DateTime), 130)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (41, N'AMEX', N'3522354387984530', CAST(0x0000922600000000 AS DateTime), 106)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (63, N'AMEX', N'632456487984533', CAST(0x000092F500000000 AS DateTime), 142)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (69, N'AMEX', N'78789007977999', CAST(0x0000927000000000 AS DateTime), 104)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (91, N'AMEX', N'904883289756439', CAST(0x0000919900000000 AS DateTime), 133)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (99, N'Diners', N'12093458976902', CAST(0x000092B800000000 AS DateTime), 143)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (123, N'Diners', N'24348343482482', CAST(0x0000943C00000000 AS DateTime), 109)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (141, N'Diners', N'3749234924723790', CAST(0x0000936C00000000 AS DateTime), 128)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (163, N'Diners', N'6788922940392940', CAST(0x000092A300000000 AS DateTime), 139)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (167, N'Diners', N'699834387984533', CAST(0x000092F700000000 AS DateTime), 118)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (169, N'Diners', N'7482794729742320', CAST(0x000091EC00000000 AS DateTime), 117)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (185, N'Diners', N'8901128935238970', CAST(0x00008E6300000000 AS DateTime), 141)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (201, N'MC', N'3424345432894320', CAST(0x0000919C00000000 AS DateTime), 120)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (230, N'VISA', N'12122387984533', CAST(0x0000944E00000000 AS DateTime), 121)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (239, N'VISA', N'2311240543980120', CAST(0x000092B900000000 AS DateTime), 114)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (243, N'VISA', N'23958389028923', CAST(0x0000927000000000 AS DateTime), 119)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (252, N'VISA', N'3456683343353430', CAST(0x000092B400000000 AS DateTime), 135)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (272, N'VISA', N'6543254233444530', CAST(0x0000919C00000000 AS DateTime), 122)
INSERT [dbo].[CreditCard] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (279, N'VISA', N'78789007977999', CAST(0x0000927000000000 AS DateTime), 105)
SET IDENTITY_INSERT [dbo].[CreditCard] OFF
/****** Object:  Table [dbo].[Booking]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime] NULL,
	[BookingNo] [nvarchar](50) NULL,
	[TravelerCount] [float] NULL,
	[CustomerId] [int] NULL,
	[TripTypeId] [nvarchar](1) NULL,
	[TravelPackageId] [int] NULL,
 CONSTRAINT [aaaaaBooking_PK] PRIMARY KEY NONCLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingCustomerId] ON [dbo].[Booking] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomerBooking] ON [dbo].[Booking] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TravelPackageId] ON [dbo].[Booking] 
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TravelPackageBooking] ON [dbo].[Booking] 
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TripTypeBooking] ON [dbo].[Booking] 
(
	[TripTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (11, CAST(0x0000903800000000 AS DateTime), N'DFS3', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (15, CAST(0x0000905900000000 AS DateTime), N'WDR898', 1, 135, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (17, CAST(0x0000905A00000000 AS DateTime), N'FES3', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (34, CAST(0x0000906C00000000 AS DateTime), N'S935', 2, 138, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (46, CAST(0x0000907200000000 AS DateTime), N'SKJ329', 2, 133, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (49, CAST(0x0000907300000000 AS DateTime), N'S943', 2, 114, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (52, CAST(0x0000907400000000 AS DateTime), N'S934', 2, 133, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (55, CAST(0x0000907600000000 AS DateTime), N'SDFJ3982', 2, 133, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (57, CAST(0x000090F500000000 AS DateTime), N'FJKD344', 2, 130, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (62, CAST(0x0000916200000000 AS DateTime), N'SCR39', 2, 130, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (65, CAST(0x0000917800000000 AS DateTime), N'HK777', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (73, CAST(0x000091A100000000 AS DateTime), N'SW34', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (79, CAST(0x000091B100000000 AS DateTime), N'MKI333', 2, 120, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (80, CAST(0x000091B200000000 AS DateTime), N'MKI334', 2, 122, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (84, CAST(0x000091B400000000 AS DateTime), N'KK890', 2, 120, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (89, CAST(0x000091C400000000 AS DateTime), N'DF344', 1, 109, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (98, CAST(0x000091D700000000 AS DateTime), N'JI8787', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (108, CAST(0x000091E400000000 AS DateTime), N'MKI338', 2, 138, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (124, CAST(0x000091FD00000000 AS DateTime), N'SJKDK89', 2, 114, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (138, CAST(0x0000921A00000000 AS DateTime), N'HJK78', 1, 109, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (141, CAST(0x0000921E00000000 AS DateTime), N'KL888', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (148, CAST(0x0000923900000000 AS DateTime), N'LJ888', 2, 133, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (152, CAST(0x0000926900000000 AS DateTime), N'WS343', 2, 130, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (156, CAST(0x0000929000000000 AS DateTime), N'JKKO9', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (161, CAST(0x0000929400000000 AS DateTime), N'SG4SD', 1, 105, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (162, CAST(0x0000929500000000 AS DateTime), N'GFRER4', 1, 109, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (172, CAST(0x0000929A00000000 AS DateTime), N'FGFD64', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (187, CAST(0x00008D3F00000000 AS DateTime), N'ZAQ344', 1, 109, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (199, CAST(0x00008D4D00000000 AS DateTime), N'JSD39', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (204, CAST(0x00008D5000000000 AS DateTime), N'XVV67', 1, 141, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (220, CAST(0x00008D5B00000000 AS DateTime), N'BCV5', 1, 127, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (226, CAST(0x00008D7000000000 AS DateTime), N'DS3DF', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (228, CAST(0x00008D7100000000 AS DateTime), N'KF83', 1, 119, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (263, CAST(0x00008D8A00000000 AS DateTime), N'CBB34', 2, 120, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (264, CAST(0x00008D8B00000000 AS DateTime), N'SDF890', 1, 135, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (266, CAST(0x00008D8B00000000 AS DateTime), N'AZX24', 2, 135, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (273, CAST(0x00008D8E00000000 AS DateTime), N'DGG33', 2, 122, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (287, CAST(0x00008DA700000000 AS DateTime), N'7898797', 1, 141, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (305, CAST(0x00008DAD00000000 AS DateTime), N'XC2', 1, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (312, CAST(0x00008DB400000000 AS DateTime), N'SDSD33', 1, 130, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (313, CAST(0x00008DB500000000 AS DateTime), N'SD46', 1, 120, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (322, CAST(0x00008DD100000000 AS DateTime), N'FJSDKL833', 1, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (325, CAST(0x00008DD700000000 AS DateTime), N'HJJK77', 1, 121, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (369, CAST(0x00008E2400000000 AS DateTime), N'KJ392', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (375, CAST(0x00008E2700000000 AS DateTime), N'SDJF382', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (381, CAST(0x00008E2900000000 AS DateTime), N'JDKJF8343', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (382, CAST(0x00008E2900000000 AS DateTime), N'FDJ93', 1, 119, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (384, CAST(0x00008E2A00000000 AS DateTime), N'JHJH7', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (409, CAST(0x00008E3800000000 AS DateTime), N'FD53767', 2, 139, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (410, CAST(0x00008E3800000000 AS DateTime), N'JHK7', 2, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (425, CAST(0x00008E3D00000000 AS DateTime), N'FG879', 4, 140, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (442, CAST(0x00008E4600000000 AS DateTime), N'S53423', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (443, CAST(0x00008E4600000000 AS DateTime), N'T345', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (449, CAST(0x00008E4800000000 AS DateTime), N'RD4EW5', 1, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (482, CAST(0x00008E5200000000 AS DateTime), N'SKFJ32', 1, 127, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (484, CAST(0x00008E5300000000 AS DateTime), N'GDEWR3', 1, 106, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (488, CAST(0x00008E5400000000 AS DateTime), N'JDFS39', 1, 106, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (489, CAST(0x00008E5400000000 AS DateTime), N'SDR54', 1, 127, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (510, CAST(0x00008E6200000000 AS DateTime), N'HKK7', 1, 140, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (511, CAST(0x00008E6300000000 AS DateTime), N'FJK3892', 1, 141, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (512, CAST(0x00008E6300000000 AS DateTime), N'SG444', 1, 141, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (517, CAST(0x00008E6400000000 AS DateTime), N'FSDW2', 1, 140, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (529, CAST(0x00008E6B00000000 AS DateTime), N'FKJD32', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (546, CAST(0x00008E8900000000 AS DateTime), N'NKU7', 1, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (553, CAST(0x00008E8B00000000 AS DateTime), N'KKU7', 1, 109, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (594, CAST(0x00008E9200000000 AS DateTime), N'HNN77', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (596, CAST(0x00008E9800000000 AS DateTime), N'FDKJ898', 1, 106, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (598, CAST(0x00008E9900000000 AS DateTime), N'FDSK3', 1, 121, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (600, CAST(0x00008E9A00000000 AS DateTime), N'ILJ878', 2, 106, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (604, CAST(0x00008E9B00000000 AS DateTime), N'KFKESJK5', 1, 104, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (605, CAST(0x00008E9B00000000 AS DateTime), N'SDJ89342', 1, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (609, CAST(0x00008E9C00000000 AS DateTime), N'KJLK89', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (613, CAST(0x00008E9D00000000 AS DateTime), N'FD2323', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (614, CAST(0x00008E9D00000000 AS DateTime), N'FGG66', 2, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (618, CAST(0x00008E9E00000000 AS DateTime), N'CMFJ39', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (622, CAST(0x00008E9F00000000 AS DateTime), N'JJJ77', 1, 106, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (631, CAST(0x00008EA200000000 AS DateTime), N'MM78I879', 1, 130, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (665, CAST(0x00008EBB00000000 AS DateTime), N'FDSK83', 1, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (676, CAST(0x00008EBD00000000 AS DateTime), N'SJK5', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (677, CAST(0x00008EBD00000000 AS DateTime), N'KJKJ88', 1, 140, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (682, CAST(0x00008EBE00000000 AS DateTime), N'GF887', 3, 140, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (709, CAST(0x00008EC400000000 AS DateTime), N'MNHY15', 1, 104, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (714, CAST(0x00008EC500000000 AS DateTime), N'KKJ91', 1, 140, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (722, CAST(0x00008EC600000000 AS DateTime), N'FDJS32', 1, 119, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (740, CAST(0x00008EC800000000 AS DateTime), N'MNHY19', 1, 119, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (776, CAST(0x00008ECC00000000 AS DateTime), N'345435F', 2, 109, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (777, CAST(0x00008ECC00000000 AS DateTime), N'AS54676', 2, 143, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (798, CAST(0x00008ECE00000000 AS DateTime), N'A7667900', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (805, CAST(0x00008ECF00000000 AS DateTime), N'456546DFD', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (826, CAST(0x00008EDE00000000 AS DateTime), N'62323', 4, 128, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (827, CAST(0x00008EDE00000000 AS DateTime), N'D869990', 2, 128, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (838, CAST(0x00008EE300000000 AS DateTime), N'GFF84', 1, 141, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (852, CAST(0x00008EE700000000 AS DateTime), N'GFF79', 1, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (857, CAST(0x00008EE800000000 AS DateTime), N'SFDFSD54', 2, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (866, CAST(0x00008EE900000000 AS DateTime), N'SFDFSD53', 1, 127, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (876, CAST(0x00008EEA00000000 AS DateTime), N'SFDFSD55', 1, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (880, CAST(0x00008EEB00000000 AS DateTime), N'GFF85', 1, 141, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (884, CAST(0x00008EEC00000000 AS DateTime), N'GFF86', 2, 141, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (899, CAST(0x00008EF600000000 AS DateTime), N'QERQ1322', 2, 121, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (902, CAST(0x00008EF800000000 AS DateTime), N'D569767', 2, 121, N'B', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (910, CAST(0x00008EFA00000000 AS DateTime), N'GFF102', 1, 114, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (939, CAST(0x00008F0000000000 AS DateTime), N'86431RT', 2, 120, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (943, CAST(0x00008F0100000000 AS DateTime), N'34265Q67L', 2, 140, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (960, CAST(0x00008F0500000000 AS DateTime), N'GFF105', 1, 122, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (973, CAST(0x00008F0700000000 AS DateTime), N'GFF104', 2, 133, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (988, CAST(0x00008F0A00000000 AS DateTime), N'76584847', 1, 139, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (989, CAST(0x00008F0A00000000 AS DateTime), N'4656757Q', 1, 139, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1001, CAST(0x00008F0D00000000 AS DateTime), N'53165616', 2, 133, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1034, CAST(0x00008F1900000000 AS DateTime), N'F789900', 2, 105, N'G', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1047, CAST(0x00008F1A00000000 AS DateTime), N'234244S', 2, 105, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1067, CAST(0x00008F1C00000000 AS DateTime), N'4325434RE', 2, 117, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1073, CAST(0x00008F1D00000000 AS DateTime), N'68798890', 2, 117, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1075, CAST(0x00008F1D00000000 AS DateTime), N'78755U', 2, 123, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1089, CAST(0x00008F1E00000000 AS DateTime), N'T6657D', 2, 142, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1105, CAST(0x00008F2000000000 AS DateTime), N'53165765R', 1, 119, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1141, CAST(0x00008F2800000000 AS DateTime), N'35653B', 1, 120, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1165, CAST(0x00008F3D00000000 AS DateTime), N'LJJ113', 1, 127, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1178, CAST(0x00008F4200000000 AS DateTime), N'LJJ108', 1, 118, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1187, CAST(0x00008F5100000000 AS DateTime), N'R4777FG', 1, 143, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1192, CAST(0x00008F5F00000000 AS DateTime), N'LJJ115', 1, 109, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1194, CAST(0x00008F6000000000 AS DateTime), N'LJJ114', 1, 141, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1202, CAST(0x00008F6F00000000 AS DateTime), N'LJJ126', 1, 135, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1206, CAST(0x00008F7000000000 AS DateTime), N'LJJ131', 1, 121, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1207, CAST(0x00008F7000000000 AS DateTime), N'FJS3492', 2, 135, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1228, CAST(0x00008F8100000000 AS DateTime), N'LJJ120', 1, 106, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1230, CAST(0x00008F8300000000 AS DateTime), N'LJJ121', 1, 107, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1240, CAST(0x00008F8E00000000 AS DateTime), N'FSDFJ357', 1, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1248, CAST(0x00008F9100000000 AS DateTime), N'FSDFJ358', 1, 141, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1251, CAST(0x00008FA800000000 AS DateTime), N'FSDFJ349', 1, 130, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1254, CAST(0x00008FAB00000000 AS DateTime), N'KJFKD89', 1, 130, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1270, CAST(0x00008FCE00000000 AS DateTime), N'FSD82937', 1, 130, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1293, CAST(0x00008FD300000000 AS DateTime), N'KJLK89234', 1, 130, N'L', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1301, CAST(0x00008FF100000000 AS DateTime), N'FSD82940', 1, 127, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1302, CAST(0x00008FF200000000 AS DateTime), N'FSD82941', 1, 141, N'B', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [TravelPackageId]) VALUES (1303, CAST(0x00008FF300000000 AS DateTime), N'KJk934', 1, 127, N'B', NULL)
SET IDENTITY_INSERT [dbo].[Booking] OFF
/****** Object:  UserDefinedFunction [dbo].[Find duplicates for Booking]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Find duplicates for Booking] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Booking.BookingNo, Booking.BookingId, Booking.BookingDate
FROM Booking
WHERE (((Booking.BookingNo) In (SELECT BookingNo FROM Booking As Tmp GROUP BY BookingNo HAVING count(*)>1 )))
ORDER BY Booking.BookingNo)
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[BookingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ItineraryNo] [float] NULL,
	[TripStart] [datetime] NULL,
	[TripEnd] [datetime] NULL,
	[Description] [nvarchar](255) NULL,
	[Destination] [nvarchar](255) NULL,
	[BasePrice] [money] NULL,
	[AgencyCommission] [money] NULL,
	[BookingId] [int] NULL,
	[RegionId] [nvarchar](5) NULL,
	[ClassId] [nvarchar](5) NULL,
	[FeeId] [nvarchar](10) NULL,
	[ProductupplierId] [int] NULL,
 CONSTRAINT [aaaaaBookingDetail_PK] PRIMARY KEY NONCLUSTERED 
(
	[BookingDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Agency Fee Code] ON [dbo].[BookingDetail] 
(
	[FeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingId] ON [dbo].[BookingDetail] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingBookingDetail] ON [dbo].[BookingDetail] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TravelClassBookingDetail] ON [dbo].[BookingDetail] 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Dest ID] ON [dbo].[BookingDetail] 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DestinationsBookingDetail] ON [dbo].[BookingDetail] 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FeeBookingDetail] ON [dbo].[BookingDetail] 
(
	[FeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Product_SupplierBookingDetail] ON [dbo].[BookingDetail] 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductupplierId] ON [dbo].[BookingDetail] 
(
	[ProductupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (11, 168, CAST(0x0000906500000000 AS DateTime), CAST(0x0000906A00000000 AS DateTime), N'Calgary/Vancouver/Calgary', N'Vancouver', 450.0000, 22.5000, 11, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (15, 306, CAST(0x0000909A00000000 AS DateTime), CAST(0x000090B300000000 AS DateTime), N'all-inclusive European tour', N'London, England', 3000.0000, 112.5000, 15, N'EU', N'ECN', N'GR', 14)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (16, 306, CAST(0x0000909A00000000 AS DateTime), CAST(0x000090B300000000 AS DateTime), N'all-inclusive European tour', N'London, England', 3000.0000, 112.5000, 15, N'EU', N'ECN', N'GR', 14)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (17, 178, CAST(0x000090E000000000 AS DateTime), CAST(0x000090EE00000000 AS DateTime), N'Calgary/Calcutta/Calgary', N'Calcutta, India', 799.0000, 39.9500, 17, N'MEAST', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (34, 142, CAST(0x0000909900000000 AS DateTime), CAST(0x000090B200000000 AS DateTime), N'Calgary/Athens/Calgary', N'Athens, Greece', 1000.0000, 32.5000, 34, N'MED', N'ECN', N'BK', 12)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (46, 141, CAST(0x0000909F00000000 AS DateTime), CAST(0x000090B700000000 AS DateTime), N'midsize car', N'Toronto', 900.0000, 29.2500, 46, N'NA', N'NA', N'NC', 20)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (49, 201, CAST(0x0000909D00000000 AS DateTime), CAST(0x000090B000000000 AS DateTime), N'Calgary/Victoria/Calgary', N'Victoria', 199.0000, 2.2885, 49, N'NA', N'ECN', N'BK', 12)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (52, 225, CAST(0x0000909F00000000 AS DateTime), CAST(0x000090B700000000 AS DateTime), N' ', N'Toronto', 1700.0000, 55.2500, 52, N'NA', N'DLX', N'BK', 12)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (55, 771, CAST(0x0000909F00000000 AS DateTime), CAST(0x000090B700000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 1200.0000, 60.0000, 55, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (57, 893, CAST(0x0000912400000000 AS DateTime), CAST(0x0000913900000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 750.0000, 75.0000, 57, N'EU', N'ECN', N'BK', 13)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (62, 964, CAST(0x0000918F00000000 AS DateTime), CAST(0x0000919900000000 AS DateTime), N'Calgary/Victoria/Calgary', N'Victoria', 205.0000, 10.2500, 62, N'NA', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (65, 204, CAST(0x000091A500000000 AS DateTime), CAST(0x000091B200000000 AS DateTime), N'Calgary/Cairo/Calgary', N'Cairo, Egypt', 350.0000, 17.5000, 65, N'MEAST', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (73, 220, CAST(0x000091CE00000000 AS DateTime), CAST(0x000091D300000000 AS DateTime), N'Calgary/Grande Prairie/Calgary', N'Grande Prairie', 150.0000, 7.5000, 73, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (79, 185, CAST(0x000091DE00000000 AS DateTime), CAST(0x000091FC00000000 AS DateTime), N'Calgary/Sydney/Calgary', N'Sydney, Australia', 2200.0000, 264.0000, 79, N'ANZ', N'ECN', N'BK', 30)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (80, 256, CAST(0x000091DE00000000 AS DateTime), CAST(0x000091EB00000000 AS DateTime), N'Calgary/Victoria/Calgary', N'Victoria', 190.0000, 9.5000, 80, N'NA', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (84, 185, CAST(0x000091E100000000 AS DateTime), CAST(0x000091F900000000 AS DateTime), N'Australian trek', N' ', 6250.0000, 234.3750, 84, N'ANZ', N'NA', N'BK', 15)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (85, 185, CAST(0x000091E100000000 AS DateTime), CAST(0x000091F900000000 AS DateTime), N'Australian trek', N' ', 6250.0000, 234.3750, 84, N'ANZ', N'NA', N'BK', 15)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (89, 279, CAST(0x000091F100000000 AS DateTime), CAST(0x000091F600000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 628.0000, 31.4000, 89, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (98, 230, CAST(0x0000920300000000 AS DateTime), CAST(0x0000920800000000 AS DateTime), N'Calgary/Vancouver/Calgary', N'Vancouver', 1048.0000, 52.4000, 98, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (108, 193, CAST(0x0000921100000000 AS DateTime), CAST(0x0000921E00000000 AS DateTime), N'Calgary/Athens/Calgary', N'Athens, Greece', 1200.0000, 60.0000, 108, N'MED', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (122, 300, CAST(0x0000921500000000 AS DateTime), CAST(0x0000922400000000 AS DateTime), N'Calgary/Victoria/Calgary', N'Victoria', 175.0000, 8.7500, 124, N'NA', N'ECN', N'BK', 16)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (138, 397, CAST(0x0000924700000000 AS DateTime), CAST(0x0000924B00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 645.0000, 32.2500, 138, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (141, 244, CAST(0x0000924A00000000 AS DateTime), CAST(0x0000924E00000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 499.0000, 24.9500, 141, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (148, 805, CAST(0x0000925400000000 AS DateTime), CAST(0x0000926500000000 AS DateTime), N'Calgary/Athens/Calgary', N'Athens, Greece', 2300.0000, 70.0000, 148, N'MED', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (152, 1134, CAST(0x0000929600000000 AS DateTime), CAST(0x000092A300000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 780.0000, 39.0000, 152, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (156, 139, CAST(0x000092BD00000000 AS DateTime), CAST(0x000092C200000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 620.0000, 31.0000, 156, N'NA', N'BSN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (161, 518, CAST(0x00008E7500000000 AS DateTime), CAST(0x00008E7A00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 620.0000, 31.0000, 161, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (162, 218, CAST(0x000092C200000000 AS DateTime), CAST(0x000092C800000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 620.0000, 31.0000, 162, N'NA', N'BSN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (172, 686, CAST(0x00008E7500000000 AS DateTime), CAST(0x00008E7A00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 629.0000, 31.4500, 172, N'EU', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (187, 449, CAST(0x00008D6C00000000 AS DateTime), CAST(0x00008D7100000000 AS DateTime), N'Calgary/Houston/Calgary', N'Houston', 2875.0000, 60.0000, 187, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (199, 286, CAST(0x00008D7A00000000 AS DateTime), CAST(0x00008D8900000000 AS DateTime), N'Calgary/Hong Kong/Calgary', N'Hong Kong, China', 3625.0000, 70.0000, 199, N'ASIA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (204, 933, CAST(0x00008D7D00000000 AS DateTime), CAST(0x00008D8200000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 620.0000, 31.0000, 204, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (220, 932, CAST(0x00008D7200000000 AS DateTime), CAST(0x00008D7700000000 AS DateTime), N'Calgary/Houston/Calgary', N'Houston', 620.0000, 31.0000, 220, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (226, 460, CAST(0x00008E5200000000 AS DateTime), CAST(0x00008E5700000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 2585.0000, 60.0000, 226, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (228, 573, CAST(0x00008E8F00000000 AS DateTime), CAST(0x00008E9300000000 AS DateTime), N'Ramada', N'Vancouver', 700.0000, 8.0500, 228, N'NA', N'SNG', N'BK', 35)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (263, 255, CAST(0x00008DB700000000 AS DateTime), CAST(0x00008DD600000000 AS DateTime), N'Calgary/Sydney/Calgary', N'Sydney, Australia', 2500.0000, 70.0000, 263, N'ANZ', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (265, 306, CAST(0x00008DB800000000 AS DateTime), CAST(0x00008DD500000000 AS DateTime), N'European golf TravelPackage', N'Paris, France', 3000.0000, 112.5000, 264, N'EU', N'NA', N'GR', 36)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (266, 1076, CAST(0x00008DB800000000 AS DateTime), CAST(0x00008DD500000000 AS DateTime), N'Calgary/Paris/Calgary', N'Paris, France', 3000.0000, 70.0000, 266, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (270, 331, CAST(0x00008DB700000000 AS DateTime), CAST(0x00008DD300000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 800.0000, 40.0000, 273, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (273, 776, CAST(0x00008DB700000000 AS DateTime), CAST(0x00008DD300000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 800.0000, 40.0000, 273, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (275, 255, CAST(0x00008DBC00000000 AS DateTime), CAST(0x00008DD300000000 AS DateTime), N'Australian trek', N' ', 7900.0000, 296.2500, 263, N'ANZ', N'NA', N'BK', 15)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (276, 1132, CAST(0x00008DB700000000 AS DateTime), CAST(0x00008DD300000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 800.0000, 40.0000, 273, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (287, 980, CAST(0x00008DD300000000 AS DateTime), CAST(0x00008DD800000000 AS DateTime), N'Calgary/Rio de Janeiro/Calgary', N'Rio de Janeiro, Brazil', 3590.0000, 70.0000, 287, N'SA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (305, 979, CAST(0x00008DDA00000000 AS DateTime), CAST(0x00008DDF00000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 2580.0000, 60.0000, 305, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (312, 398, CAST(0x00008DE100000000 AS DateTime), CAST(0x00008DE600000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 615.0000, 30.7500, 312, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (313, 775, CAST(0x00008DE100000000 AS DateTime), CAST(0x00008DE600000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 2258.0000, 60.0000, 313, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (322, 404, CAST(0x00008DFE00000000 AS DateTime), CAST(0x00008E0500000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 630.0000, 31.5000, 322, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (325, 874, CAST(0x00008E0400000000 AS DateTime), CAST(0x00008E1400000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 630.0000, 31.5000, 325, N'NA', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (327, 228, CAST(0x00008E0C00000000 AS DateTime), CAST(0x00008E1C00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 900.0000, 45.0000, 98, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (369, 481, CAST(0x00008E5000000000 AS DateTime), CAST(0x00008E5500000000 AS DateTime), N'intermediate car', N'Paris, France', 500.0000, 15.5000, 369, N'EU', N'NA', N'BK', 32)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (375, 492, CAST(0x00008E5000000000 AS DateTime), CAST(0x00008E5500000000 AS DateTime), N'Hilton', N'Paris, France', 650.0000, 7.4750, 375, N'EU', N'DLX', N'BK', 31)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (381, 610, CAST(0x00008E5000000000 AS DateTime), CAST(0x00008E5500000000 AS DateTime), N'Calgary/Paris/Calgary', N'Paris, France', 3560.0000, 70.0000, 381, N'EU', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (382, 619, CAST(0x00008E5600000000 AS DateTime), CAST(0x00008E5B00000000 AS DateTime), N'Hilton', N'London, England', 620.0000, 7.1300, 382, N'EU', N'DLX', N'BK', 31)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (384, 644, CAST(0x00008E5600000000 AS DateTime), CAST(0x00008E5B00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 600.0000, 30.0000, 384, N'EU', N'ECN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (409, 492, CAST(0x00008E6500000000 AS DateTime), CAST(0x00008E7100000000 AS DateTime), N'Medium size car', N'Greece', 500.0000, 15.5000, 409, N'MED', N'NA', N'NC', 55)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (410, 624, CAST(0x00008E6400000000 AS DateTime), CAST(0x00008E7200000000 AS DateTime), N'Calgary-Athens-Calgary', N'Greece', 1300.0000, 65.0000, 410, N'MED', N'ECN', N'BK', 7)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (424, 492, CAST(0x00008E6A00000000 AS DateTime), CAST(0x00008E6D00000000 AS DateTime), N'cruise on the Greek''s islands', N'Greece', 650.0000, 19.5000, 425, N'MED', N'INT', N'NC', 49)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (425, 492, CAST(0x00008E6A00000000 AS DateTime), CAST(0x00008E6D00000000 AS DateTime), N'cruise on the Greek''s islands', N'Greece', 650.0000, 19.5000, 425, N'MED', N'INT', N'NC', 49)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (442, 654, CAST(0x00008E7200000000 AS DateTime), CAST(0x00008E7700000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 629.0000, 31.4500, 442, N'EU', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (443, 691, CAST(0x00008E7300000000 AS DateTime), CAST(0x00008E7800000000 AS DateTime), N'Calgary/Paris/Calgary', N'Paris, France', 4599.0000, 70.0000, 443, N'EU', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (449, 645, CAST(0x00008E7400000000 AS DateTime), CAST(0x00008E7900000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 599.0000, 29.9500, 449, N'NA', N'ECN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (458, 323, CAST(0x00008E9400000000 AS DateTime), CAST(0x00008E9800000000 AS DateTime), N'Calgary/Edmonton/Calgary', N'Edmonton', 300.0000, 15.0000, 517, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (482, 740, CAST(0x00008E7F00000000 AS DateTime), CAST(0x00008E8500000000 AS DateTime), N'Hilton', N'Sydney, Australia', 590.0000, 6.7850, 482, N'ANZ', N'DLX', N'BK', 31)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (484, 549, CAST(0x00008E7C00000000 AS DateTime), CAST(0x00008E8100000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 600.0000, 30.0000, 484, N'NA', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (488, 601, CAST(0x00008E7C00000000 AS DateTime), CAST(0x00008E8100000000 AS DateTime), N'Niagara on the Lake', N'Niagara', 675.0000, 7.7625, 488, N'NA', N'DLX', N'BK', 33)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (489, 1040, CAST(0x00008E7F00000000 AS DateTime), CAST(0x00008E8500000000 AS DateTime), N'Calgary/Sydney/Calgary', N'Sydney, Australia', 625.0000, 31.2500, 489, N'ANZ', N'FST', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (510, 587, CAST(0x00008E8E00000000 AS DateTime), CAST(0x00008E9200000000 AS DateTime), N'Ramada', N'Toronto', 650.0000, 7.4750, 510, N'NA', N'SNG', N'BK', 35)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (511, 745, CAST(0x00008E7E00000000 AS DateTime), CAST(0x00008E8400000000 AS DateTime), N'Niagara on the Lake', N'Niagara', 620.0000, 7.1300, 511, N'NA', N'DLX', N'BK', 33)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (512, 903, CAST(0x00008E7E00000000 AS DateTime), CAST(0x00008E8400000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 499.0000, 24.9500, 512, N'NA', N'ECN', N'BK', 23)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (517, 695, CAST(0x00008E8E00000000 AS DateTime), CAST(0x00008E9200000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 700.0000, 35.0000, 517, N'NA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (529, 479, CAST(0x00008E9800000000 AS DateTime), CAST(0x00008E9F00000000 AS DateTime), N'Calgary/Vancouver/Calgary', N'Vancouver', 350.0000, 17.5000, 529, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (546, 482, CAST(0x00008EB500000000 AS DateTime), CAST(0x00008EBA00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 800.0000, 40.0000, 546, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (553, 233, CAST(0x00008EB800000000 AS DateTime), CAST(0x00008EBD00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 750.0000, 37.5000, 553, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (594, 497, CAST(0x00008EBF00000000 AS DateTime), CAST(0x00008EC400000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 650.0000, 32.5000, 594, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (596, 343, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 850.0000, 42.5000, 596, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (598, 401, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 850.0000, 42.5000, 598, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (600, 642, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'cancellation/medical policy # 97543', N' ', 200.0000, 4.0000, 600, N'EU', N'NA', N'NC', 39)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (604, 651, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED500000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 700.0000, 35.0000, 604, N'NA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (605, 780, CAST(0x00008ED200000000 AS DateTime), CAST(0x00008ED600000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 700.0000, 35.0000, 605, N'NA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (609, 588, CAST(0x00008EC900000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N' ', N'Hong Kong, China', 900.0000, 10.3500, 609, N'ASIA', N'DLX', N'BK', 41)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (613, 629, CAST(0x00008EC900000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'Calgary/Hong Kong/Calgary', N'Hong Kong, China', 5200.0000, 260.0000, 613, N'ASIA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (614, 629, CAST(0x00008EC900000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'cancellation/medical policy # 98123', N' ', 250.0000, 5.0000, 614, N'ASIA', N'NA', N'NC', 39)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (618, 790, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 700.0000, 35.0000, 618, N'NA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (622, 863, CAST(0x00008ED000000000 AS DateTime), CAST(0x00008ED400000000 AS DateTime), N'Radisson', N'London, England', 990.0000, 11.3850, 622, N'EU', N'DLX', N'BK', 37)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (631, 172, CAST(0x00008ECF00000000 AS DateTime), CAST(0x00008ED300000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 750.0000, 37.5000, 631, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (665, 502, CAST(0x00008EE700000000 AS DateTime), CAST(0x00008EEA00000000 AS DateTime), N'Calgary/Rio de Janeiro/Calgary', N'Rio de Janeiro, Brazil', 1130.0000, 56.5000, 665, N'SA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (676, 695, CAST(0x00008EEA00000000 AS DateTime), CAST(0x00008EED00000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 800.0000, 40.0000, 676, N'NA', N'FST', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (677, 574, CAST(0x00008EE700000000 AS DateTime), CAST(0x00008EEA00000000 AS DateTime), N'Radisson', N'Rio de Janeiro, Brazil', 1000.0000, 32.5000, 677, N'SA', N'DLX', N'BK', 37)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (682, 686, CAST(0x00008EE700000000 AS DateTime), CAST(0x00008EEA00000000 AS DateTime), N'cancellation/medical policy # 92165', N' ', 230.0000, 4.6000, 682, N'SA', N'NA', N'NC', 45)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (689, 570, CAST(0x00008EF500000000 AS DateTime), CAST(0x00008F0B00000000 AS DateTime), N'Calgary, Toronto,Montreal, Ottawa t', N'Canada', 3550.0000, 133.1250, 776, N'NA', N'NA', N'BK', 46)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (709, 471, CAST(0x00008EEF00000000 AS DateTime), CAST(0x00008EF300000000 AS DateTime), N'Calgary/Houston/Calgary', N'Houston', 720.0000, 36.0000, 709, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (714, 555, CAST(0x00008EEE00000000 AS DateTime), CAST(0x00008EF200000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 725.0000, 36.2500, 714, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (722, 548, CAST(0x00008EE300000000 AS DateTime), CAST(0x00008EE800000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 800.0000, 40.0000, 722, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (739, 1020, CAST(0x00008EF600000000 AS DateTime), CAST(0x00008F0B00000000 AS DateTime), N'Calgary, Toronto,Montreal, Ottawa t', N'Canada', 3550.0000, 133.1250, 776, N'NA', N'NA', N'BK', 46)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (740, 589, CAST(0x00008EF400000000 AS DateTime), CAST(0x00008EF900000000 AS DateTime), N'Calgary/Houston/Calgary', N'Houston', 720.0000, 36.0000, 740, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (777, 672, CAST(0x00008EF700000000 AS DateTime), CAST(0x00008F0C00000000 AS DateTime), N'cancellation policy # 11191817', N'USA, Mexic', 180.0000, 3.6000, 777, N'NA', N'NA', N'NC', 69)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (805, 833, CAST(0x00008EF700000000 AS DateTime), CAST(0x00008F0C00000000 AS DateTime), N'CALGARY-LOS ANGELES-MexicoCity-CALG', N'USA, Mexic', 5175.0000, 194.0625, 805, N'NA', N'NA', N'BK', 67)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (826, 675, CAST(0x00008EFE00000000 AS DateTime), CAST(0x00008F1700000000 AS DateTime), N'Calgary, Toronto,montreal, Ottawa t', N'Canada', 4780.0000, 179.2500, 826, N'NA', N'NA', N'BK', 57)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (827, 716, CAST(0x00008F0200000000 AS DateTime), CAST(0x00008F0200000000 AS DateTime), N'Ride Niagara', N'Canada', 150.0000, 0.0000, 827, N'NA', N'NA', N'BK', 58)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (838, 259, CAST(0x00008F1000000000 AS DateTime), CAST(0x00008F1500000000 AS DateTime), N'Calgary/Sydney/Calgary', N'Sydney, Australia', 2100.0000, 105.0000, 838, N'ANZ', N'BSN', N'BK', 44)
GO
print 'Processed 100 total records'
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (852, 271, CAST(0x00008F1400000000 AS DateTime), CAST(0x00008F1900000000 AS DateTime), N'Calgary/Sydney/Calgary', N'Sydney, Australia', 2100.0000, 105.0000, 852, N'ANZ', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (857, 781, CAST(0x00008F1400000000 AS DateTime), CAST(0x00008F1900000000 AS DateTime), N'full-size car', N'Sydney, Australia', 800.0000, 24.8000, 857, N'ANZ', N'NA', N'NC', 61)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (866, 851, CAST(0x00008F1400000000 AS DateTime), CAST(0x00008F1900000000 AS DateTime), N'World Access', N'Sydney, Australia', 1900.0000, 61.7500, 866, N'ANZ', N'DLX', N'BK', 60)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (876, 1116, CAST(0x00008F1400000000 AS DateTime), CAST(0x00008F1900000000 AS DateTime), N'cancellation/medical policy # 95678', N' ', 230.0000, 4.6000, 876, N'ANZ', N'NA', N'NC', 47)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (880, 857, CAST(0x00008F1000000000 AS DateTime), CAST(0x00008F1500000000 AS DateTime), N'World Access', N'Sydney, Australia', 1900.0000, 61.7500, 880, N'ANZ', N'DLX', N'BK', 60)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (886, 1117, CAST(0x00008F1000000000 AS DateTime), CAST(0x00008F1500000000 AS DateTime), N'midsize car', N'Sydney, Australia', 900.0000, 27.9000, 884, N'ANZ', N'NA', N'NC', 61)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (902, 751, CAST(0x00008F1F00000000 AS DateTime), CAST(0x00008F3400000000 AS DateTime), N'Calgary-Auckland flight', N'NZ', 3000.0000, 150.0000, 902, N'ANZ', N'BSN', N'BK', 19)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (910, 150, CAST(0x00008F3400000000 AS DateTime), CAST(0x00008F3D00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 900.0000, 45.0000, 910, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (940, 1131, CAST(0x00008F2900000000 AS DateTime), CAST(0x00008F4500000000 AS DateTime), N'Calgary/Toronto/Montreal tour', N'Canada', 2600.0000, 97.5000, 939, N'NA', N'FST', N'BK', 67)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (943, 821, CAST(0x00008F2A00000000 AS DateTime), CAST(0x00008F4600000000 AS DateTime), N'Tahiti - South Seas', N' ', 8562.0000, 256.8600, 943, N'SP', N'INT', N'NC', 70)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (955, 141, CAST(0x00008F3100000000 AS DateTime), CAST(0x00008F3A00000000 AS DateTime), N'Calgary/Paris/Calgary', N'Paris, France', 950.0000, 47.5000, 973, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (960, 186, CAST(0x00008F3200000000 AS DateTime), CAST(0x00008F3B00000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 650.0000, 32.5000, 960, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (967, 392, CAST(0x00008F3100000000 AS DateTime), CAST(0x00008F3A00000000 AS DateTime), N'World Access', N'Paris, France', 1200.0000, 39.0000, 973, N'EU', N'DLX', N'BK', 60)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (972, 812, CAST(0x00008F3100000000 AS DateTime), CAST(0x00008F3A00000000 AS DateTime), N'midsize car', N'Paris, France', 850.0000, 26.3500, 973, N'EU', N'NA', N'NC', 61)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (973, 812, CAST(0x00008F3100000000 AS DateTime), CAST(0x00008F3A00000000 AS DateTime), N'cancellation policy # 4987140', N' ', 300.0000, 6.0000, 973, N'EU', N'NA', N'NC', 47)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (988, 301, CAST(0x00008F3700000000 AS DateTime), CAST(0x00008F5600000000 AS DateTime), N'cancellation/medical policy #923665', N'Peru, argentina, Bollivi', 345.0000, 6.9000, 988, N'SA', N'NA', N'NC', 50)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (990, 757, CAST(0x00008F3700000000 AS DateTime), CAST(0x00008F5600000000 AS DateTime), N'Peru, Argentina, Bolivia tour', N' ', 3980.0000, 149.2500, 989, N'SA', N'NA', N'BK', 28)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1002, 846, CAST(0x00008F3A00000000 AS DateTime), CAST(0x00008F4100000000 AS DateTime), N'Alaska', N' ', 2531.0000, 75.9300, 1001, N'NA', N'INT', N'NC', 68)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1024, 346, CAST(0x00008F4400000000 AS DateTime), CAST(0x00008F5300000000 AS DateTime), N'Asia-Africa-Mediteranean', N' ', 12630.0000, 378.9000, 1075, N'MED', N'ECN', N'NC', 70)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1034, 716, CAST(0x00008F4600000000 AS DateTime), CAST(0x00008F5F00000000 AS DateTime), N'Calgary-Vancouver flight', N'canada', 139.0000, 6.9500, 1034, N'NA', N'FST', N'BK', 19)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1067, 720, CAST(0x00008F4900000000 AS DateTime), CAST(0x00008F6200000000 AS DateTime), N'Calgary-toronto-montreal flight', N'Canada', 1000.0000, 50.0000, 1067, N'NA', N'FST', N'BK', 64)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1073, 761, CAST(0x00008F4900000000 AS DateTime), CAST(0x00008F6200000000 AS DateTime), N'Toronto-Montreal-ottawa tour', N'Canada', 3080.0000, 115.5000, 1073, N'NA', N'NA', N'BK', 48)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1089, 827, CAST(0x00008F4200000000 AS DateTime), CAST(0x00008F4A00000000 AS DateTime), N'Alaska plus air', N' ', 3652.0000, 109.5600, 1089, N'NA', N'INT', N'NC', 75)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1105, 831, CAST(0x00008F4200000000 AS DateTime), CAST(0x00008F5100000000 AS DateTime), N'Ryndam - Time Travel', N' ', 5506.0000, 165.1800, 1105, N'SA', N'OCNV', N'NC', 70)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1141, 816, CAST(0x00008F3800000000 AS DateTime), CAST(0x00008F3800000000 AS DateTime), N'Royal Ontario Museum', N'Canada', 25.0000, 0.0000, 1141, N'NA', N'NA', N'NC', 79)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1165, 355, CAST(0x00008F6900000000 AS DateTime), CAST(0x00008F7100000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 850.0000, 42.5000, 1165, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1178, 846, CAST(0x00008F6900000000 AS DateTime), CAST(0x00008F6E00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 850.0000, 42.5000, 1178, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1188, 631, CAST(0x00008F7E00000000 AS DateTime), CAST(0x00008F9000000000 AS DateTime), N'Explorer cruise plus air', N' ', 7593.0000, 227.7900, 1187, N'SA', N'OCNV', N'NC', 75)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1192, 250, CAST(0x00008F8C00000000 AS DateTime), CAST(0x00008F9000000000 AS DateTime), N'Calgary/Cape Town/Calgary', N'Cape Town, South Africa', 2500.0000, 125.0000, 1192, N'AFR', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1194, 375, CAST(0x00008F8C00000000 AS DateTime), CAST(0x00008F8F00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 870.0000, 43.5000, 1194, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1202, 154, CAST(0x00008F9B00000000 AS DateTime), CAST(0x00008FA000000000 AS DateTime), N'Calgary/Hong Kong/Calgary', N'Hong Kong, China', 1700.0000, 85.0000, 1202, N'ASIA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1206, 605, CAST(0x00008F9900000000 AS DateTime), CAST(0x00008F9E00000000 AS DateTime), N'Calgary/Toronto/Calgary', N'Toronto', 750.0000, 37.5000, 1206, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1207, 188, CAST(0x00008F9B00000000 AS DateTime), CAST(0x00008FA000000000 AS DateTime), N' ', N'Hong Kong, China', 2000.0000, 65.0000, 1207, N'ASIA', N'BSN', N'NC', 41)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1228, 527, CAST(0x00008F9800000000 AS DateTime), CAST(0x00008F9D00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 900.0000, 45.0000, 1228, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1230, 864, CAST(0x00008F9800000000 AS DateTime), CAST(0x00008F9D00000000 AS DateTime), N'Calgary/Athens/Calgary', N'Athens, Greece', 1100.0000, 55.0000, 1230, N'MED', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1240, 435, CAST(0x00008FB900000000 AS DateTime), CAST(0x00008FBE00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 950.0000, 47.5000, 1240, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1248, 421, CAST(0x00008FB800000000 AS DateTime), CAST(0x00008FBD00000000 AS DateTime), N'Calgary/Montreal/Calgary', N'Montreal', 950.0000, 47.5000, 1248, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1251, 177, CAST(0x00008FB600000000 AS DateTime), CAST(0x00008FBB00000000 AS DateTime), N'Calgary/London/Calgary', N'London, England', 900.0000, 45.0000, 1251, N'EU', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1254, 420, CAST(0x00008FB600000000 AS DateTime), CAST(0x00008FBB00000000 AS DateTime), N' ', N'London, England', 1500.0000, 48.7500, 1254, N'EU', N'DLX', N'BK', 82)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1270, 239, CAST(0x00008FFB00000000 AS DateTime), CAST(0x0000900400000000 AS DateTime), N'Calgary/Cape Town/Calgary', N'Cape Town, South Africa', 2700.0000, 135.0000, 1270, N'AFR', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1293, 596, CAST(0x00008FFB00000000 AS DateTime), CAST(0x0000900400000000 AS DateTime), N' ', N'Cape Town, South Africa', 2500.0000, 81.2500, 1293, N'AFR', N'DLX', N'BK', 42)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1301, 534, CAST(0x0000901E00000000 AS DateTime), CAST(0x0000902200000000 AS DateTime), N'Calgary/Cape Town/Calgary', N'Cape Town, South Africa', 2700.0000, 135.0000, 1301, N'AFR', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1302, 535, CAST(0x0000901E00000000 AS DateTime), CAST(0x0000902200000000 AS DateTime), N'Calgary/Winnipeg/Calgary', N'Winnipeg', 450.0000, 22.5000, 1302, N'NA', N'BSN', N'BK', 44)
INSERT [dbo].[BookingDetail] ([BookingDetailId], [ItineraryNo], [TripStart], [TripEnd], [Description], [Destination], [BasePrice], [AgencyCommission], [BookingId], [RegionId], [ClassId], [FeeId], [ProductupplierId]) VALUES (1303, 902, CAST(0x0000901E00000000 AS DateTime), CAST(0x0000902200000000 AS DateTime), N' ', N'Cape Town, South Africa', 2500.0000, 81.2500, 1303, N'AFR', N'DLX', N'BK', 42)
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
/****** Object:  Default [DF__Fee__FeeAmt__1B0907CE]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Fee] ADD  CONSTRAINT [DF__Fee__FeeAmt__1B0907CE]  DEFAULT (0) FOR [FeeAmt]
GO
/****** Object:  Default [DF__TravelPackage__PkgBas__76CBA758]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage] ADD  CONSTRAINT [DF__TravelPackage__PkgBas__76CBA758]  DEFAULT (0) FOR [PkgBasePrice]
GO
/****** Object:  Default [DF__TravelPackage__PkgAge__77BFCB91]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage] ADD  CONSTRAINT [DF__TravelPackage__PkgAge__77BFCB91]  DEFAULT (0) FOR [PkgAgencyCommission]
GO
/****** Object:  Default [DF__Reward__RewardI__35BCFE0A]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Reward] ADD  CONSTRAINT [DF__Reward__RewardI__35BCFE0A]  DEFAULT (0) FOR [RewardId]
GO
/****** Object:  Default [DF__Supplier__Suppl__3F466844]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF__Supplier__Suppl__3F466844]  DEFAULT (0) FOR [SupplierId]
GO
/****** Object:  Default [DF__SupplierC__Suppl__3A81B327]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContact] ADD  CONSTRAINT [DF__SupplierC__Suppl__3A81B327]  DEFAULT (0) FOR [SupplierId]
GO
/****** Object:  Default [DF__Product___Produ__2D27B809]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Product_Supplier] ADD  CONSTRAINT [DF__Product___Produ__2D27B809]  DEFAULT (0) FOR [ProductId]
GO
/****** Object:  Default [DF__TravelPackage___Packa__239E4DCF]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage_Product_Supplier] ADD  CONSTRAINT [DF__TravelPackage___Packa__239E4DCF]  DEFAULT (0) FOR [TravelPackageId]
GO
/****** Object:  Default [DF__TravelPackage___Produ__24927208]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage_Product_Supplier] ADD  CONSTRAINT [DF__TravelPackage___Produ__24927208]  DEFAULT (0) FOR [ProductupplierId]
GO
/****** Object:  Default [DF__Customer__Rewar__1273C1CD]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customer_Reward] ADD  CONSTRAINT [DF__Customer__Rewar__1273C1CD]  DEFAULT (0) FOR [RewardId]
GO
/****** Object:  Default [DF__Booking__Packag__023D5A04]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Booking] ADD  CONSTRAINT [DF__Booking__Packag__023D5A04]  DEFAULT (0) FOR [TravelPackageId]
GO
/****** Object:  Default [DF__BookingDe__Booki__7C8480AE]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail] ADD  CONSTRAINT [DF__BookingDe__Booki__7C8480AE]  DEFAULT (0) FOR [BookingId]
GO
/****** Object:  Default [DF__BookingDe__Produ__7D78A4E7]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail] ADD  CONSTRAINT [DF__BookingDe__Produ__7D78A4E7]  DEFAULT (0) FOR [ProductupplierId]
GO
/****** Object:  ForeignKey [SupplierContact_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContact]  WITH CHECK ADD  CONSTRAINT [SupplierContact_FK00] FOREIGN KEY([AffiliationId])
REFERENCES [dbo].[Affiliation] ([AffilitationId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SupplierContact] CHECK CONSTRAINT [SupplierContact_FK00]
GO
/****** Object:  ForeignKey [SupplierContact_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContact]  WITH CHECK ADD  CONSTRAINT [SupplierContact_FK01] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SupplierContact] CHECK CONSTRAINT [SupplierContact_FK01]
GO
/****** Object:  ForeignKey [Product_Supplier_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Product_Supplier]  WITH CHECK ADD  CONSTRAINT [Product_Supplier_FK00] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product_Supplier] CHECK CONSTRAINT [Product_Supplier_FK00]
GO
/****** Object:  ForeignKey [Product_Supplier_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Product_Supplier]  WITH CHECK ADD  CONSTRAINT [Product_Supplier_FK01] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product_Supplier] CHECK CONSTRAINT [Product_Supplier_FK01]
GO
/****** Object:  ForeignKey [FK_Agent_Agency]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Agency] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[Agency] ([AgencyId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Agency]
GO
/****** Object:  ForeignKey [TravelPackage_Product_Supplie_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage_Product_Supplier]  WITH CHECK ADD  CONSTRAINT [TravelPackage_Product_Supplie_FK00] FOREIGN KEY([TravelPackageId])
REFERENCES [dbo].[TravelPackage] ([TravelPackageId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TravelPackage_Product_Supplier] CHECK CONSTRAINT [TravelPackage_Product_Supplie_FK00]
GO
/****** Object:  ForeignKey [TravelPackage_Product_Supplie_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[TravelPackage_Product_Supplier]  WITH CHECK ADD  CONSTRAINT [TravelPackage_Product_Supplie_FK01] FOREIGN KEY([ProductupplierId])
REFERENCES [dbo].[Product_Supplier] ([ProductupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TravelPackage_Product_Supplier] CHECK CONSTRAINT [TravelPackage_Product_Supplie_FK01]
GO
/****** Object:  ForeignKey [FK_Customer_Agent]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Agent] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Agent]
GO
/****** Object:  ForeignKey [Customer_Reward_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customer_Reward]  WITH CHECK ADD  CONSTRAINT [Customer_Reward_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer_Reward] CHECK CONSTRAINT [Customer_Reward_FK00]
GO
/****** Object:  ForeignKey [Customer_Reward_FK01]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customer_Reward]  WITH CHECK ADD  CONSTRAINT [Customer_Reward_FK01] FOREIGN KEY([RewardId])
REFERENCES [dbo].[Reward] ([RewardId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer_Reward] CHECK CONSTRAINT [Customer_Reward_FK01]
GO
/****** Object:  ForeignKey [CreditCard_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[CreditCard]  WITH CHECK ADD  CONSTRAINT [CreditCard_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [CreditCard_FK00]
GO
/****** Object:  ForeignKey [Booking_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [Booking_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [Booking_FK00]
GO
/****** Object:  ForeignKey [Booking_FK01]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [Booking_FK01] FOREIGN KEY([TravelPackageId])
REFERENCES [dbo].[TravelPackage] ([TravelPackageId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [Booking_FK01]
GO
/****** Object:  ForeignKey [Booking_FK02]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [Booking_FK02] FOREIGN KEY([TripTypeId])
REFERENCES [dbo].[TripType] ([TripTypeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [Booking_FK02]
GO
/****** Object:  ForeignKey [FK_BookingDetail_Booking]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Booking]
GO
/****** Object:  ForeignKey [FK_BookingDetail_TravelClass]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_TravelClass] FOREIGN KEY([ClassId])
REFERENCES [dbo].[TravelClass] ([ClassId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_TravelClass]
GO
/****** Object:  ForeignKey [FK_BookingDetail_Fee]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Fee] FOREIGN KEY([FeeId])
REFERENCES [dbo].[Fee] ([FeeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Fee]
GO
/****** Object:  ForeignKey [FK_BookingDetail_Product_Supplier]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Product_Supplier] FOREIGN KEY([ProductupplierId])
REFERENCES [dbo].[Product_Supplier] ([ProductupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Product_Supplier]
GO
/****** Object:  ForeignKey [FK_BookingDetail_Region]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([RegionId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Region]
GO
