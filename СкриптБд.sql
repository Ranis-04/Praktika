USE [YchetStudentov]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.03.2025 10:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id_Role] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 26.03.2025 10:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[id_Specialization] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED 
(
	[id_Specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 26.03.2025 10:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id_Student] [int] IDENTITY(2,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Groups] [nvarchar](50) NOT NULL,
	[Specialization_id] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.03.2025 10:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id_User] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role_id] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([id_Role], [Title]) VALUES (1, N'Пользователь')
GO
INSERT [dbo].[Specialization] ([id_Specialization], [Title]) VALUES (1, N'44.02.02 Преподавание в начальных классах')
INSERT [dbo].[Specialization] ([id_Specialization], [Title]) VALUES (2, N'44.02.01 Дошкольное образование')
INSERT [dbo].[Specialization] ([id_Specialization], [Title]) VALUES (3, N'09.02.07 Информационные системы и программирование')
INSERT [dbo].[Specialization] ([id_Specialization], [Title]) VALUES (4, N'49.02.01 Физическая культура ')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (1, N'Воробьев Евгений Константинович', N'911', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (2, N'Басова Елизавета Александровна', N'911', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (3, N'Васильева Вероника Тимофеевна', N'911', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (4, N'Тихомиров Всеволод Фёдорович', N'911', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (5, N'Трофимов Арсений Маркович', N'911', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (6, N'Никулина Виктория Ивановна', N'921', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (7, N'Окулова Алиса Романовна', N'921', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (8, N'Лебедев Андрей Константинович', N'921', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (9, N'Овчинникова Виктория Михайловна', N'931', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (10, N'Наумов Макар Всеволодович', N'931', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (11, N'Романов Иван Андреевич', N'931', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (12, N'Смирнов Али Иванович', N'941', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (13, N'Зотов Дмитрий Андреевич', N'941', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (14, N'Воробьев Лев Михайлович', N'941', 3)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (15, N'Орлова Екатерина Владимировна', N'211', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (16, N'Свиридов Даниил Григорьевич', N'211', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (17, N'Алешин Артемий Артёмович', N'211', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (18, N'Козлов Давид Кириллович', N'221', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (20, N'Борисова София Кирилловна', N'221', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (21, N'Михайлова Полина Никитична', N'221', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (22, N'Чернышева Мария Матвеевна', N'231', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (23, N'Смирнова Дарья Александровна', N'231', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (24, N'Воробьева Алёна Александровна', N'241', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (25, N'Калашникова Арина Денисовна', N'241', 1)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (26, N'Корчагина Василиса Викторовна', N'311', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (27, N'Кочетков Артур Даниилович', N'311', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (28, N'Царев Евгений Степанович', N'321', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (29, N'Крючков Максим Денисович', N'321', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (30, N'Кузнецова Алиса Дмитриевна', N'331', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (31, N'Павлова Валерия Николаевна', N'331', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (32, N'Давыдов Михаил Иванович', N'341', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (33, N'Никитин Максим Александрович', N'341', 2)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (34, N'Смирнова Анна Валерьевна', N'811', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (35, N'Волкова Анастасия Данииловна', N'811', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (36, N'Афанасьева Марина Егоровна', N'821', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (37, N'Соловьева Амина Георгиевна', N'821', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (38, N'Дьяконов Марсель Саввич', N'821', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (39, N'Филатов Михаил Давидович', N'831', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (40, N'Куприянов Артём Артёмович', N'831', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (41, N'Чеснокова Софья Викторовна', N'831', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (42, N'Козлова Виктория Михайловна', N'831', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (43, N'Корнеев Арсений Кириллович', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (44, N'Алексеева Эвелина Макаровна', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (45, N'Тарасов Дмитрий Артёмович', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (46, N'Гришин Егор Никитич', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (47, N'Некрасов Кирилл Родионович', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (48, N'Филиппова Анна Данииловна', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (49, N'Елисеева Ясмина Никитична', N'841', 4)
INSERT [dbo].[Student] ([id_Student], [FIO], [Groups], [Specialization_id]) VALUES (50, N'Трофимова Антонина Павловна', N'841', 4)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[User] ([id_User], [Login], [Password], [Role_id]) VALUES (1, N'123', N'123', 1)
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialization] FOREIGN KEY([Specialization_id])
REFERENCES [dbo].[Specialization] ([id_Specialization])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Specialization]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([id_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
