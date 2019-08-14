USE [master]
GO
/****** Object:  Database [JuegosOlimpicos]    Script Date: 27/6/2019 10:24:51 ******/
CREATE DATABASE [JuegosOlimpicos]
GO

USE [JuegosOlimpicos]
GO
/****** Object:  Table [dbo].[Atletas]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atletas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[NroDocumento] [nvarchar](30) NOT NULL,
	[Genero] [char](1) NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDisciplina] [int] NOT NULL,
 CONSTRAINT [PK_Atletas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdDisciplina] [int] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplinas]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplinas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Disciplinas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lugar] [nvarchar](50) NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdCategoria] [int] NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAtleta] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Inscripciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](5) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participaciones]    Script Date: 27/6/2019 10:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participaciones](
	[IdInscripcion] [int] NOT NULL,
	[IdEvento] [int] NOT NULL,
	[Posicion] [int] NOT NULL,
 CONSTRAINT [PK_Participaciones] PRIMARY KEY CLUSTERED 
(
	[IdInscripcion] ASC,
	[IdEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Atletas] ON 

INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (1, N'Lionel', N'Messi', N'29342145', N'M', 1, 1)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (2, N'Manu', N'Ginobili', N'23352845', N'M', 1, 2)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (3, N'Neymar', N'Junior', N'363232121', N'M', 2, 1)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (4, N'Usain', N'Bolt', N'24352845', N'M', 7, 6)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (5, N'Nocorro', N'Tanrrapido', N'111222333', N'M', 4, 6)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (6, N'Camine', N'No Corra', N'999888777', N'M', 5, 6)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (7, N'Andy', N'Murray', N'25352845', N'M', 6, 3)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (8, N'Li', N'Sun', N'6654241834621', N'F', 4, 3)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (9, N'Michael', N'Phelps', N'32409132084', N'M', 3, 4)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (10, N'Juan', N'Snorkel', N'333444555', N'M', 1, 4)
INSERT [dbo].[Atletas] ([Id], [Nombre], [Apellido], [NroDocumento], [Genero], [IdPais], [IdDisciplina]) VALUES (11, N'Patrick', N'Water', N'555666777', N'M', 6, 4)
SET IDENTITY_INSERT [dbo].[Atletas] OFF
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (1, N'Futbol 11', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (2, N'Futsal', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (3, N'Futbol playa', 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (4, N'Basquet', 2)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (5, N'Singles', 3)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (6, N'Dobles', 3)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (7, N'100 metros libres', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (8, N'200 metros libres', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (9, N'100 metros mariposa', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (10, N'200 metros mariposa', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (11, N'100 metros espalda', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (12, N'200 metros espalda', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (13, N'4 x 100 metros libres', 4)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (14, N'Barras paralelas', 5)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (15, N'Barras horizontal', 5)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (16, N'Caballos con arcos', 5)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (17, N'Anillos', 5)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (18, N'Lanzamiento de mazas', 5)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (19, N'100 metros', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (20, N'200 metros', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (21, N'400 metros', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (22, N'800 metros', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (23, N'4 x 100 metros postas', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (24, N'Maraton', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (25, N'Salto en largo', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (26, N'Salto con garrocha', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (27, N'Lanzamiento jabalina', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (28, N'Lanzamiento martillo', 6)
INSERT [dbo].[Categorias] ([Id], [Nombre], [IdDisciplina]) VALUES (29, N'Lanzamiento disco', 6)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Disciplinas] ON 

INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (6, N'Atletismo')
INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (2, N'Basquet')
INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (1, N'Futbol')
INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (5, N'Gimnasia')
INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (4, N'Natacion')
INSERT [dbo].[Disciplinas] ([Id], [Nombre]) VALUES (3, N'Tenis')
SET IDENTITY_INSERT [dbo].[Disciplinas] OFF
SET IDENTITY_INSERT [dbo].[Eventos] ON 

INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (18, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'Torneo Futbol', 1)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (19, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'Torneo Basquet', 4)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (20, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'Tenis Singles', 5)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (21, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'100 metros mariposa', 9)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (22, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'100 metros espalda', 11)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (23, N'Rio de Janeiro', CAST(N'2019-06-27T07:14:50.1100000' AS DateTime2), N'200 metros libres', 7)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (24, N'Rio de Janeiro', CAST(N'2016-07-29T00:00:00.0000000' AS DateTime2), N'Ceremonia Apertura', NULL)
INSERT [dbo].[Eventos] ([Id], [Lugar], [Fecha], [Nombre], [IdCategoria]) VALUES (25, N'Rio de Janeiro', CAST(N'2016-07-01T00:00:00.0000000' AS DateTime2), N'Ceremonia Cierre', NULL)
SET IDENTITY_INSERT [dbo].[Eventos] OFF
SET IDENTITY_INSERT [dbo].[Inscripciones] ON 

INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (30, 1, 1)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (31, 1, 2)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (29, 1, 3)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (28, 3, 3)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (14, 4, 19)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (15, 4, 20)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (16, 4, 21)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (17, 4, 22)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (18, 4, 23)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (19, 4, 24)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (20, 5, 19)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (21, 5, 20)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (22, 5, 23)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (23, 6, 19)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (24, 6, 20)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (25, 6, 21)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (26, 6, 22)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (1, 9, 7)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (2, 9, 8)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (3, 9, 9)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (4, 9, 10)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (5, 9, 11)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (6, 9, 12)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (7, 9, 13)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (8, 10, 10)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (9, 10, 11)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (10, 10, 12)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (11, 11, 10)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (12, 11, 11)
INSERT [dbo].[Inscripciones] ([Id], [IdAtleta], [IdCategoria]) VALUES (13, 11, 12)
SET IDENTITY_INSERT [dbo].[Inscripciones] OFF
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (1, N'AR', N'Argentina')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (2, N'BR', N'Brazil')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (3, N'US', N'United States')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (4, N'CN', N'China')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (5, N'FR', N'France')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (6, N'UK', N'United Kingdom')
INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre]) VALUES (7, N'JA', N'Jamaica')
SET IDENTITY_INSERT [dbo].[Paises] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Atletas_NroDocumento]    Script Date: 27/6/2019 10:24:52 ******/
ALTER TABLE [dbo].[Atletas] ADD  CONSTRAINT [UC_Atletas_NroDocumento] UNIQUE NONCLUSTERED 
(
	[NroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Categorias_Nombre]    Script Date: 27/6/2019 10:24:52 ******/
ALTER TABLE [dbo].[Categorias] ADD  CONSTRAINT [UC_Categorias_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Disciplinas_Nombre]    Script Date: 27/6/2019 10:24:52 ******/
ALTER TABLE [dbo].[Disciplinas] ADD  CONSTRAINT [UC_Disciplinas_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UC_Inscripciones_IdAtleta_IdCategoria]    Script Date: 27/6/2019 10:24:52 ******/
ALTER TABLE [dbo].[Inscripciones] ADD  CONSTRAINT [UC_Inscripciones_IdAtleta_IdCategoria] UNIQUE NONCLUSTERED 
(
	[IdAtleta] ASC,
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Paises_Codigo]    Script Date: 27/6/2019 10:24:52 ******/
ALTER TABLE [dbo].[Paises] ADD  CONSTRAINT [UC_Paises_Codigo] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Atletas]  WITH CHECK ADD  CONSTRAINT [FK_Atletas_Disciplinas] FOREIGN KEY([IdDisciplina])
REFERENCES [dbo].[Disciplinas] ([Id])
GO
ALTER TABLE [dbo].[Atletas] CHECK CONSTRAINT [FK_Atletas_Disciplinas]
GO
ALTER TABLE [dbo].[Atletas]  WITH CHECK ADD  CONSTRAINT [FK_Atletas_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([Id])
GO
ALTER TABLE [dbo].[Atletas] CHECK CONSTRAINT [FK_Atletas_Paises]
GO
ALTER TABLE [dbo].[Categorias]  WITH CHECK ADD  CONSTRAINT [FK_Categorias_Disciplinas] FOREIGN KEY([IdDisciplina])
REFERENCES [dbo].[Disciplinas] ([Id])
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [FK_Categorias_Disciplinas]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_Categorias]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Atletas] FOREIGN KEY([IdAtleta])
REFERENCES [dbo].[Atletas] ([Id])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Atletas]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Categorias]
GO
ALTER TABLE [dbo].[Participaciones]  WITH CHECK ADD  CONSTRAINT [FK_Participaciones_Eventos] FOREIGN KEY([IdEvento])
REFERENCES [dbo].[Eventos] ([Id])
GO
ALTER TABLE [dbo].[Participaciones] CHECK CONSTRAINT [FK_Participaciones_Eventos]
GO
ALTER TABLE [dbo].[Participaciones]  WITH CHECK ADD  CONSTRAINT [FK_Participaciones_Inscripciones] FOREIGN KEY([IdInscripcion])
REFERENCES [dbo].[Inscripciones] ([Id])
GO
ALTER TABLE [dbo].[Participaciones] CHECK CONSTRAINT [FK_Participaciones_Inscripciones]
GO
USE [master]
GO
ALTER DATABASE [JuegosOlimpicos] SET  READ_WRITE 
GO
