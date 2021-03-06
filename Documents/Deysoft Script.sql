USE [DEYSoft]
GO
/****** Object:  ForeignKey [FK_TB_LOCATION_TB_LOCATION_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOCATION] DROP CONSTRAINT [FK_TB_LOCATION_TB_LOCATION_TYPE]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TB_LOCATION]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TB_LOCATION]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TB_PACKAGE_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TB_PACKAGE_TYPE]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TBL_PRODUCT]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TBL_PRODUCT]
GO
/****** Object:  ForeignKey [FK_TB_MODELS_TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_MODEL] DROP CONSTRAINT [FK_TB_MODELS_TB_MANUFACTURER]
GO
/****** Object:  ForeignKey [FK_TB_OUTPUT_TB_LOTE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_OUTPUT] DROP CONSTRAINT [FK_TB_OUTPUT_TB_LOTE]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_MANUFACTURER]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_MODELS]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_MODELS]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_PRODUCT_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_PRODUCT_TYPE]
GO
/****** Object:  Table [dbo].[TB_OUTPUT]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_OUTPUT] DROP CONSTRAINT [FK_TB_OUTPUT_TB_LOTE]
GO
DROP TABLE [dbo].[TB_OUTPUT]
GO
/****** Object:  Table [dbo].[TB_LOTE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TB_LOCATION]
GO
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TB_PACKAGE_TYPE]
GO
ALTER TABLE [dbo].[TB_LOTE] DROP CONSTRAINT [FK_TB_LOTE_TBL_PRODUCT]
GO
DROP TABLE [dbo].[TB_LOTE]
GO
/****** Object:  Table [dbo].[TB_PRODUCT]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_MANUFACTURER]
GO
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_MODELS]
GO
ALTER TABLE [dbo].[TB_PRODUCT] DROP CONSTRAINT [FK_TBL_PRODUCT_TB_PRODUCT_TYPE]
GO
DROP TABLE [dbo].[TB_PRODUCT]
GO
/****** Object:  Table [dbo].[TB_MODEL]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_MODEL] DROP CONSTRAINT [FK_TB_MODELS_TB_MANUFACTURER]
GO
DROP TABLE [dbo].[TB_MODEL]
GO
/****** Object:  Table [dbo].[TB_LOCATION]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOCATION] DROP CONSTRAINT [FK_TB_LOCATION_TB_LOCATION_TYPE]
GO
DROP TABLE [dbo].[TB_LOCATION]
GO
/****** Object:  Table [dbo].[TB_LOCATION_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
DROP TABLE [dbo].[TB_LOCATION_TYPE]
GO
/****** Object:  Table [dbo].[TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:16 ******/
DROP TABLE [dbo].[TB_MANUFACTURER]
GO
/****** Object:  Table [dbo].[TB_PACKAGE_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
DROP TABLE [dbo].[TB_PACKAGE_TYPE]
GO
/****** Object:  Table [dbo].[TB_PRODUCT_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
DROP TABLE [dbo].[TB_PRODUCT_TYPE]
GO
/****** Object:  Table [dbo].[TB_USER]    Script Date: 05/23/2013 18:55:17 ******/
DROP TABLE [dbo].[TB_USER]
GO
/****** Object:  Table [dbo].[TB_USER]    Script Date: 05/23/2013 18:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_USER](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[PasswordQuestion] [varchar](50) NULL,
	[PasswordAnswer] [varchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangeDate] [datetime] NULL,
	[CreationDate] [datetime] NOT NULL,
	[IsOnLine] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[PasswordAttemptsCount] [int] NOT NULL,
	[PasswordAnswerAttemptsCount] [int] NOT NULL,
 CONSTRAINT [PK_TB_USER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TB_USER] ([Id], [Username], [Name], [Lastname], [Email], [Password], [PasswordQuestion], [PasswordAnswer], [LastLoginDate], [LastPasswordChangeDate], [CreationDate], [IsOnLine], [IsLockedOut], [PasswordAttemptsCount], [PasswordAnswerAttemptsCount]) VALUES (N'dd20c1e8-339a-41aa-9e6e-337f6a2d3b7c', N'Djavier', N'Dariel', N'Dariel', N'dariel.javier@gmail.com', N'OE2sM2jeb2WNe8Zuj9TIIGuRwXqQhEmJSMfdbkTUoFU=', N'', N'', CAST(0x0000A1BF0189843C AS DateTime), CAST(0x0000A1BF017C7864 AS DateTime), CAST(0x0000A1BD0142C290 AS DateTime), 1, 0, 0, 0)
INSERT [dbo].[TB_USER] ([Id], [Username], [Name], [Lastname], [Email], [Password], [PasswordQuestion], [PasswordAnswer], [LastLoginDate], [LastPasswordChangeDate], [CreationDate], [IsOnLine], [IsLockedOut], [PasswordAttemptsCount], [PasswordAnswerAttemptsCount]) VALUES (N'bfea0594-1fb2-4cd5-8f98-427c3841f983', N'ERosario', N'Ezequiel', N'Rosario', N'ezequiel189@hotmail.com', N'50hLSPovCHuBuKu3GY4F/PmyyCW98ONCUaJDibHK9X4=', N'', N'', CAST(0x0000A1BF0189843C AS DateTime), CAST(0x0000A1BF0189843C AS DateTime), CAST(0x0000A1BF0189843C AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[TB_USER] ([Id], [Username], [Name], [Lastname], [Email], [Password], [PasswordQuestion], [PasswordAnswer], [LastLoginDate], [LastPasswordChangeDate], [CreationDate], [IsOnLine], [IsLockedOut], [PasswordAttemptsCount], [PasswordAnswerAttemptsCount]) VALUES (N'44294b36-8b43-4070-ae13-82b24aaacadc', N'ERosario', N'Ezequiel', N'Rosario', N'ezequiel189@hotmail.com', N'50hLSPovCHuBuKu3GY4F/PmyyCW98ONCUaJDibHK9X4=', N'', N'', CAST(0x0000A1BF017C7864 AS DateTime), CAST(0x0000A1BF017C7864 AS DateTime), CAST(0x0000A1BF017C7864 AS DateTime), 0, 0, 0, 0)
/****** Object:  Table [dbo].[TB_PRODUCT_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PRODUCT_TYPE](
	[ID_PRODUCT_TYPE] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_PRODUCT_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCT_TYPE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PACKAGE_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PACKAGE_TYPE](
	[ID_Type_Package] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_PACKAGE_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID_Type_Package] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MANUFACTURER](
	[ID_MANUFACTURER] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_MANUFACTURER] PRIMARY KEY CLUSTERED 
(
	[ID_MANUFACTURER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_LOCATION_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LOCATION_TYPE](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Created_by] [nvarchar](50) NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [nvarchar](50) NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_LOCATION_TYPE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'02159d0a-74a6-4202-b58a-0725958c098e', N'Cajon', N'Djavier', CAST(0x0000A1BF016D9C7C AS DateTime), N'Djavier', CAST(0x0000A1BF0189267C AS DateTime))
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'c4bc2f24-6b59-4839-8a88-2bbb7daac452', N'Armario', N'Djavier', CAST(0x0000A1BF01767F18 AS DateTime), N'Djavier', CAST(0x0000A1BF01767F18 AS DateTime))
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'14b1e9dd-2f41-4bdb-9afc-6aa21f63e755', N'Gaveta', N'Djavier', CAST(0x0000A1BF016C4E80 AS DateTime), N'Djavier', CAST(0x0000A1BF016C4E80 AS DateTime))
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'104287c2-46e1-4335-9996-80e677ec409b', N'Caja', N'Djavier', CAST(0x0000A1BF017C760C AS DateTime), N'Djavier', CAST(0x0000A1BF017C760C AS DateTime))
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'fad4d125-250c-40a6-a3f2-88a5e970fd45', N'Dispensador', N'Djavier', CAST(0x0000A1BF018981E4 AS DateTime), N'Djavier', CAST(0x0000A1BF018ACB30 AS DateTime))
INSERT [dbo].[TB_LOCATION_TYPE] ([Id], [Description], [Created_by], [Created_on], [Modified_by], [Modified_on]) VALUES (N'4256c6b2-ee95-4c20-9f3a-c39b3a50c2f0', N'Cajon', N'Djavier', CAST(0x0000A1BF016D9C7C AS DateTime), N'Djavier', CAST(0x0000A1BF018A4A48 AS DateTime))
/****** Object:  Table [dbo].[TB_LOCATION]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LOCATION](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Father_ID] [uniqueidentifier] NULL,
	[ID_Location_Type] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NOT NULL,
	[Created_On] [datetime] NOT NULL,
	[Modified_By] [nvarchar](50) NULL,
	[Modified_On] [datetime] NULL,
 CONSTRAINT [PK_TB_LOCATION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TB_LOCATION] ([Id], [Description], [Father_ID], [ID_Location_Type], [Created_By], [Created_On], [Modified_By], [Modified_On]) VALUES (N'13d56f19-efc9-45ab-b15c-3e97b61ff4c3', N'Sub Bloque A', N'885d586d-921a-4482-9716-e53dfd768e14', N'02159d0a-74a6-4202-b58a-0725958c098e', N'Djavier', CAST(0x0000A1C0015D00EC AS DateTime), N'Djavier', CAST(0x0000A1C0015D00EC AS DateTime))
INSERT [dbo].[TB_LOCATION] ([Id], [Description], [Father_ID], [ID_Location_Type], [Created_By], [Created_On], [Modified_By], [Modified_On]) VALUES (N'885d586d-921a-4482-9716-e53dfd768e14', N'Bloque 1', NULL, N'c4bc2f24-6b59-4839-8a88-2bbb7daac452', N'Djavier', CAST(0x0000A1C0015A70AC AS DateTime), N'Djavier', CAST(0x0000A1C0015A70AC AS DateTime))
/****** Object:  Table [dbo].[TB_MODEL]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MODEL](
	[ID_MANUFACTURER] [int] NOT NULL,
	[ID_MODELS] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_MODELS_1] PRIMARY KEY CLUSTERED 
(
	[ID_MODELS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PRODUCT]    Script Date: 05/23/2013 18:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PRODUCT](
	[ID_PRODUCT] [int] NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[ID_Product_Type] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Extra_Details] [nvarchar](200) NULL,
	[ID_Manufacturer] [int] NOT NULL,
	[ID_Models] [int] NULL,
	[Year] [nchar](10) NULL,
	[Condition] [nvarchar](50) NULL,
	[Reorder_Point] [nvarchar](50) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TBL_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_LOTE]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LOTE](
	[ID_LOTE] [int] NOT NULL,
	[ID_PRODUCT] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [float] NULL,
	[ID_Location] [uniqueidentifier] NOT NULL,
	[ID_Type_Package] [int] NOT NULL,
	[ID_Package_Quantity] [int] NOT NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_LOTE] PRIMARY KEY CLUSTERED 
(
	[ID_LOTE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_OUTPUT]    Script Date: 05/23/2013 18:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OUTPUT](
	[ID_OUTPUT] [int] NOT NULL,
	[ID_LOTE] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Output_TYPE] [nvarchar](100) NULL,
	[Details] [nvarchar](100) NULL,
	[Created_by] [int] NULL,
	[Created_on] [datetime] NULL,
	[Modified_by] [int] NULL,
	[Modified_on] [datetime] NULL,
 CONSTRAINT [PK_TB_OUTPUT] PRIMARY KEY CLUSTERED 
(
	[ID_OUTPUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_TB_LOCATION_TB_LOCATION_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_TB_LOCATION_TB_LOCATION_TYPE] FOREIGN KEY([ID_Location_Type])
REFERENCES [dbo].[TB_LOCATION_TYPE] ([Id])
GO
ALTER TABLE [dbo].[TB_LOCATION] CHECK CONSTRAINT [FK_TB_LOCATION_TB_LOCATION_TYPE]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TB_LOCATION]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE]  WITH CHECK ADD  CONSTRAINT [FK_TB_LOTE_TB_LOCATION] FOREIGN KEY([ID_Location])
REFERENCES [dbo].[TB_LOCATION] ([Id])
GO
ALTER TABLE [dbo].[TB_LOTE] CHECK CONSTRAINT [FK_TB_LOTE_TB_LOCATION]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TB_PACKAGE_TYPE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE]  WITH CHECK ADD  CONSTRAINT [FK_TB_LOTE_TB_PACKAGE_TYPE] FOREIGN KEY([ID_Type_Package])
REFERENCES [dbo].[TB_PACKAGE_TYPE] ([ID_Type_Package])
GO
ALTER TABLE [dbo].[TB_LOTE] CHECK CONSTRAINT [FK_TB_LOTE_TB_PACKAGE_TYPE]
GO
/****** Object:  ForeignKey [FK_TB_LOTE_TBL_PRODUCT]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_LOTE]  WITH CHECK ADD  CONSTRAINT [FK_TB_LOTE_TBL_PRODUCT] FOREIGN KEY([ID_PRODUCT])
REFERENCES [dbo].[TB_PRODUCT] ([ID_PRODUCT])
GO
ALTER TABLE [dbo].[TB_LOTE] CHECK CONSTRAINT [FK_TB_LOTE_TBL_PRODUCT]
GO
/****** Object:  ForeignKey [FK_TB_MODELS_TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_MODEL]  WITH CHECK ADD  CONSTRAINT [FK_TB_MODELS_TB_MANUFACTURER] FOREIGN KEY([ID_MANUFACTURER])
REFERENCES [dbo].[TB_MANUFACTURER] ([ID_MANUFACTURER])
GO
ALTER TABLE [dbo].[TB_MODEL] CHECK CONSTRAINT [FK_TB_MODELS_TB_MANUFACTURER]
GO
/****** Object:  ForeignKey [FK_TB_OUTPUT_TB_LOTE]    Script Date: 05/23/2013 18:55:16 ******/
ALTER TABLE [dbo].[TB_OUTPUT]  WITH CHECK ADD  CONSTRAINT [FK_TB_OUTPUT_TB_LOTE] FOREIGN KEY([ID_LOTE])
REFERENCES [dbo].[TB_LOTE] ([ID_LOTE])
GO
ALTER TABLE [dbo].[TB_OUTPUT] CHECK CONSTRAINT [FK_TB_OUTPUT_TB_LOTE]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_MANUFACTURER]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_TBL_PRODUCT_TB_MANUFACTURER] FOREIGN KEY([ID_Manufacturer])
REFERENCES [dbo].[TB_MANUFACTURER] ([ID_MANUFACTURER])
GO
ALTER TABLE [dbo].[TB_PRODUCT] CHECK CONSTRAINT [FK_TBL_PRODUCT_TB_MANUFACTURER]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_MODELS]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_TBL_PRODUCT_TB_MODELS] FOREIGN KEY([ID_Models])
REFERENCES [dbo].[TB_MODEL] ([ID_MODELS])
GO
ALTER TABLE [dbo].[TB_PRODUCT] CHECK CONSTRAINT [FK_TBL_PRODUCT_TB_MODELS]
GO
/****** Object:  ForeignKey [FK_TBL_PRODUCT_TB_PRODUCT_TYPE]    Script Date: 05/23/2013 18:55:17 ******/
ALTER TABLE [dbo].[TB_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_TBL_PRODUCT_TB_PRODUCT_TYPE] FOREIGN KEY([ID_Product_Type])
REFERENCES [dbo].[TB_PRODUCT_TYPE] ([ID_PRODUCT_TYPE])
GO
ALTER TABLE [dbo].[TB_PRODUCT] CHECK CONSTRAINT [FK_TBL_PRODUCT_TB_PRODUCT_TYPE]
GO
