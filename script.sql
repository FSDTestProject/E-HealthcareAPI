USE [ABCHealthCare]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] NOT NULL,
	[AccNumber] [int] NOT NULL,
	[Amount] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[CartItemID] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[ProdcutId] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[PlacedOn] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
	[TotalAmount] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [nvarchar](1000) NULL,
	[Uses] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/22/2022 9:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsAdmin] [bit] NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (1, N'Nutriosys Isabgol', N'Company1', NULL, 525, 10, N'https://m.media-amazon.com/images/I/51inZITDWAL._AC_UL320_.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (2, N'Herbocalm Capsules', N'Company2', NULL, 374, 110, N'https://m.media-amazon.com/images/I/614040xGJKL._AC_UL320_.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (3, N'Becosules Capsule 20''S', N'Company3', NULL, 33, 200, N'https://www.netmeds.com/images/product-v1/600x600/341517/becosules_capsule_20_s_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (4, N'Optineuron Injection 3ml ', N'Company4', NULL, 8, 20, N'https://www.netmeds.com/images/product-v1/600x600/305127/optineuron_injection_3ml_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (5, N'Lacarnit Injection 5ml', N'Company4', NULL, 110, 20, N'https://www.netmeds.com/images/product-v1/600x600/347820/lacarnit_injection_5ml_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (6, N'Methycobal Injection 1ml', N'Company3', NULL, 90, 30, N'https://www.netmeds.com/images/product-v1/600x600/330110/methycobal_injection_1ml_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (7, N'Nutritional Powder ', N'Company2', NULL, 314, 300, N'https://www.netmeds.com/images/product-v1/600x600/889029/pro360_dry_fruits_nutritional_powder_250_gm_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (8, N'Weight Gainer', N'Company1', NULL, 369, 250, N'https://www.netmeds.com/images/product-v1/600x600/889022/pro360_weight_gainer_nutritional_powder_chocolate_flavour_250_gm_0.jpg', NULL)
INSERT [dbo].[Product] ([ID], [Name], [CompanyName], [Email], [Price], [Quantity], [ImageUrl], [Uses]) VALUES (9, N'Nutritional Powder', N'Company4', NULL, 548, 1000, N'https://www.netmeds.com/images/product-v1/600x600/889017/pro360_slim_nutritional_powder_choco_vanilla_flavour_500_gm_0.jpg', NULL)
INSERT [dbo].[user] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin], [Phone], [Address]) VALUES (1, N'Test', N'User1', N'testuser1@test.com', N'Password1', 0, NULL, NULL)
INSERT [dbo].[user] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin], [Phone], [Address]) VALUES (2, N'Admin1', N'Admin1', N'admin1@test.com', N'Password1', 1, NULL, NULL)
INSERT [dbo].[user] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin], [Phone], [Address]) VALUES (3, N'Admin3', N'Admin3', N'admin3@test.com', N'Password3', 1, NULL, NULL)
INSERT [dbo].[user] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin], [Phone], [Address]) VALUES (4, N'Test2', N'User2', N'testuser2@test.com', N'Password2', 0, NULL, NULL)
INSERT [dbo].[user] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin], [Phone], [Address]) VALUES (5, N'Test5', N'User5', N'testuser5@test.com', N'Password5', 0, NULL, NULL)
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([CartId])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([ProdcutId])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_user] FOREIGN KEY([UserID])
REFERENCES [dbo].[user] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_user]
GO
