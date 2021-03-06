USE [ICDS]
GO
/****** Object:  Table [dbo].[Biznesi]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Biznesi](
	[Biznesi_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [varchar](40) NOT NULL,
	[Lloji] [int] NOT NULL,
	[Qyteti] [int] NOT NULL,
	[Komuna] [int] NOT NULL,
 CONSTRAINT [B_pk] PRIMARY KEY CLUSTERED 
(
	[Biznesi_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faktura]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faktura](
	[Faktura_ID] [int] IDENTITY(1,1) NOT NULL,
	[Biznesi_ID] [int] NOT NULL,
	[Produkti_ID] [int] NOT NULL,
	[Cmimi_me_TVSH] [decimal](5, 2) NOT NULL,
	[Cmimi] [decimal](5, 2) NOT NULL,
	[Data] [datetime] NULL,
	[Barkodi] [int] NOT NULL,
	[Sasia] [decimal](12, 1) NOT NULL,
 CONSTRAINT [Faktura_pk] PRIMARY KEY CLUSTERED 
(
	[Faktura_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FaturaHyrese]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaturaHyrese](
	[FaturaH_ID] [int] IDENTITY(1,1) NOT NULL,
	[Produkti_ID] [int] NOT NULL,
	[Cmimi] [decimal](12, 1) NOT NULL,
	[Data] [datetime] NULL,
	[Palete] [decimal](12, 1) NOT NULL,
	[Paketa] [decimal](12, 1) NOT NULL,
	[Cope] [decimal](12, 1) NOT NULL,
	[Data_e_Skadences] [datetime] NOT NULL,
 CONSTRAINT [FaturaH_pk] PRIMARY KEY CLUSTERED 
(
	[FaturaH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hyrjet]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hyrjet](
	[Hyrjet_ID] [int] IDENTITY(1,1) NOT NULL,
	[Totali] [decimal](12, 1) NOT NULL,
	[Data] [datetime] NOT NULL,
	[Palete] [decimal](12, 1) NOT NULL,
	[Paketa] [decimal](12, 1) NOT NULL,
	[Cope] [decimal](12, 1) NOT NULL,
 CONSTRAINT [h_pk] PRIMARY KEY CLUSTERED 
(
	[Hyrjet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Klienti]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klienti](
	[K_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [varchar](20) NOT NULL,
	[Mbiemri] [varchar](20) NOT NULL,
	[Mosha] [int] NOT NULL,
	[Gjinia] [char](1) NOT NULL,
	[Qyteti] [int] NOT NULL,
	[Klienti_LogIn] [int] NOT NULL,
 CONSTRAINT [K_pk] PRIMARY KEY CLUSTERED 
(
	[K_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Komuna]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Komuna](
	[K_ID] [int] NOT NULL,
	[Emri] [varchar](50) NULL,
	[Qyteti] [int] NOT NULL,
 CONSTRAINT [Kom_pk] PRIMARY KEY CLUSTERED 
(
	[K_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lloji_i_Biznesit]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lloji_i_Biznesit](
	[LL_ID] [int] NOT NULL,
	[Emri] [varchar](20) NOT NULL,
 CONSTRAINT [LL_pk] PRIMARY KEY CLUSTERED 
(
	[LL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Porosia]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Porosia](
	[Porosia_ID] [int] IDENTITY(1,1) NOT NULL,
	[Produkti_ID] [int] NOT NULL,
	[Sasia] [int] NOT NULL,
	[Biznesi_ID] [int] NOT NULL,
	[Adresa] [varchar](60) NOT NULL,
	[Totali] [decimal](12, 1) NOT NULL,
 CONSTRAINT [Porosia_pk] PRIMARY KEY CLUSTERED 
(
	[Porosia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Porosite]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Porosite](
	[PorositeId] [int] IDENTITY(1,1) NOT NULL,
	[Biznesi_ID] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Sasia] [int] NOT NULL,
	[Totali] [decimal](12, 1) NOT NULL,
 CONSTRAINT [porosite_pk] PRIMARY KEY CLUSTERED 
(
	[PorositeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pozitat]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pozitat](
	[Pozita_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [varchar](20) NOT NULL,
 CONSTRAINT [Poz_pk] PRIMARY KEY CLUSTERED 
(
	[Pozita_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produkti]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produkti](
	[Produkti_ID] [int] NOT NULL,
	[Emri] [varchar](70) NOT NULL,
	[Cmimi] [decimal](5, 2) NOT NULL,
	[Barkodi] [int] NOT NULL,
	[Palete] [decimal](5, 1) NOT NULL,
	[Paketa] [decimal](5, 1) NOT NULL,
	[Cope] [decimal](5, 1) NOT NULL,
 CONSTRAINT [Pr_pk] PRIMARY KEY CLUSTERED 
(
	[Produkti_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Produkti_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Punetori]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Punetori](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [varchar](20) NOT NULL,
	[Mbiemri] [varchar](20) NOT NULL,
	[Mosha] [int] NOT NULL,
	[Gjinia] [char](1) NOT NULL,
	[Pozita] [int] NOT NULL,
	[Adresa] [varchar](50) NOT NULL,
	[Punetori_LogIn] [int] NULL,
 CONSTRAINT [P_pk] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Qyteti]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Qyteti](
	[Qyteti_ID] [int] NOT NULL,
	[Emri] [varchar](20) NULL,
	[Zip_Code] [int] NOT NULL,
 CONSTRAINT [Q_pk] PRIMARY KEY CLUSTERED 
(
	[Qyteti_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shitjet]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shitjet](
	[Shitjet_ID] [int] IDENTITY(1,1) NOT NULL,
	[Biznesi_ID] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Cmimi_me_Tvsh] [decimal](12, 1) NOT NULL,
	[Cmimi_pa_Tvsh] [decimal](12, 1) NOT NULL,
	[Totali] [decimal](12, 1) NOT NULL,
	[SasiaPaket] [decimal](12, 1) NOT NULL,
 CONSTRAINT [sh_pk] PRIMARY KEY CLUSTERED 
(
	[Shitjet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stoku]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stoku](
	[Stoku_ID] [int] IDENTITY(1,1) NOT NULL,
	[Produkti_ID] [int] NOT NULL,
	[Palete] [decimal](12, 1) NOT NULL,
	[Paketa] [decimal](12, 1) NOT NULL,
	[Cope] [decimal](12, 1) NOT NULL,
	[DataSkadencesProd] [datetime] NULL,
 CONSTRAINT [Stoku_pk] PRIMARY KEY CLUSTERED 
(
	[Stoku_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-Jun-18 1:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_IDLOG] [varchar](50) NULL,
	[U_Password] [varchar](50) NULL,
 CONSTRAINT [U_pk] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Biznesi]  WITH CHECK ADD  CONSTRAINT [B_fk] FOREIGN KEY([Lloji])
REFERENCES [dbo].[Lloji_i_Biznesit] ([LL_ID])
GO
ALTER TABLE [dbo].[Biznesi] CHECK CONSTRAINT [B_fk]
GO
ALTER TABLE [dbo].[Biznesi]  WITH CHECK ADD  CONSTRAINT [B2_fk] FOREIGN KEY([Qyteti])
REFERENCES [dbo].[Qyteti] ([Qyteti_ID])
GO
ALTER TABLE [dbo].[Biznesi] CHECK CONSTRAINT [B2_fk]
GO
ALTER TABLE [dbo].[Biznesi]  WITH CHECK ADD  CONSTRAINT [B3_fk] FOREIGN KEY([Komuna])
REFERENCES [dbo].[Komuna] ([K_ID])
GO
ALTER TABLE [dbo].[Biznesi] CHECK CONSTRAINT [B3_fk]
GO
ALTER TABLE [dbo].[Faktura]  WITH CHECK ADD  CONSTRAINT [Faktura_fk] FOREIGN KEY([Biznesi_ID])
REFERENCES [dbo].[Biznesi] ([Biznesi_ID])
GO
ALTER TABLE [dbo].[Faktura] CHECK CONSTRAINT [Faktura_fk]
GO
ALTER TABLE [dbo].[Faktura]  WITH CHECK ADD  CONSTRAINT [Faktura2_fk] FOREIGN KEY([Produkti_ID])
REFERENCES [dbo].[Produkti] ([Produkti_ID])
GO
ALTER TABLE [dbo].[Faktura] CHECK CONSTRAINT [Faktura2_fk]
GO
ALTER TABLE [dbo].[FaturaHyrese]  WITH CHECK ADD  CONSTRAINT [Fatura_fk] FOREIGN KEY([Produkti_ID])
REFERENCES [dbo].[Produkti] ([Produkti_ID])
GO
ALTER TABLE [dbo].[FaturaHyrese] CHECK CONSTRAINT [Fatura_fk]
GO
ALTER TABLE [dbo].[Klienti]  WITH CHECK ADD  CONSTRAINT [K_fk] FOREIGN KEY([Qyteti])
REFERENCES [dbo].[Qyteti] ([Qyteti_ID])
GO
ALTER TABLE [dbo].[Klienti] CHECK CONSTRAINT [K_fk]
GO
ALTER TABLE [dbo].[Klienti]  WITH CHECK ADD  CONSTRAINT [K1_fk] FOREIGN KEY([Klienti_LogIn])
REFERENCES [dbo].[Users] ([U_ID])
GO
ALTER TABLE [dbo].[Klienti] CHECK CONSTRAINT [K1_fk]
GO
ALTER TABLE [dbo].[Komuna]  WITH CHECK ADD  CONSTRAINT [Kom_fk] FOREIGN KEY([Qyteti])
REFERENCES [dbo].[Qyteti] ([Qyteti_ID])
GO
ALTER TABLE [dbo].[Komuna] CHECK CONSTRAINT [Kom_fk]
GO
ALTER TABLE [dbo].[Porosia]  WITH CHECK ADD  CONSTRAINT [Porosia_fk] FOREIGN KEY([Produkti_ID])
REFERENCES [dbo].[Produkti] ([Produkti_ID])
GO
ALTER TABLE [dbo].[Porosia] CHECK CONSTRAINT [Porosia_fk]
GO
ALTER TABLE [dbo].[Porosia]  WITH CHECK ADD  CONSTRAINT [Porosia2_fk] FOREIGN KEY([Biznesi_ID])
REFERENCES [dbo].[Biznesi] ([Biznesi_ID])
GO
ALTER TABLE [dbo].[Porosia] CHECK CONSTRAINT [Porosia2_fk]
GO
ALTER TABLE [dbo].[Porosite]  WITH CHECK ADD  CONSTRAINT [porosite_fk] FOREIGN KEY([Biznesi_ID])
REFERENCES [dbo].[Biznesi] ([Biznesi_ID])
GO
ALTER TABLE [dbo].[Porosite] CHECK CONSTRAINT [porosite_fk]
GO
ALTER TABLE [dbo].[Punetori]  WITH CHECK ADD  CONSTRAINT [P_fk] FOREIGN KEY([Pozita])
REFERENCES [dbo].[Pozitat] ([Pozita_ID])
GO
ALTER TABLE [dbo].[Punetori] CHECK CONSTRAINT [P_fk]
GO
ALTER TABLE [dbo].[Punetori]  WITH CHECK ADD  CONSTRAINT [P1_fk] FOREIGN KEY([Punetori_LogIn])
REFERENCES [dbo].[Users] ([U_ID])
GO
ALTER TABLE [dbo].[Punetori] CHECK CONSTRAINT [P1_fk]
GO
ALTER TABLE [dbo].[Shitjet]  WITH CHECK ADD  CONSTRAINT [sh_fk] FOREIGN KEY([Biznesi_ID])
REFERENCES [dbo].[Biznesi] ([Biznesi_ID])
GO
ALTER TABLE [dbo].[Shitjet] CHECK CONSTRAINT [sh_fk]
GO
ALTER TABLE [dbo].[Stoku]  WITH CHECK ADD  CONSTRAINT [Stoku_fk] FOREIGN KEY([Produkti_ID])
REFERENCES [dbo].[Produkti] ([Produkti_ID])
GO
ALTER TABLE [dbo].[Stoku] CHECK CONSTRAINT [Stoku_fk]
GO
