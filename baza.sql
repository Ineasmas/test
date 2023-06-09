USE [test]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 22.05.2023 1:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[idAuthor] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[idAuthor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 22.05.2023 1:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[idBook] [int] NOT NULL,
	[idAuthor] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[idTheme] [int] NOT NULL,
	[PublicationYear] [smallint] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[idBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 22.05.2023 1:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[idTheme] [int] IDENTITY(1,1) NOT NULL,
	[ThemeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[idTheme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (1, N'Лев Толстой')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (2, N'Антон Чехов')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (3, N'Фёдор Достоевский')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (4, N'Александр Пушкин')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (5, N'Иван Тургенев')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (6, N'Николай Гоголь')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (7, N'Михаил Булгаков')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (8, N'Владимир Набоков')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (9, N'Анна Ахматова')
INSERT [dbo].[Authors] ([idAuthor], [AuthorName]) VALUES (10, N'Борис Пастернак')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (1, 1, N'Война и мир', 1, 1869)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (2, 1, N'Анна Каренина', 3, 1877)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (3, 2, N'Вишневый сад', 2, 1904)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (4, 3, N'Преступление и наказание', 1, 1866)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (5, 3, N'Братья Карамазовы', 9, 1880)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (6, 4, N'Евгений Онегин', 7, 1833)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (7, 5, N'Отцы и дети', 1, 1862)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (8, 6, N'Мертвые души', 6, 1842)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (9, 7, N'Мастер и Маргарита', 10, 1967)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (10, 8, N'Лолита', 10, 1955)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (11, 6, N'Ревизор', 6, 1836)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (12, 10, N'Доктор Живаго', 3, 1957)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (13, 5, N'Герой нашего времени', 3, 1840)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (14, 7, N'Процесс', 9, 1925)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (15, 9, N'Тихий Дон', 4, 1928)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (16, 3, N'Палата № 6', 9, 1892)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (17, 4, N'Демон', 9, 1841)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (18, 7, N'Собачье сердце', 6, 1925)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (19, 6, N'Мёртвые души', 1, 1922)
INSERT [dbo].[Books] ([idBook], [idAuthor], [Title], [idTheme], [PublicationYear]) VALUES (20, 9, N'Дама с собачкой', 3, 1899)
GO
SET IDENTITY_INSERT [dbo].[Themes] ON 

INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (1, N'Классика')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (2, N'Драма')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (3, N'Роман')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (4, N'Исторический')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (5, N'Фантастика')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (6, N'Юмор')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (7, N'Поэзия')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (8, N'Приключения')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (9, N'Философия')
INSERT [dbo].[Themes] ([idTheme], [ThemeName]) VALUES (10, N'Мистика')
SET IDENTITY_INSERT [dbo].[Themes] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([idAuthor])
REFERENCES [dbo].[Authors] ([idAuthor])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Themes] FOREIGN KEY([idTheme])
REFERENCES [dbo].[Themes] ([idTheme])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Themes]
GO
