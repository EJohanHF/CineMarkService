USE [CINEMARK]
GO
/****** Object:  Table [dbo].[Actore]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actore](
	[Cod_Actor] [varchar](200) NOT NULL,
	[Act_Nombre] [varchar](100) NOT NULL,
	[Act_Apellido] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cod_Cliente] [varchar](200) NOT NULL,
	[Cli_Nombre] [varchar](100) NOT NULL,
	[Cli_Apellido] [varchar](100) NOT NULL,
	[Cli_Direccion] [varchar](100) NULL,
	[Cli_Celular] [varchar](9) NULL,
	[Cli_Correo] [varchar](100) NULL,
	[Usuario] [varchar](100) NULL,
	[Cli_FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Director]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Director](
	[Cod_Director] [varchar](200) NOT NULL,
	[Dir_Nombre] [varchar](100) NOT NULL,
	[Dir_Apellido] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[Cod_Genero] [varchar](200) NOT NULL,
	[Gen_Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Cod_Pelicula] [varchar](200) NOT NULL,
	[Pel_Nombre] [varchar](200) NOT NULL,
	[Pel_Sionopsis] [varchar](200) NOT NULL,
	[Pel_TituloOriginal] [varchar](200) NOT NULL,
	[Cod_Genero] [varchar](200) NULL,
	[Pel_Duracion] [varchar](30) NOT NULL,
	[Pel_Anio] [datetime] NULL,
	[Cod_Director] [varchar](200) NULL,
	[Cod_Actor] [varchar](200) NULL,
	[Num_Sala] [int] NULL,
	[STCOK] [int] NOT NULL,
	[FechaEstreno] [datetime] NULL,
	[STS] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sala](
	[Num_Sala] [int] IDENTITY(1,1) NOT NULL,
	[Sal_Fila] [char](1) NULL,
	[Sal_Columna] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_Sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticke]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticke](
	[Num_Ticke] [varchar](200) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Cod_Pelicula] [varchar](200) NOT NULL,
	[Cod_Cliente] [varchar](200) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_Ticke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario] [varchar](100) NOT NULL,
	[ClaveAcceso] [varchar](150) NOT NULL,
	[Usu_Nombre] [varchar](100) NOT NULL,
	[Usu_Apellido] [varchar](100) NOT NULL,
	[Usu_FechaCreacion] [datetime] NOT NULL,
	[Usu_UsuarioCreacion] [varchar](100) NOT NULL,
	[Usu_FechaModificacion] [datetime] NULL,
	[Usu_UsuarioModificacion] [varchar](100) NULL,
	[Usu_Sts] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Actore] ([Cod_Actor], [Act_Nombre], [Act_Apellido]) VALUES (N'ACT00001', N'Prueba', N'1234')
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([Usuario])
REFERENCES [dbo].[Usuario] ([Usuario])
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD FOREIGN KEY([Cod_Actor])
REFERENCES [dbo].[Actore] ([Cod_Actor])
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD FOREIGN KEY([Cod_Director])
REFERENCES [dbo].[Director] ([Cod_Director])
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD FOREIGN KEY([Cod_Genero])
REFERENCES [dbo].[Genero] ([Cod_Genero])
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD FOREIGN KEY([Num_Sala])
REFERENCES [dbo].[Sala] ([Num_Sala])
GO
ALTER TABLE [dbo].[Ticke]  WITH CHECK ADD FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Cliente] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[Ticke]  WITH CHECK ADD FOREIGN KEY([Cod_Pelicula])
REFERENCES [dbo].[Pelicula] ([Cod_Pelicula])
GO
ALTER TABLE [dbo].[Ticke]  WITH CHECK ADD FOREIGN KEY([Usuario])
REFERENCES [dbo].[Usuario] ([Usuario])
GO
/****** Object:  StoredProcedure [dbo].[Actore_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Actore
-- =============================================
CREATE PROCEDURE [dbo].[Actore_Crear] @Act_Nombre VARCHAR(100)
	,@Act_Apellido VARCHAR(100)
AS
BEGIN
	

	DECLARE @Cod_Actor VARCHAR(200)

	IF (
			SELECT 'ACT' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Actor, 4))) + 1), 5)
			FROM Actore
			) IS NULL
		SET @Cod_Actor = 'ACT00001'
	ELSE
		SET @Cod_Actor = (
				SELECT 'ACT' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Actor, 4))) + 1), 5)
				FROM Actore
				)

	INSERT INTO Actore (
		Cod_Actor
		,Act_Nombre
		,Act_Apellido
		)
	VALUES (
		@Cod_Actor
		,@Act_Nombre
		,@Act_Apellido
		)
END




GO
/****** Object:  StoredProcedure [dbo].[Actore_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Actore
-- =============================================
CREATE PROCEDURE [dbo].[Actore_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Cod_Actor
      ,Act_Nombre
      ,Act_Apellido
  FROM Actore
END


GO
/****** Object:  StoredProcedure [dbo].[Cliente_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Cliente
-- =============================================
CREATE PROCEDURE [dbo].[Cliente_Crear]  @Cli_Nombre VARCHAR(100)
	,@Cli_Apellido VARCHAR(100)
	,@Cli_Direccion VARCHAR(100)
	,@Cli_Celular VARCHAR(9)
	,@Cli_Correo VARCHAR(100)
	,@Usuario VARCHAR(100)
	,@Cli_FechaCreacion DATETIME
AS
BEGIN

	DECLARE @Cod_Cliente VARCHAR(200)

	IF (
			SELECT 'CLI' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Cliente, 4))) + 1), 5)
			FROM Cliente
			) IS NULL
		SET @Cod_Cliente = 'CLI00001'
	ELSE
		SET @Cod_Cliente = (
				SELECT 'CLI' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Cliente, 4))) + 1), 5)
				FROM Cliente
				)



	INSERT INTO Cliente (
		Cod_Cliente
		,Cli_Nombre
		,Cli_Apellido
		,Cli_Direccion
		,Cli_Celular
		,Cli_Correo
		,Usuario
		,Cli_FechaCreacion
		)
	VALUES (
		@Cod_Cliente
		,@Cli_Nombre
		,@Cli_Apellido
		,@Cli_Direccion
		,@Cli_Celular
		,@Cli_Correo
		,@Usuario
		,@Cli_FechaCreacion
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Cliente_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Cliente
-- =============================================
CREATE PROCEDURE [dbo].[Cliente_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Cod_Cliente
      ,Cli_Nombre
      ,Cli_Apellido
      ,Cli_Direccion
      ,Cli_Celular
      ,Cli_Correo
      ,Usuario
      ,Cli_FechaCreacion
  FROM Cliente
END


GO
/****** Object:  StoredProcedure [dbo].[Director_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Director
-- =============================================
CREATE PROCEDURE [dbo].[Director_Crear] @Dir_Nombre VARCHAR(100)
	,@Dir_Apellido VARCHAR(100)
AS
BEGIN
	DECLARE @Cod_Director VARCHAR(200)

	IF (
			SELECT 'DIR' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Director, 4))) + 1), 5)
			FROM Director
			) IS NULL
		SET @Cod_Director = 'DIR00001'
	ELSE
		SET @Cod_Director = (
				SELECT 'DIR' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Director, 4))) + 1), 5)
				FROM Director
				)



	INSERT INTO Director (
		Cod_Director
		,Dir_Nombre
		,Dir_Apellido
		)
	VALUES (
		@Cod_Director
		,@Dir_Nombre
		,@Dir_Apellido
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Director_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Director
-- =============================================
CREATE PROCEDURE [dbo].[Director_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Cod_Director
      ,Dir_Nombre
      ,Dir_Apellido
  FROM Director
END


GO
/****** Object:  StoredProcedure [dbo].[Genero_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Genero
-- =============================================
CREATE PROCEDURE [dbo].[Genero_Crear] @Gen_Nombre VARCHAR(100)
AS
BEGIN

	DECLARE @Cod_Genero VARCHAR(200)

	IF (
			SELECT 'GEN' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Genero, 4))) + 1), 5)
			FROM Genero
			) IS NULL
		SET @Cod_Genero = 'GEN00001'
	ELSE
		SET @Cod_Genero = (
				SELECT 'GEN' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Genero, 4))) + 1), 5)
				FROM Genero
				)


	INSERT INTO Genero (
		Cod_Genero
		,Gen_Nombre
		)
	VALUES (
		@Cod_Genero
		,@Gen_Nombre
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Genero_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Genero
-- =============================================
CREATE PROCEDURE [dbo].[Genero_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Cod_Genero
      ,Gen_Nombre
  FROM Genero
END


GO
/****** Object:  StoredProcedure [dbo].[Pelicula_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Pelicula
-- =============================================
CREATE PROCEDURE [dbo].[Pelicula_Crear] @Pel_Nombre VARCHAR(200)
	,@Pel_Sionopsis VARCHAR(200)
	,@Pel_TituloOriginal VARCHAR(200)
	,@Cod_Genero VARCHAR(200)
	,@Pel_Duracion VARCHAR(30)
	,@Pel_Anio DATETIME
	,@Cod_Director VARCHAR(200)
	,@Cod_Actor VARCHAR(200)
	,@Num_Sala INT
	,@STCOK INT
	,@FechaEstreno DATETIME
	,@STS BIT
AS
BEGIN

	DECLARE @Cod_Pelicula VARCHAR(200) 


	IF (
			SELECT 'PEL' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Pelicula, 4))) + 1), 5)
			FROM Pelicula
			) IS NULL
		SET @Cod_Pelicula = 'PEL00001'
	ELSE
		SET @Cod_Pelicula = (
				SELECT 'PEL' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Cod_Pelicula, 4))) + 1), 5)
				FROM Pelicula
				)



	INSERT INTO Pelicula (
		Cod_Pelicula
		,Pel_Nombre
		,Pel_Sionopsis
		,Pel_TituloOriginal
		,Cod_Genero
		,Pel_Duracion
		,Pel_Anio
		,Cod_Director
		,Cod_Actor
		,Num_Sala
		,STCOK
		,FechaEstreno
		,STS
		)
	VALUES (
		@Cod_Pelicula
		,@Pel_Nombre
		,@Pel_Sionopsis
		,@Pel_TituloOriginal
		,@Cod_Genero
		,@Pel_Duracion
		,@Pel_Anio
		,@Cod_Director
		,@Cod_Actor
		,@Num_Sala
		,@STCOK
		,@FechaEstreno
		,@STS
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Pelicula_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Pelicula
-- =============================================
CREATE PROCEDURE [dbo].[Pelicula_Leer]
AS
BEGIN


	SELECT Cod_Pelicula
		,Pel_Nombre
		,Pel_Sionopsis
		,Pel_TituloOriginal
		,Cod_Genero
		,Pel_Duracion
		,Pel_Anio
		,Cod_Director
		,Cod_Actor
		,Num_Sala
		,STCOK
		,FechaEstreno
		,STS
	FROM Pelicula
END


GO
/****** Object:  StoredProcedure [dbo].[Sala_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Sala
-- =============================================
CREATE PROCEDURE [dbo].[Sala_Crear] @Num_Sala INT
	,@Sal_Fila CHAR(1)
	,@Sal_Columna INT
AS
BEGIN


	INSERT INTO Sala (
		Num_Sala
		,Sal_Fila
		,Sal_Columna
		)
	VALUES (
		@Num_Sala
		,@Sal_Fila
		,@Sal_Columna
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Sala_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Sala
-- =============================================
CREATE PROCEDURE [dbo].[Sala_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Num_Sala
      ,Sal_Fila
      ,Sal_Columna
  FROM Sala
END


GO
/****** Object:  StoredProcedure [dbo].[Ticke_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Ticke
-- =============================================
CREATE PROCEDURE [dbo].[Ticke_Crear] @Usuario VARCHAR(100)
	,@Cod_Pelicula VARCHAR(200)
	,@Cod_Cliente VARCHAR(200)
	,@FechaCreacion DATETIME
AS
BEGIN


		DECLARE @Num_Ticke VARCHAR(200) 


	IF (
			SELECT 'TIk' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Num_Ticke, 4))) + 1), 5)
			FROM Ticke
			) IS NULL
		SET @Num_Ticke = 'TIk00001'
	ELSE
		SET @Num_Ticke = (
				SELECT 'TIk' + RIGHT('00000' + CONVERT(VARCHAR(4), MAX(CONVERT(INT, RIGHT(Num_Ticke, 4))) + 1), 5)
				FROM Ticke
				)


	INSERT INTO Ticke (
		Num_Ticke
		,Usuario
		,Cod_Pelicula
		,Cod_Cliente
		,FechaCreacion
		)
	VALUES (
		@Num_Ticke
		,@Usuario
		,@Cod_Pelicula
		,@Cod_Cliente
		,@FechaCreacion
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Ticke_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Ticke
-- =============================================
CREATE PROCEDURE [dbo].[Ticke_Leer]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Num_Ticke
      ,Usuario
      ,Cod_Pelicula
      ,Cod_Cliente
      ,FechaCreacion
  FROM Ticke
END


GO
/****** Object:  StoredProcedure [dbo].[Usuario_Crear]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Crear Usuario
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Crear] @Usuario VARCHAR(100) 
	,@ClaveAcceso VARCHAR(150)
	,@Usu_Nombre VARCHAR(100) 
	,@Usu_Apellido VARCHAR(100) 
	,@Usu_FechaCreacion DATETIME 
	,@Usu_UsuarioCreacion VARCHAR(100) 
	,@Usu_FechaModificacion DATETIME = NULL
	,@Usu_UsuarioModificacion VARCHAR(100) = NULL
	,@Usu_Sts BIT 
AS
BEGIN


	INSERT INTO Usuario (
		Usuario
		,ClaveAcceso
		,Usu_Nombre
		,Usu_Apellido
		,Usu_FechaCreacion
		,Usu_UsuarioCreacion
		,Usu_FechaModificacion
		,Usu_UsuarioModificacion
		,Usu_Sts
		)
	VALUES (
		@Usuario
		,@ClaveAcceso
		,@Usu_Nombre
		,@Usu_Apellido
		,@Usu_FechaCreacion
		,@Usu_UsuarioCreacion
		,@Usu_FechaModificacion
		,@Usu_UsuarioModificacion
		,@Usu_Sts
		)
END


GO
/****** Object:  StoredProcedure [dbo].[Usuario_Leer]    Script Date: 8/09/2019 08:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Johan Herrera
-- Create date: 08/09/2019
-- Description:	Leer Usuario
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Leer] @Usuario VARCHAR(100) = NULL
	,@Usu_Nombre VARCHAR(100) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Usu_Nombre
		,Usu_Apellido
		,Usu_UsuarioCreacion
		,Usu_FechaCreacion
		,Usu_UsuarioModificacion
		,Usu_FechaModificacion
		,Usu_Sts
	FROM Usuario
	WHERE (
			Usuario = @Usuario
			OR @Usuario IS NULL
			OR @Usuario = ''
			)
		AND (
			Usu_Nombre = @Usu_Nombre
			OR @Usu_Nombre IS NULL
			OR @Usu_Nombre = ''
			);
END


GO
