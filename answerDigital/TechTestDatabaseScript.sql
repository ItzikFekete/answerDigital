USE Master
GO

IF EXISTS(SELECT Name FROM master.sys.databases WHERE name = N'TechTest')
BEGIN
	DROP DATABASE [TechTest]
END
GO

IF NOT EXISTS(SELECT Name FROM master.sys.databases WHERE name = N'TechTest')
BEGIN
	CREATE DATABASE [TechTest]
END
GO

USE [master]
GO

/****** Object:  Table [dbo].[Colours]    Script Date: 09/04/2014 13:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colours](
	[ColourId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Colours] PRIMARY KEY CLUSTERED 
(
	[ColourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FavouriteColours]    Script Date: 09/04/2014 13:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavouriteColours](
	[PersonId] [int] NOT NULL,
	[ColourId] [int] NOT NULL,
 CONSTRAINT [PK_FavouriteColours] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[ColourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[People]    Script Date: 09/04/2014 13:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[IsAuthorised] [bit] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Colours] ON 

GO
INSERT [dbo].[Colours] ([ColourId], [Name], [IsEnabled]) VALUES (1, N'Red', 1)
GO
INSERT [dbo].[Colours] ([ColourId], [Name], [IsEnabled]) VALUES (2, N'Green', 1)
GO
INSERT [dbo].[Colours] ([ColourId], [Name], [IsEnabled]) VALUES (3, N'Blue', 1)
GO
SET IDENTITY_INSERT [dbo].[Colours] OFF
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (1, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (1, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (1, 3)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (2, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (2, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (2, 3)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (3, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (4, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (4, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (4, 3)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (5, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (6, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (7, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (7, 3)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (8, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (9, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (10, 1)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (10, 2)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (10, 3)
GO
INSERT [dbo].[FavouriteColours] ([PersonId], [ColourId]) VALUES (11, 1)
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (1, N'Willis', N'Tibbs', 0, 1, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (2, N'Sharon', N'Halt', 0, 0, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (3, N'Patrick', N'Kerr', 0, 1, 1)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (4, N'Lilly', N'Hale', 0, 0, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (5, N'Joel', N'Daly', 0, 1, 1)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (6, N'Imogen', N'Kent', 0, 0, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (7, N'George', N'Edwards', 0, 1, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (8, N'Gabriel', N'Franics', 0, 0, 0)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (9, N'Courtney', N'Arnold', 0, 1, 1)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (10, N'Brian', N'Allen', 0, 1, 1)
GO
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [IsAuthorised], [IsValid], [IsEnabled]) VALUES (11, N'Bo', N'Bob', 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
ALTER TABLE [dbo].[FavouriteColours]  WITH CHECK ADD  CONSTRAINT [FK_FavouriteColours_Colours] FOREIGN KEY([ColourId])
REFERENCES [dbo].[Colours] ([ColourId])
GO
ALTER TABLE [dbo].[FavouriteColours] CHECK CONSTRAINT [FK_FavouriteColours_Colours]
GO
ALTER TABLE [dbo].[FavouriteColours]  WITH CHECK ADD  CONSTRAINT [FK_FavouriteColours_People] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([PersonId])
GO
ALTER TABLE [dbo].[FavouriteColours] CHECK CONSTRAINT [FK_FavouriteColours_People]
GO