USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 11/11/2017 01:41:18 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'åãýÊìzõ«*T/lx¬âR~¿xpÖî', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 11/11/2017 01:41:18 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'âp½Ër£µéËÂ³A¤¬>''oy!¡', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [BUILTIN\Usuarios]    Script Date: 11/11/2017 01:41:18 ******/
CREATE LOGIN [BUILTIN\Usuarios] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-0CDFUOM\Aleck]    Script Date: 11/11/2017 01:41:18 ******/
CREATE LOGIN [DESKTOP-0CDFUOM\Aleck] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 11/11/2017 01:41:18 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQL$SQLEXPRESS]    Script Date: 11/11/2017 01:41:18 ******/
CREATE LOGIN [NT SERVICE\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
USE [Escolar_Horario]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[nombreL] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[IdTurno] [nvarchar](1) NOT NULL,
	[TipoTurno] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Titulo]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titulo](
	[IdTitulo] [int] NOT NULL,
	[nomTitulo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Titulo] PRIMARY KEY CLUSTERED 
(
	[IdTitulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[IdMaestro] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[NomMaestro] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[FechaNac] [date] NOT NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[IdMaestro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salon](
	[IdSalon] [int] NOT NULL,
	[Capacidad] [smallint] NOT NULL,
 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 
(
	[IdSalon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nivel](
	[IdNivel] [int] NOT NULL,
	[nomNivel] [varchar](50) NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[IdNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [int] NOT NULL,
	[NomAlu] [varchar](50) NOT NULL,
	[Edad] [tinyint] NOT NULL,
	[FecNac] [datetime] NOT NULL,
	[StausReg] [varchar](1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [int] NOT NULL,
	[IdNivel] [int] NOT NULL,
	[NomCarrera] [varchar](50) NULL,
	[SemCarrera] [tinyint] NULL,
	[StatusReg] [varchar](1) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] NOT NULL,
	[IdSalon] [int] NULL,
	[IdTurno] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePass]    Script Date: 11/11/2017 01:41:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_UpdatePass] (@Id int, @dato varchar(50))
as begin
	update Usuario set pass= @dato where IdUsuario = @id
end

exec sp_UpdatePass 1661464, 'ctoro73'
GO
/****** Object:  Trigger [tr_UpdatePass]    Script Date: 11/11/2017 01:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tr_UpdatePass]
	on [dbo].[Usuario]
	after update
	as
	begin
	select * from inserted
	select * from deleted
		end
GO
/****** Object:  Table [dbo].[Maestro_Titulo]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro_Titulo](
	[IdMaestro] [int] NULL,
	[IdTitulo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_grado_de_maestros]    Script Date: 11/11/2017 01:41:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_grado_de_maestros]
@nombreMae varchar(50)
 as
 begin 
 
 
			select m.NomMaestro, m.Apellidos, t.nomTitulo
			from Maestro m inner join Maestro_Titulo mat
			on m.IdMaestro = mat.IdMaestro
			inner join Titulo t
			on mat.IdTitulo= t.IdTitulo
			where m.NomMaestro = @nombreMae
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_alumnos_por_salon]    Script Date: 11/11/2017 01:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_alumnos_por_salon]
@idgrupo int
as
begin
select s.Capacidad, ca.IdSalon
from Salon s inner join Grupo ca 
on s.IdSalon = ca.IdSalon 
where s.IdSalon = @idgrupo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Alumno_Registrados]    Script Date: 11/11/2017 01:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Alumno_Registrados] 
@idUs int
as
begin
select a.StausReg , a.NomAlu, a.IdAlumno, u.nombreL
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario
where a.IdAlumno= @idUs
end
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[IdMateria] [int] NOT NULL,
	[IdCarrera] [int] NOT NULL,
	[MatNom] [nvarchar](50) NOT NULL,
	[MatCred] [smallint] NOT NULL,
	[NumFrecuencia] [smallint] NOT NULL,
	[NumSemestre] [smallint] NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[IdMateria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo_Alumno]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo_Alumno](
	[IdGrupoAlumno] [int] NOT NULL,
	[IdGrupoMateria] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
 CONSTRAINT [PK_Grupo_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdGrupoAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[alumnos_por_salon]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[alumnos_por_salon] as
select s.Capacidad, ca.IdSalon
from Salon s inner join Grupo ca 
on s.IdSalon = ca.IdSalon
GO
/****** Object:  View [dbo].[Alumno_registrados]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Alumno_registrados] as
select a.StausReg , a.NomAlu, a.IdAlumno, u.nombreL
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario
GO
/****** Object:  View [dbo].[grado_de_maestros]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view  [dbo].[grado_de_maestros] as
select m.NomMaestro, m.Apellidos, t.nomTitulo
from Maestro m inner join Maestro_Titulo mat
on m.IdMaestro = mat.IdMaestro
inner join Titulo t
on mat.IdTitulo= t.IdTitulo
GO
/****** Object:  View [dbo].[dificultad]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dificultad] as 
select f.NomCarrera, f.SemCarrera, n.nomNivel
from Carrera f inner join Nivel n 
on f.IdNivel = n.IdNivel
GO
/****** Object:  View [dbo].[MaxCreditoporSem]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[MaxCreditoporSem] as
select MAX (cre.MatCred) as [CrediMaxi]
from Materia cre inner join Carrera ca
on cre.IdCarrera= ca.IdCarrera
inner join Nivel ni
on ca.IdNivel = ni.IdNivel
group by cre.MatCred
GO
/****** Object:  Table [dbo].[Materia_Maestro]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia_Maestro](
	[IdMateriaMaestro] [int] NOT NULL,
	[IdMateria] [int] NULL,
	[IdMaestro] [int] NULL,
 CONSTRAINT [PK_Materia_Maestro] PRIMARY KEY CLUSTERED 
(
	[IdMateriaMaestro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Maestros_Asignaturas]    Script Date: 11/11/2017 01:41:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Maestros_Asignaturas] 
		@idMat int 
		as
		begin 

			select ma.NomMaestro, ma.Apellidos, m.MatNom
			from Maestro ma inner join Materia_Maestro mm
			on ma.IdMaestro = mm.IdMaestro
			inner join Materia m 
			on mm.IdMateria = m.IdMateria
			where  mm.IdMateria = @idMat
			end
GO
/****** Object:  View [dbo].[Maestros_Asignaturas]    Script Date: 11/11/2017 01:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Maestros_Asignaturas] as
select ma.NomMaestro, ma.Apellidos, m.MatNom
from Maestro ma inner join Materia_Maestro mm
on ma.IdMaestro = mm.IdMaestro
inner join Materia m 
on mm.IdMateria = m.IdMateria
GO
/****** Object:  Table [dbo].[Grupo_Materia]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo_Materia](
	[IdGrupoMateria] [int] NOT NULL,
	[IdMateriaMaestro] [int] NULL,
	[IdGrupo] [int] NULL,
	[HoraInicio] [time](7) NOT NULL,
	[HoraFin] [time](7) NOT NULL,
 CONSTRAINT [PK_Grupo_Materia] PRIMARY KEY CLUSTERED 
(
	[IdGrupoMateria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 11/11/2017 01:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[IdGrupoaMateria] [int] NOT NULL,
	[IdGrupoAlumno] [int] NOT NULL,
	[Calificación] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Alumno_Usuario]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Usuario]
GO
/****** Object:  ForeignKey [FK_Calificaciones_Grupo_Alumno]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Grupo_Alumno] FOREIGN KEY([IdGrupoAlumno])
REFERENCES [dbo].[Grupo_Alumno] ([IdGrupoAlumno])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Grupo_Alumno]
GO
/****** Object:  ForeignKey [FK_Calificaciones_Grupo_Materia]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Grupo_Materia] FOREIGN KEY([IdGrupoaMateria])
REFERENCES [dbo].[Grupo_Materia] ([IdGrupoMateria])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Grupo_Materia]
GO
/****** Object:  ForeignKey [FK_Carrera_Nivel]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_Nivel] FOREIGN KEY([IdNivel])
REFERENCES [dbo].[Nivel] ([IdNivel])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_Nivel]
GO
/****** Object:  ForeignKey [FK_Grupo_Salon]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Salon] FOREIGN KEY([IdSalon])
REFERENCES [dbo].[Salon] ([IdSalon])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Salon]
GO
/****** Object:  ForeignKey [FK_Grupo_Turno]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Turno] FOREIGN KEY([IdTurno])
REFERENCES [dbo].[Turno] ([IdTurno])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Turno]
GO
/****** Object:  ForeignKey [FK_Grupo_Alumno_Alumno]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Grupo_Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Alumno_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
ALTER TABLE [dbo].[Grupo_Alumno] CHECK CONSTRAINT [FK_Grupo_Alumno_Alumno]
GO
/****** Object:  ForeignKey [FK_Grupo_Materia_Grupo]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Grupo_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Materia_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[Grupo_Materia] CHECK CONSTRAINT [FK_Grupo_Materia_Grupo]
GO
/****** Object:  ForeignKey [FK_Grupo_Materia_Materia_Maestro]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Grupo_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Materia_Materia_Maestro] FOREIGN KEY([IdMateriaMaestro])
REFERENCES [dbo].[Materia_Maestro] ([IdMateriaMaestro])
GO
ALTER TABLE [dbo].[Grupo_Materia] CHECK CONSTRAINT [FK_Grupo_Materia_Materia_Maestro]
GO
/****** Object:  ForeignKey [FK_Maestro_Titulo_Maestro]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Maestro_Titulo]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Titulo_Maestro] FOREIGN KEY([IdMaestro])
REFERENCES [dbo].[Maestro] ([IdMaestro])
GO
ALTER TABLE [dbo].[Maestro_Titulo] CHECK CONSTRAINT [FK_Maestro_Titulo_Maestro]
GO
/****** Object:  ForeignKey [FK_Maestro_Titulo_Titulo]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Maestro_Titulo]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Titulo_Titulo] FOREIGN KEY([IdTitulo])
REFERENCES [dbo].[Titulo] ([IdTitulo])
GO
ALTER TABLE [dbo].[Maestro_Titulo] CHECK CONSTRAINT [FK_Maestro_Titulo_Titulo]
GO
/****** Object:  ForeignKey [FK_Materia_Carrera]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
/****** Object:  ForeignKey [FK_Materia_Maestro_Maestro]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Materia_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Maestro_Maestro] FOREIGN KEY([IdMaestro])
REFERENCES [dbo].[Maestro] ([IdMaestro])
GO
ALTER TABLE [dbo].[Materia_Maestro] CHECK CONSTRAINT [FK_Materia_Maestro_Maestro]
GO
/****** Object:  ForeignKey [FK_Materia_Maestro_Materia]    Script Date: 11/11/2017 01:41:15 ******/
ALTER TABLE [dbo].[Materia_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Maestro_Materia] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materia] ([IdMateria])
GO
ALTER TABLE [dbo].[Materia_Maestro] CHECK CONSTRAINT [FK_Materia_Maestro_Materia]
GO
