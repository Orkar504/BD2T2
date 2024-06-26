GO
/****** Object:  Table [dbo].[Certamen]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certamen](
	[festival] [nvarchar](40) NOT NULL,
	[certamen] [numeric](4, 0) NOT NULL,
	[organizador] [nvarchar](60) NULL,
 CONSTRAINT [pk_certamen] PRIMARY KEY CLUSTERED 
(
	[festival] ASC,
	[certamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cine]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cine](
	[cine] [nvarchar](25) NOT NULL,
	[ciudad_cine] [nvarchar](25) NULL,
	[direccion_cine] [nvarchar](65) NULL,
 CONSTRAINT [pk_cine] PRIMARY KEY CLUSTERED 
(
	[cine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Festival]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Festival](
	[festival] [nvarchar](40) NOT NULL,
	[fundacion] [date] NULL,
 CONSTRAINT [pk_festival] PRIMARY KEY CLUSTERED 
(
	[festival] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Festival_Premio]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Festival_Premio](
	[festival] [nvarchar](40) NOT NULL,
	[premio] [nvarchar](50) NOT NULL,
	[galardon] [nvarchar](50) NULL,
 CONSTRAINT [pk_fespre] PRIMARY KEY CLUSTERED 
(
	[festival] ASC,
	[premio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otorgo]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otorgo](
	[festival] [nvarchar](40) NOT NULL,
	[certamen] [numeric](4, 0) NOT NULL,
	[premio] [nvarchar](50) NOT NULL,
	[cip] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_otorgo] PRIMARY KEY CLUSTERED 
(
	[festival] ASC,
	[certamen] ASC,
	[premio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[cip] [nvarchar](10) NOT NULL,
	[titulo_p] [nvarchar](45) NOT NULL,
	[ano_produccion] [numeric](4, 0) NOT NULL,
	[titulo_s] [nvarchar](45) NULL,
	[nacionalidad] [nvarchar](15) NULL,
	[presupuesto] [numeric](11, 0) NULL,
	[duracion] [numeric](3, 0) NULL,
 CONSTRAINT [pk_pelicula] PRIMARY KEY CLUSTERED 
(
	[cip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ck_cip] UNIQUE NONCLUSTERED 
(
	[titulo_p] ASC,
	[ano_produccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[nombre_persona] [nvarchar](25) NOT NULL,
	[nacionalidad_persona] [nvarchar](15) NULL,
	[sexo_persona] [nvarchar](1) NULL,
 CONSTRAINT [pk_persona] PRIMARY KEY CLUSTERED 
(
	[nombre_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Premio]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premio](
	[premio] [nvarchar](50) NOT NULL,
	[tarea] [nvarchar](30) NULL,
 CONSTRAINT [pk_premio] PRIMARY KEY CLUSTERED 
(
	[premio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proyeccion]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyeccion](
	[cine] [nvarchar](25) NOT NULL,
	[sala] [numeric](2, 0) NOT NULL,
	[cip] [nvarchar](10) NOT NULL,
	[fecha_estreno] [date] NOT NULL,
	[dias_estreno] [numeric](3, 0) NULL,
	[espectadores] [numeric](6, 0) NULL,
	[recaudacion] [numeric](8, 0) NULL,
 CONSTRAINT [pk_proyección] PRIMARY KEY CLUSTERED 
(
	[cine] ASC,
	[sala] ASC,
	[cip] ASC,
	[fecha_estreno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reconocimiento]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reconocimiento](
	[festival] [nvarchar](40) NOT NULL,
	[certamen] [numeric](4, 0) NOT NULL,
	[premio] [nvarchar](50) NOT NULL,
	[nombre_persona] [nvarchar](25) NOT NULL,
 CONSTRAINT [pk_recono] PRIMARY KEY CLUSTERED 
(
	[festival] ASC,
	[certamen] ASC,
	[premio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sala]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[cine] [nvarchar](25) NOT NULL,
	[sala] [numeric](2, 0) NOT NULL,
	[aforo] [numeric](4, 0) NULL,
 CONSTRAINT [pk_sala] PRIMARY KEY CLUSTERED 
(
	[cine] ASC,
	[sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tarea]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarea](
	[tarea] [nvarchar](30) NOT NULL,
	[sexo_tarea] [nvarchar](1) NULL,
 CONSTRAINT [pk_tarea] PRIMARY KEY CLUSTERED 
(
	[tarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trabajo]    Script Date: 08/11/2018 10:03:23 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajo](
	[cip] [nvarchar](10) NOT NULL,
	[nombre_persona] [nvarchar](25) NOT NULL,
	[tarea] [nvarchar](30) NOT NULL,
 CONSTRAINT [pk_trabajo] PRIMARY KEY CLUSTERED 
(
	[cip] ASC,
	[nombre_persona] ASC,
	[tarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Certamen]  WITH CHECK ADD  CONSTRAINT [fk_cer_fes] FOREIGN KEY([festival])
REFERENCES [dbo].[Festival] ([festival])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Certamen] CHECK CONSTRAINT [fk_cer_fes]
GO
ALTER TABLE [dbo].[Festival_Premio]  WITH CHECK ADD  CONSTRAINT [fk_fepr_fes] FOREIGN KEY([festival])
REFERENCES [dbo].[Festival] ([festival])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Festival_Premio] CHECK CONSTRAINT [fk_fepr_fes]
GO
ALTER TABLE [dbo].[Festival_Premio]  WITH CHECK ADD  CONSTRAINT [fk_fepr_pre] FOREIGN KEY([premio])
REFERENCES [dbo].[Premio] ([premio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Festival_Premio] CHECK CONSTRAINT [fk_fepr_pre]
GO
ALTER TABLE [dbo].[Otorgo]  WITH CHECK ADD  CONSTRAINT [fk_otor_fepr] FOREIGN KEY([festival], [premio])
REFERENCES [dbo].[Festival_Premio] ([festival], [premio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Otorgo] CHECK CONSTRAINT [fk_otor_fepr]
GO
ALTER TABLE [dbo].[Premio]  WITH CHECK ADD  CONSTRAINT [fk_pre_tar] FOREIGN KEY([tarea])
REFERENCES [dbo].[Tarea] ([tarea])
GO
ALTER TABLE [dbo].[Premio] CHECK CONSTRAINT [fk_pre_tar]
GO
ALTER TABLE [dbo].[Proyeccion]  WITH CHECK ADD  CONSTRAINT [fk_pro_pel] FOREIGN KEY([cip])
REFERENCES [dbo].[Pelicula] ([cip])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Proyeccion] CHECK CONSTRAINT [fk_pro_pel]
GO
ALTER TABLE [dbo].[Proyeccion]  WITH CHECK ADD  CONSTRAINT [fk_pro_sal] FOREIGN KEY([cine], [sala])
REFERENCES [dbo].[Sala] ([cine], [sala])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Proyeccion] CHECK CONSTRAINT [fk_pro_sal]
GO
ALTER TABLE [dbo].[Reconocimiento]  WITH CHECK ADD  CONSTRAINT [fk_reco_fepr] FOREIGN KEY([festival], [premio])
REFERENCES [dbo].[Festival_Premio] ([festival], [premio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reconocimiento] CHECK CONSTRAINT [fk_reco_fepr]
GO
ALTER TABLE [dbo].[Reconocimiento]  WITH CHECK ADD  CONSTRAINT [fk_reco_per] FOREIGN KEY([nombre_persona])
REFERENCES [dbo].[Personaje] ([nombre_persona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reconocimiento] CHECK CONSTRAINT [fk_reco_per]
GO
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [fk_sal_cin] FOREIGN KEY([cine])
REFERENCES [dbo].[Cine] ([cine])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [fk_sal_cin]
GO
ALTER TABLE [dbo].[Trabajo]  WITH CHECK ADD  CONSTRAINT [fk_Tra_Pel] FOREIGN KEY([cip])
REFERENCES [dbo].[Pelicula] ([cip])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trabajo] CHECK CONSTRAINT [fk_Tra_Pel]
GO
ALTER TABLE [dbo].[Trabajo]  WITH CHECK ADD  CONSTRAINT [fk_tra_per] FOREIGN KEY([nombre_persona])
REFERENCES [dbo].[Personaje] ([nombre_persona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trabajo] CHECK CONSTRAINT [fk_tra_per]
GO
ALTER TABLE [dbo].[Trabajo]  WITH CHECK ADD  CONSTRAINT [fk_tra_tar] FOREIGN KEY([tarea])
REFERENCES [dbo].[Tarea] ([tarea])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trabajo] CHECK CONSTRAINT [fk_tra_tar]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [ck_dur] CHECK  (([duracion]>(0)))
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [ck_dur]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [ck_pre] CHECK  (([presupuesto]>(0)))
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [ck_pre]
GO
ALTER TABLE [dbo].[Personaje]  WITH CHECK ADD  CONSTRAINT [ck_sep] CHECK  (([sexo_persona]='M' OR [sexo_persona]='H'))
GO
ALTER TABLE [dbo].[Personaje] CHECK CONSTRAINT [ck_sep]
GO
ALTER TABLE [dbo].[Proyeccion]  WITH CHECK ADD  CONSTRAINT [ck_dia] CHECK  (([dias_estreno]>(0)))
GO
ALTER TABLE [dbo].[Proyeccion] CHECK CONSTRAINT [ck_dia]
GO
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [ck_afr] CHECK  (([aforo]>(0)))
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [ck_afr]
GO
ALTER TABLE [dbo].[Tarea]  WITH CHECK ADD  CONSTRAINT [ck_set] CHECK  (([sexo_tarea]='N' OR [sexo_tarea]='M' OR [sexo_tarea]='H'))
GO
ALTER TABLE [dbo].[Tarea] CHECK CONSTRAINT [ck_set]
GO
