USE [Premium_Quality]
GO
/****** Object:  Table [dbo].[Deposito]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deposito](
	[ID_Deposito] [int] IDENTITY(1,1) NOT NULL,
	[Dirección] [varchar](200) NOT NULL,
	[Teléfono] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Deposito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Dirección] [varchar](200) NOT NULL,
	[Teléfono] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DNI] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ID_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Dirección] [varchar](200) NOT NULL,
	[Teléfono] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[ID_Sucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Dirección] [varchar](200) NOT NULL,
	[Teléfono] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedores](
	[ID_Vendedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[ID_Sucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Vendedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[ID_Vehiculo] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Año] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[ID_Proveedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Vehiculo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Rol] [varchar](50) NOT NULL,
	[ID_Sucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[ID_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[ID_Vehiculo] [int] NULL,
	[ID_Vendedor] [int] NULL,
	[Monto] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Venta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STOCK]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STOCK](
	[PK_Stock] [int] NOT NULL,
	[Vehiculo] [varchar](50) NOT NULL,
	[Deposito] [varbinary](50) NOT NULL,
	[Cantidad] [varbinary](50) NOT NULL,
	[FK_ID_Vehiculo] [int] NOT NULL,
	[FK_ID_Deposito] [int] NOT NULL,
 CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED 
(
	[PK_Stock] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seguros]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seguros](
	[ID_Seguro] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Vencimiento] [date] NOT NULL,
	[ID_Vehiculo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Seguro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Legales_gestorias]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Legales_gestorias](
	[ID_Tramite] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[ID_Vehiculo] [int] NULL,
	[ID_Cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Tramite] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facturaciones]    Script Date: 08/20/2024 01:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturaciones](
	[ID_Factura] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[ID_Venta] [int] NULL,
	[ID_Cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Vendedore__ID_Su__31EC6D26]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Vendedores]  WITH CHECK ADD FOREIGN KEY([ID_Sucursal])
REFERENCES [dbo].[Sucursales] ([ID_Sucursal])
GO
/****** Object:  ForeignKey [FK__Vehiculos__ID_Pr__2D27B809]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD FOREIGN KEY([ID_Proveedor])
REFERENCES [dbo].[Proveedores] ([ID_Proveedor])
GO
/****** Object:  ForeignKey [FK__Empleados__ID_Su__45F365D3]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([ID_Sucursal])
REFERENCES [dbo].[Sucursales] ([ID_Sucursal])
GO
/****** Object:  ForeignKey [FK__ventas__ID_Vehic__3A81B327]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ID_Vehiculo])
REFERENCES [dbo].[Vehiculos] ([ID_Vehiculo])
GO
/****** Object:  ForeignKey [FK__ventas__ID_Vende__3B75D760]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ID_Vendedor])
REFERENCES [dbo].[Vendedores] ([ID_Vendedor])
GO
/****** Object:  ForeignKey [FK_STOCK_Deposito]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[STOCK]  WITH CHECK ADD  CONSTRAINT [FK_STOCK_Deposito] FOREIGN KEY([FK_ID_Deposito])
REFERENCES [dbo].[Deposito] ([ID_Deposito])
GO
ALTER TABLE [dbo].[STOCK] CHECK CONSTRAINT [FK_STOCK_Deposito]
GO
/****** Object:  ForeignKey [FK_STOCK_Vehiculos]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[STOCK]  WITH CHECK ADD  CONSTRAINT [FK_STOCK_Vehiculos] FOREIGN KEY([FK_ID_Vehiculo])
REFERENCES [dbo].[Vehiculos] ([ID_Vehiculo])
GO
ALTER TABLE [dbo].[STOCK] CHECK CONSTRAINT [FK_STOCK_Vehiculos]
GO
/****** Object:  ForeignKey [FK__Seguros__ID_Vehi__4AB81AF0]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Seguros]  WITH CHECK ADD FOREIGN KEY([ID_Vehiculo])
REFERENCES [dbo].[Vehiculos] ([ID_Vehiculo])
GO
/****** Object:  ForeignKey [FK__Legales_g__ID_Cl__5070F446]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Legales_gestorias]  WITH CHECK ADD FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
/****** Object:  ForeignKey [FK__Legales_g__ID_Ve__4F7CD00D]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Legales_gestorias]  WITH CHECK ADD FOREIGN KEY([ID_Vehiculo])
REFERENCES [dbo].[Vehiculos] ([ID_Vehiculo])
GO
/****** Object:  ForeignKey [FK__Facturaci__ID_Cl__412EB0B6]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Facturaciones]  WITH CHECK ADD FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
/****** Object:  ForeignKey [FK__Facturaci__ID_Ve__403A8C7D]    Script Date: 08/20/2024 01:08:38 ******/
ALTER TABLE [dbo].[Facturaciones]  WITH CHECK ADD FOREIGN KEY([ID_Venta])
REFERENCES [dbo].[Ventas] ([ID_Venta])
GO
