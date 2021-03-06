USE [master]
GO
/****** Object:  Database [CSMovimientoGranos]    Script Date: 11/06/2013 20:47:36 ******/
CREATE DATABASE [CSMovimientoGranos] ON  PRIMARY 
( NAME = N'CSMovimientoGranos', FILENAME = N'E:\User\Cardoner Sistemas\Development\CS-Movimiento de Granos\Database\CSMovimientoGranos.mdf' , SIZE = 12736KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSMovimientoGranos_log', FILENAME = N'E:\User\Cardoner Sistemas\Development\CS-Movimiento de Granos\Database\CSMovimientoGranos.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSMovimientoGranos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSMovimientoGranos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSMovimientoGranos] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET ARITHABORT OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CSMovimientoGranos] SET AUTO_SHRINK ON
GO
ALTER DATABASE [CSMovimientoGranos] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CSMovimientoGranos] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CSMovimientoGranos] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET  DISABLE_BROKER
GO
ALTER DATABASE [CSMovimientoGranos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CSMovimientoGranos] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CSMovimientoGranos] SET  READ_WRITE
GO
ALTER DATABASE [CSMovimientoGranos] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CSMovimientoGranos] SET  MULTI_USER
GO
ALTER DATABASE [CSMovimientoGranos] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CSMovimientoGranos] SET DB_CHAINING OFF
GO
USE [CSMovimientoGranos]
GO
/****** Object:  Table [dbo].[Cereal]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cereal](
	[IDCereal] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[MermaVolatil] [decimal](3, 2) NULL,
	[MermaHumedadBase] [decimal](3, 1) NULL,
	[MermaHumedadManipuleo] [decimal](2, 2) NULL,
	[ONCCA_EspecieCodigo] [tinyint] NULL,
	[ONCCA_EspecieNombre] [varchar](30) NULL,
	[ONCCA_GranoTipoCodigo] [tinyint] NULL,
	[ONCCA_GranoTipoNombre] [varchar](30) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [aaaaaCereal_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDCereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Cereal__Nombre] ON [dbo].[Cereal] 
(
	[Nombre] ASC,
	[Tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1215' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'꨻᧴䂸邐⽈鍾蓫' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1185' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'淠䠶⑽䄭ᆓ帼嫘ཎ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'825' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�쳼䖴䏓莞髤艈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Tipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Tipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'읡慕忯䵽德ᾍ딅얌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MermaVolatilidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MermaVolatilidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaVolatil'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ꥋ⏳靝䅠ꒅᇿヴ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MermaSecadoBase' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MermaSecadoBase' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadBase'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'傢삗䎏ᦹ醛뻌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MermaSecadoManipuleo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MermaSecadoManipuleo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'MermaHumedadManipuleo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㞀櫤ዿ䠶戽ꁛꎍ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_EspecieCodigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_EspecieCodigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_EspecieNombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_EspecieNombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_EspecieNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䏸鄎꥕䩀퍅ꉨ箔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_GranoTipoCodigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_GranoTipoCodigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoCodigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_GranoTipoNombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_GranoTipoNombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'ONCCA_GranoTipoNombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'き斱ꢅ䡒ƒ눗︎�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/04/2011 00:29:36' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'23/05/2012 19:36:10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cereal'
GO
/****** Object:  Table [dbo].[CategoriaIVA]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaIVA](
	[IDCategoriaIVA] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__CategoriaIVA] PRIMARY KEY NONCLUSTERED 
(
	[IDCategoriaIVA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__CategoriaIVA__Nombre] ON [dbo].[CategoriaIVA] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ꚴ澎䊇�㜛槔끚' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'IDCategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2865' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'銈୆퇰䭔烀呹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䚆瑲䯠肰赁䇱㠒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'16/08/2011 17:57:35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'16/08/2011 17:57:36' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CategoriaIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaIVA'
GO
/****** Object:  Table [dbo].[CartaPorte_Talonario]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartaPorte_Talonario](
	[IDCartaPorte_Talonario] [int] NOT NULL,
	[CEENumero] [char](14) NOT NULL,
	[FechaVencimiento] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__CartaPorteTalonario] PRIMARY KEY CLUSTERED 
(
	[IDCartaPorte_Talonario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__CartaPorteTalonario__CEENumero] ON [dbo].[CartaPorte_Talonario] 
(
	[CEENumero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartaPorte_MotivoAnulacion]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartaPorte_MotivoAnulacion](
	[IDCartaPorte_MotivoAnulacion] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__CartaPorte_MotivoAnulacion] PRIMARY KEY CLUSTERED 
(
	[IDCartaPorte_MotivoAnulacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__CartaPorte_MotivoAnulacion__Nombre] ON [dbo].[CartaPorte_MotivoAnulacion] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlicuotaIVA]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlicuotaIVA](
	[IDAlicuotaIVA] [tinyint] NOT NULL,
	[Alicuota] [decimal](3, 1) NOT NULL,
 CONSTRAINT [PK__AlicuotaIVA] PRIMARY KEY CLUSTERED 
(
	[IDAlicuotaIVA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__AlicuotaIVA__Alicuota] ON [dbo].[AlicuotaIVA] 
(
	[Alicuota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entidad]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad](
	[IDEntidad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[CUIT] [char](11) NULL,
	[EsTitular] [bit] NOT NULL,
	[EsIntermediario] [bit] NOT NULL,
	[EsRemitenteComercial] [bit] NOT NULL,
	[EsCorredor] [bit] NOT NULL,
	[EsEntregador] [bit] NOT NULL,
	[EsDestinatario] [bit] NOT NULL,
	[EsDestino] [bit] NOT NULL,
	[EsTransportista] [bit] NOT NULL,
	[EsChofer] [bit] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__Entidad] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Entidad__CUIT] ON [dbo].[Entidad] 
(
	[CUIT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Entidad__Nombre] ON [dbo].[Entidad] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1320' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ﯠ᚞뒩䚽ࢨΣ텈ᆳ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'6180' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'觸屸旑主ᮕ쫽⢙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1335' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'眾荟怂䝂�ጅ�칥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CUIT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CUIT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'嘠迃侢늬﹩꾦' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsTitular' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsTitular' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTitular'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�鉸펻䙇Ҽ猨㊭䡌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsIntermediario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsIntermediario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsIntermediario'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쒢춿拑䮞ⶎ쓱ኑ餎' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsRemitenteComercial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsRemitenteComercial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsRemitenteComercial'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�䑰ꯒ䞵肋昡栓ᦻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsCorredor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsCorredor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsCorredor'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ъ뿖蔧䒦㚻䲉埧솲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsEntregador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsEntregador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsEntregador'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'☍㟅䱬▘맢⽹Ṑ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsDestinatario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsDestinatario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'陭〽紡䯐떥⺻嵏ࡁ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'嚺衕旀䘡涇祣擹凜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsTransportista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsTransportista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsTransportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ꄡ⹝坦䣛춲鸁ᣀ逶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EsChofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EsChofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'EsChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᠣ⑰昀䥘袈䱔㿋枼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'12/04/2011 23:43:18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'13/08/2013 20:39:51' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'231' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
/****** Object:  Table [dbo].[FleteTabla]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleteTabla](
	[IDFleteTabla] [smallint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__FleteTabla] PRIMARY KEY NONCLUSTERED 
(
	[IDFleteTabla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__FleteTabla__Nombre] ON [dbo].[FleteTabla] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDFleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDFleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/05/2011 09:58:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTabla'
GO
/****** Object:  Table [dbo].[Cosecha]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cosecha](
	[IDCosecha] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ONCCA_Codigo] [char](5) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__Cosecha] PRIMARY KEY NONCLUSTERED 
(
	[IDCosecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Cosecha__Nombre] ON [dbo].[Cosecha] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'൸﹈･䰕嶇⭛贖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�鹿䘼䦵調쏚쾉䆙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'Ꝣ鑡턜䟼힗壺䣸䛆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'᏷紊Ი䷵낡�៶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/04/2011 00:24:58' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha'
GO
/****** Object:  Table [dbo].[CondicionPago]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CondicionPago](
	[IDCondicionPago] [smallint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[CantidadDias] [smallint] NULL,
	[Habiles] [bit] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__CondicionPago] PRIMARY KEY CLUSTERED 
(
	[IDCondicionPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__CondicionPago__Nombre] ON [dbo].[CondicionPago] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formulario1116_Talonario]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario1116_Talonario](
	[IDFormulario1116_Talonario] [int] NOT NULL,
	[FormularioTipo] [char](1) NOT NULL,
	[Prefijo] [varchar](4) NOT NULL,
	[PrefijoSeparador] [varchar](1) NULL,
	[NumeroInicio] [varchar](8) NOT NULL,
	[NumeroFin] [varchar](8) NOT NULL,
	[NumeroUltimo] [varchar](8) NULL,
	[Cantidad] [tinyint] NOT NULL,
	[CAC] [char](14) NOT NULL,
	[FechaVencimiento] [smalldatetime] NULL,
	[FechaEntrega] [smalldatetime] NULL,
 CONSTRAINT [PK__Formulario1116_Talonario] PRIMARY KEY CLUSTERED 
(
	[IDFormulario1116_Talonario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK__Formulario1116_Talonario__CAC] UNIQUE NONCLUSTERED 
(
	[IDFormulario1116_Talonario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formulario_Anulado]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario_Anulado](
	[IDFormulario_Anulado] [int] NOT NULL,
	[FormularioCodigo] [tinyint] NOT NULL,
	[FormularioNumero] [varchar](13) NOT NULL,
	[AnulacionMotivo] [tinyint] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__Formulario_Anulado] PRIMARY KEY CLUSTERED 
(
	[IDFormulario_Anulado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Formulario_Anulado__CodigoNumero] ON [dbo].[Formulario_Anulado] 
(
	[FormularioCodigo] ASC,
	[FormularioNumero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubProducto_Grupo]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubProducto_Grupo](
	[IDSubProducto_Grupo] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__SubProducto_Grupo] PRIMARY KEY CLUSTERED 
(
	[IDSubProducto_Grupo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__SubProducto_Grupo__Nombre] ON [dbo].[SubProducto_Grupo] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubProducto]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubProducto](
	[IDSubProducto] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[UtilizaPrecioDolar] [bit] NOT NULL,
	[ONCCA_Codigo] [smallint] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__SubProducto] PRIMARY KEY CLUSTERED 
(
	[IDSubProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retencion]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retencion](
	[IDRetencion] [smallint] NOT NULL,
	[AplicableEn] [char](2) NOT NULL,
	[Concepto] [char](1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[ReFOG_Activo] [bit] NULL,
	[Ganancia_Inscripto] [bit] NULL,
	[BaseCalculoTipo] [char](2) NOT NULL,
	[MinimoNoImponible] [money] NULL,
	[Alicuota] [decimal](4, 2) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__Retencion] PRIMARY KEY CLUSTERED 
(
	[IDRetencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[IDProvincia] [char](1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ONCCA_Codigo] [smallint] NULL,
 CONSTRAINT [aaaaaProvincia_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Provincia__Nombre] ON [dbo].[Provincia] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1470' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Provincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Provincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1740' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Provincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'12/04/2011 23:04:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Provincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Provincia'
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Partido](
	[IDPartido] [smallint] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IDProvincia] [char](1) NOT NULL,
 CONSTRAINT [aaaaaPartido_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Partido__Nombre] ON [dbo].[Partido] 
(
	[IDProvincia] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX__Partido__Provincia] ON [dbo].[Partido] 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProvinciaPartido] ON [dbo].[Partido] 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1290' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'博⢚귙䲓鮵蓗ꮂ擤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDPartido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDPartido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Partido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3465' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쀌욹Ⲹ䓴�﫤�얓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Partido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1470' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'惂鈮婈䕔於濰㱪莞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Partido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/04/2011 00:37:55' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Partido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'516' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Partido'
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 11/06/2013 20:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parametro](
	[IDParametro] [char](100) NOT NULL,
	[Texto] [varchar](1000) NULL,
	[NumeroEntero] [int] NULL,
	[NumeroDecimal] [decimal](18, 9) NULL,
	[Moneda] [money] NULL,
	[FechaHora] [smalldatetime] NULL,
	[SiNo] [bit] NULL,
 CONSTRAINT [PK__Parametro] PRIMARY KEY CLUSTERED 
(
	[IDParametro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_SubProducto_Add]    Script Date: 11/06/2013 20:48:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_SubProducto_Add]
	@IDMovimiento_SubProducto int OUTPUT,
	@IDDocumento_Talonario int,
	@ComprobanteNumero char(13),
	@Fecha smalldatetime,
	@IDEntidad_Titular int,
	@IDOrigenDestino_Origen smallint,
	@IDEntidad_Destinatario int,
	@IDOrigenDestino_Destino smallint,
	@IDEntidad_Transportista int,
	@IDEntidad_Chofer int,
	@IDSubProducto tinyint,
	@IDMovimiento_Cereal int,
	@Porcentaje decimal(5, 2),
	@Kilogramo int,
	@PrecioToneladaDolar money,
	@CotizacionDolarFecha smalldatetime,
	@CotizacionDolarImporte money,
	@PrecioToneladaPeso money,
	@TransporteDominioCamion char(6),
	@TransporteDominioAcoplado char(6),
	@TransporteKilometro smallint,
	@TransporteTarifaReferencia money,
	@TransporteTarifa money,
	@Notas varchar(1000),
	@StringListOfIDSubProductoPorcentajeAndKilogramo varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;

END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetRemitenteCereal]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetRemitenteCereal] 
(	
	@IDEntitad_Titular int, 
	@IDEntidad_Intermediario int,
	@IDEntidad_RemitenteComercial int
) RETURNS int AS
BEGIN
	DECLARE @ReturnValue int

	IF @IDEntidad_Intermediario IS NULL
		BEGIN
		IF @IDEntidad_RemitenteComercial IS NULL
			BEGIN
			SET @ReturnValue = @IDEntitad_Titular
			END
		ELSE
			BEGIN
			SET @ReturnValue = @IDEntidad_RemitenteComercial
			END
		END
	ELSE
		BEGIN
		SET @ReturnValue = @IDEntidad_Intermediario
		END
		
	RETURN @ReturnValue
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetFormulario1116TipoNumero]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetFormulario1116TipoNumero]
(	
	@FormularioTipo char(1),
	@FormularioNumero varchar(13)
) RETURNS varchar(18) AS
BEGIN
	DECLARE @Tipo varchar(2)
	
	SET @Tipo = (CASE @FormularioTipo
					WHEN 'A' THEN 'A'
					WHEN 'B' THEN 'B'
					WHEN 'R' THEN 'RT'
				END)
	RETURN @Tipo + ' - ' + @FormularioNumero
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetDomicilioCompleto]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetDomicilioCompleto] 
(	
	@Calle varchar(50), 
	@Numero varchar(10),
	@Piso varchar(10),
	@Oficina varchar(10)
) RETURNS varchar(80) AS
BEGIN
	DECLARE @ReturnValue varchar(80)

	IF @Calle IS NOT NULL
		BEGIN
		SET @ReturnValue = @Calle
		IF @Numero IS NOT NULL
			BEGIN
			IF UPPER(SUBSTRING(@Calle, 1, 5)) = 'RUTA '
				BEGIN
				SET @ReturnValue = @ReturnValue + ' KM. ' + @Numero
				END
			ELSE
				BEGIN
				IF UPPER(SUBSTRING(@Calle, 1, 6)) = 'CALLE '
					BEGIN
					IF ISNUMERIC(SUBSTRING(@Calle, 7, 50)) = 1
						BEGIN
						SET @ReturnValue = @ReturnValue + ' Nº ' + @Numero
						END
					ELSE
						BEGIN
						SET @ReturnValue = @ReturnValue + ' ' + @Numero
						END
					END
				ELSE
					BEGIN
					SET @ReturnValue = @ReturnValue + ' ' + @Numero
					END
				END
			IF @Piso IS NOT NULL
				BEGIN
				if ISNUMERIC(@Piso) = 1
					BEGIN
					SET @ReturnValue = @ReturnValue + ' P.' + @Piso + '°'
					END
				ELSE
					BEGIN
					SET @ReturnValue = @ReturnValue + ' ' + @Piso
					END
				IF @Oficina IS NOT NULL
					BEGIN
					SET @ReturnValue = @ReturnValue + ' "' + @Oficina + '"'
					END
				END
			END
		END
	ELSE
		BEGIN
		SET @ReturnValue = ''
		END
	
	RETURN @ReturnValue
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetCodigoPostalLocalidad]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetCodigoPostalLocalidad] 
(	
	@CodigoPostal varchar(8),
	@Localidad varchar(50)
) RETURNS varchar(58) AS
BEGIN
	DECLARE @ReturnValue varchar(58)

	IF @Localidad IS NOT NULL
		BEGIN
		SET @ReturnValue = @Localidad
		IF @CodigoPostal IS NOT NULL
			BEGIN
			SET @ReturnValue = '(' + @CodigoPostal + ') ' + @ReturnValue
			END
		END
	ELSE
		BEGIN
		SET @ReturnValue = ''
		END
	
	RETURN @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario_Anulado_Update]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario_Anulado_Update]
	@IDFormulario_Anulado int,
	@FormularioCodigo tinyint,	
	@FormularioNumero varchar(13),
	@AnulacionMotivo tinyint,
	@Fecha smalldatetime
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE Formulario_Anulado
		SET FormularioCodigo = @FormularioCodigo, FormularioNumero = @FormularioNumero, AnulacionMotivo = @AnulacionMotivo, Fecha = @Fecha
		WHERE IDFormulario_Anulado = @IDFormulario_Anulado

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario_Anulado_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario_Anulado_List]
	@FormularioCodigo tinyint,
	@AnulacionMotivo tinyint,
	@Fecha smalldatetime
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario_Anulado, FormularioCodigo, FormularioNumero, AnulacionMotivo, Fecha
		FROM Formulario_Anulado
		WHERE (@FormularioCodigo IS NULL OR @FormularioCodigo = FormularioCodigo)
			AND (@AnulacionMotivo IS NULL OR @AnulacionMotivo = AnulacionMotivo)
			AND (@Fecha IS NULL OR @Fecha = Fecha)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario_Anulado_Get]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario_Anulado_Get]
	@IDFormulario_Anulado int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario_Anulado, FormularioCodigo, FormularioNumero, AnulacionMotivo, Fecha
		FROM Formulario_Anulado
		WHERE IDFormulario_Anulado = @IDFormulario_Anulado
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario_Anulado_Delete]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario_Anulado_Delete]
	@IDFormulario_Anulado int
AS
BEGIN
	SET NOCOUNT ON;
	
	DELETE
		FROM Formulario_Anulado
		WHERE IDFormulario_Anulado = @IDFormulario_Anulado

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario_Anulado_Add]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario_Anulado_Add]
	@IDFormulario_Anulado int OUTPUT,
	@FormularioCodigo tinyint,
	@FormularioNumero varchar(13),
	@AnulacionMotivo tinyint,
	@Fecha smalldatetime
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
	
		BEGIN TRANSACTION
		
			--OBTENGO EL NUEVO ID DEL FORMULARIO
			SET @IDFormulario_Anulado = (SELECT ISNULL(MAX(IDFormulario_Anulado), 0) + 1 FROM Formulario_Anulado)
			
			--AGREGO EL FORMULARIO A CON LOS TOTALES OBTENIDOS DE LOS MOVIMIENTOS	
			INSERT INTO Formulario_Anulado
				(IDFormulario_Anulado, FormularioCodigo, FormularioNumero, AnulacionMotivo, Fecha)
				VALUES (@IDFormulario_Anulado, @FormularioCodigo, @FormularioNumero, @AnulacionMotivo, @Fecha)

		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Transportista_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Transportista_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE EsTransportista = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE EsTransportista = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Titular_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Titular_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE EsTitular = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE EsTitular = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Intermediario_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Intermediario_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE (EsTitular = 1 OR EsIntermediario = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE (EsTitular = 1 OR EsIntermediario = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Entregador_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Entregador_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE EsEntregador = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE EsEntregador = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Destino_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Destino_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE EsDestino = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE EsDestino = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Destinatario_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Destinatario_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE (EsTitular = 1 OR EsDestinatario = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE (EsTitular = 1 OR EsDestinatario = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_RemitenteComercial_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_RemitenteComercial_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE (EsTitular = 1 OR EsRemitenteComercial = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE (EsTitular = 1 OR EsRemitenteComercial = 1)
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116_Talonario_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116_Talonario_List]
	@FormularioTipo char(1),	
	@IDFormulario1116_Talonario int,
	@MostrarTodos bit
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario1116_Talonario, CAC + ISNULL(' - ' + CONVERT(char(10), FechaVencimiento, 103), '') AS Nombre
		FROM Formulario1116_Talonario
		WHERE FormularioTipo = @FormularioTipo
			AND ((ISNULL(NumeroUltimo, '') < NumeroFin AND (GETDATE() - FechaVencimiento <= 0))
				OR IDFormulario1116_Talonario = @IDFormulario1116_Talonario
				OR @MostrarTodos = 1)
			
		ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Cosecha_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Cosecha_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDCosecha int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDCosecha, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDCosecha, Nombre, 2 AS Orden
			FROM Cosecha
			WHERE (@Activo IS NULL OR Activo = @Activo OR IDCosecha = @IDCosecha))
		ORDER BY Orden, Nombre DESC
		END
	ELSE
		BEGIN
		SELECT IDCosecha, Nombre
			FROM Cosecha
			WHERE (@Activo IS NULL OR Activo = @Activo OR IDCosecha = @IDCosecha)
			ORDER BY Nombre DESC
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Cosecha_Delete]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Cosecha_Delete]
	@IDCosecha tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--ELIMINO LA COSECHA
			DELETE
				FROM Cosecha
				WHERE IDCosecha = @IDCosecha
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CartaPorte_Talonario_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CartaPorte_Talonario_List]
	@IDCartaPorte_Talonario int,
	@MostrarTodos bit
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDCartaPorte_Talonario, CEENumero + ISNULL(' - ' + CONVERT(char(10), FechaVencimiento, 103), '') AS Nombre
		FROM CartaPorte_Talonario
		WHERE (GETDATE() - FechaVencimiento <= 0)
				OR IDCartaPorte_Talonario = @IDCartaPorte_Talonario
				OR @MostrarTodos = 1
			
		ORDER BY CEENumero DESC
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetRemitenteCerealNombre]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetRemitenteCerealNombre] 
(	
	@IDEntitad_Titular int, 
	@IDEntidad_Intermediario int,
	@IDEntidad_RemitenteComercial int
) RETURNS varchar(100) AS
BEGIN
	DECLARE @IDRemitenteCereal int
	DECLARE @ReturnValue varchar(100)

	SET @IDRemitenteCereal = dbo.udf_GetRemitenteCereal(@IDEntitad_Titular, @IDEntidad_Intermediario, @IDEntidad_RemitenteComercial)
	
	SET @ReturnValue = (SELECT Nombre FROM Entidad WHERE IDEntidad = @IDRemitenteCereal)
	
	RETURN @ReturnValue
END
GO
/****** Object:  Table [dbo].[Cosecha_Cereal_Tarifa]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cosecha_Cereal_Tarifa](
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[TarifaParitariaImporte] [money] NOT NULL,
	[TarifaSecadoTipo] [char](1) NOT NULL,
	[TarifaSecadoInicialPunto] [decimal](3, 1) NOT NULL,
	[TarifaSecadoInicialImporte] [money] NOT NULL,
	[TarifaSecadoPuntoExcesoImporte] [money] NOT NULL,
	[TarifaSecadoHumedadBase] [decimal](3, 1) NULL,
	[TarifaSecadoHumedadMargenLibre] [decimal](1, 1) NULL,
	[TarifaSecadoHumedadRedondeoPuntoTipo] [char](1) NOT NULL,
	[TarifaZarandeoImporte] [money] NOT NULL,
	[TarifaFumigadoImporte] [money] NOT NULL,
	[AlmacenajeTipo] [char](1) NOT NULL,
	[AlmacenajeDiaGracia] [smallint] NULL,
	[AlmacenajeInicio] [smalldatetime] NULL,
	[AlmacenajePorcentajeMensual] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK__Cosecha_Cereal_Tarifa] PRIMARY KEY NONCLUSTERED 
(
	[IDCosecha] ASC,
	[IDCereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaParitaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaParitaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'In (''F'',''E'',''P'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaZarandeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaZarandeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaFumigado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaFumigado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'In (''D'',''G'',''F'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeDiaGracia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeDiaGracia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajePorcentajeMensual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajePorcentajeMensual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'08/05/2012 16:39:01' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_Tarifa'
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Corredor_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Corredor_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT IDEntidad, Nombre, 2 AS Orden
			FROM Entidad
			WHERE EsCorredor = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT IDEntidad, Nombre
			FROM Entidad
			WHERE EsCorredor = 1
				AND (@Activo IS NULL OR Activo = @Activo OR IDEntidad = @IDEntidad)
			ORDER BY Nombre
		END
END
GO
/****** Object:  Table [dbo].[SubProducto_Grupo_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubProducto_Grupo_Detalle](
	[IDSubProducto_Grupo] [tinyint] NOT NULL,
	[IDSubProducto] [tinyint] NOT NULL,
	[Porcentaje] [decimal](4, 1) NOT NULL,
 CONSTRAINT [PK__SubProducto_Grupo_Detalle] PRIMARY KEY CLUSTERED 
(
	[IDSubProducto_Grupo] ASC,
	[IDSubProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Get]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Get]
	@IDSubProducto tinyint 
AS

BEGIN
	SET NOCOUNT ON;

	SELECT SubProducto.IDSubProducto, SubProducto.Nombre, SubProducto.UtilizaPrecioDolar, SubProducto.ONCCA_Codigo, SubProducto.Activo
		FROM SubProducto
		WHERE SubProducto.IDSubProducto = @IDSubProducto 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Delete]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Delete] 
	@IDSubProducto tinyint AS
	
BEGIN
	SET NOCOUNT ON;

	DELETE
		FROM SubProducto
		WHERE IDSubProducto = @IDSubProducto 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Add]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Add]
	@IDSubProducto tinyint OUTPUT, 
	@Nombre varchar(50), 
	@UtilizaPrecioDolar bit, 
	@ONCCA_Codigo smallint, 
	@Activo bit 
AS

BEGIN
	SET NOCOUNT ON;

	SET @IDSubProducto = (SELECT ISNULL(MAX(SubProducto.IDSubProducto), 0) + 1 FROM SubProducto)

	INSERT INTO SubProducto
		(IDSubProducto, Nombre, UtilizaPrecioDolar, ONCCA_Codigo, Activo )
		VALUES (@IDSubProducto, @Nombre, @UtilizaPrecioDolar, @ONCCA_Codigo, @Activo )

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Update]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Update]
	@IDSubProducto tinyint, 
	@Nombre varchar(50), 
	@UtilizaPrecioDolar bit, 
	@ONCCA_Codigo smallint, 
	@Activo bit 
AS

BEGIN
	SET NOCOUNT ON;

	UPDATE SubProducto
		SET Nombre = @Nombre, UtilizaPrecioDolar = @UtilizaPrecioDolar, ONCCA_Codigo = @ONCCA_Codigo, Activo = @Activo
		WHERE IDSubProducto = @IDSubProducto 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Grupo_List]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Grupo_List]
	@IDSubProducto_Grupo tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDSubProducto_Grupo, Nombre
		FROM SubProducto_Grupo
		WHERE Activo = 1
			OR IDSubProducto_Grupo = @IDSubProducto_Grupo

END
GO
/****** Object:  Table [dbo].[Formulario1116B_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario1116B_Cabecera](
	[IDFormulario1116B] [int] NOT NULL,
	[OperacionTipo] [char](1) NOT NULL,
	[FormularioNumero] [varchar](13) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[DepositarioIDEntidad] [int] NOT NULL,
	[DepositarioIDPlanta] [smallint] NOT NULL,
	[DepositanteIDEntidad] [int] NOT NULL,
	[DepositanteRazonSocial] [varchar](100) NOT NULL,
	[DepositanteDomicilioTipo] [tinyint] NOT NULL,
	[DepositanteDomicilioCalle] [varchar](50) NOT NULL,
	[DepositanteDomicilioNumero] [varchar](10) NULL,
	[DepositanteDomicilioPiso] [varchar](10) NULL,
	[DepositanteDomicilioOficina] [varchar](10) NULL,
	[DepositanteDomicilioCodigoPostal] [varchar](8) NULL,
	[DepositanteDomicilioIDLocalidad] [int] NULL,
	[DepositanteCUIT] [varchar](13) NULL,
	[DepositanteIIBB] [varchar](20) NULL,
	[DepositanteIDCategoriaIVA] [tinyint] NULL,
	[DepositanteGanancia_Inscripto] [bit] NOT NULL,
	[DepositanteReFOG_Situacion] [char](1) NOT NULL,
	[DepositanteCBU] [char](22) NULL,
	[Origen_FormularioTipo] [char](1) NOT NULL,
	[Origen_FormularioNumero] [varchar](13) NOT NULL,
	[Origen_FormularioFecha] [smalldatetime] NOT NULL,
	[Origen_IDFormulario1116A] [int] NULL,
	[Origen_IDFormulario1116RT] [int] NULL,
	[Origen_IDPartido] [smallint] NOT NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[ActuoCorredor] [bit] NOT NULL,
	[CondicionOperacionFecha] [smalldatetime] NOT NULL,
	[CondicionOperacionPrecioTonelada] [money] NOT NULL,
	[CondicionOperacionFlete] [money] NOT NULL,
	[OperacionCantidad] [int] NOT NULL,
	[OperacionPrecioKilogramo] [money] NOT NULL,
	[OperacionSubtotal] [money] NOT NULL,
	[OperacionAlicuotaIVA] [decimal](3, 1) NOT NULL,
	[OperacionImporteIVA] [money] NOT NULL,
	[OperacionImporteConIVA] [money] NOT NULL,
	[RetencionImporteOtra] [money] NOT NULL,
	[RetencionImporteAFIP] [money] NOT NULL,
	[TotalImporteNetoAPagar] [money] NOT NULL,
	[TotalIVARG] [money] NOT NULL,
	[TotalPagoSegunCondicion] [money] NOT NULL,
 CONSTRAINT [PK__Formulario1116B_Cabecera] PRIMARY KEY CLUSTERED 
(
	[IDFormulario1116B] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formulario1116RT_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario1116RT_Cabecera](
	[IDFormulario1116RT] [int] NOT NULL,
	[IDFormulario1116_Talonario] [int] NOT NULL,
	[FormularioNumero] [varchar](13) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[DepositarioIDEntidad] [int] NOT NULL,
	[DepositarioIDPlanta] [smallint] NOT NULL,
	[DepositanteIDEntidad] [int] NOT NULL,
	[DepositanteRazonSocial] [varchar](100) NOT NULL,
	[DepositanteDomicilioTipo] [tinyint] NOT NULL,
	[DepositanteDomicilioCalle] [varchar](50) NOT NULL,
	[DepositanteDomicilioNumero] [varchar](10) NULL,
	[DepositanteDomicilioPiso] [varchar](10) NULL,
	[DepositanteDomicilioOficina] [varchar](10) NULL,
	[DepositanteDomicilioCodigoPostal] [varchar](8) NULL,
	[DepositanteDomicilioIDLocalidad] [int] NULL,
	[DepositanteCUIT] [varchar](13) NULL,
	[DepositanteIIBB] [varchar](20) NULL,
	[DepositanteIDCategoriaIVA] [tinyint] NULL,
	[Origen_FormularioTipo] [char](1) NOT NULL,
	[Origen_FormularioNumero] [varchar](13) NOT NULL,
	[Origen_FormularioFecha] [smalldatetime] NOT NULL,
	[Origen_IDFormulario1116A] [int] NULL,
	[Origen_IDFormulario1116RT] [int] NULL,
	[Origen_IDPartido] [smallint] NOT NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[RetiroOTransferencia] [char](1) NOT NULL,
	[TotalKilogramo] [int] NOT NULL,
	[GeneraNuevoF1116A] [bit] NULL,
	[ReceptorIDEntidad] [int] NULL,
	[ReceptorRazonSocial] [varchar](100) NULL,
	[ReceptorDomicilioTipo] [tinyint] NULL,
	[ReceptorDomicilioCalle] [varchar](50) NULL,
	[ReceptorDomicilioNumero] [varchar](10) NULL,
	[ReceptorDomicilioPiso] [varchar](10) NULL,
	[ReceptorDomicilioOficina] [varchar](10) NULL,
	[ReceptorDomicilioCodigoPostal] [varchar](8) NULL,
	[ReceptorDomicilioIDLocalidad] [int] NULL,
	[ReceptorCUIT] [varchar](11) NULL,
	[ReceptorIIBB] [varchar](20) NULL,
	[ReceptorIDCategoriaIVA] [tinyint] NULL,
	[ReceptorActividad] [varchar](50) NULL,
	[ReceptorOperadorNumero] [int] NULL,
	[KilogramoAplicado] [int] NULL,
 CONSTRAINT [PK__Formulario1116RT_Cabecera] PRIMARY KEY CLUSTERED 
(
	[IDFormulario1116RT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entidad_Cosecha_Cereal_Tarifa]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa](
	[IDEntidad] [int] NOT NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[TarifaParitariaImporte] [money] NOT NULL,
	[TarifaSecadoTipo] [char](1) NOT NULL,
	[TarifaSecadoInicialPunto] [decimal](3, 1) NOT NULL,
	[TarifaSecadoInicialImporte] [money] NOT NULL,
	[TarifaSecadoPuntoExcesoImporte] [money] NOT NULL,
	[TarifaSecadoHumedadBase] [decimal](3, 1) NULL,
	[TarifaSecadoHumedadMargenLibre] [decimal](1, 1) NULL,
	[TarifaSecadoHumedadRedondeoPuntoTipo] [char](1) NOT NULL,
	[TarifaZarandeoImporte] [money] NOT NULL,
	[TarifaFumigadoImporte] [money] NOT NULL,
	[AlmacenajeTipo] [char](1) NOT NULL,
	[AlmacenajeDiaGracia] [smallint] NULL,
	[AlmacenajeInicio] [smalldatetime] NULL,
	[AlmacenajePorcentajeMensual] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK__Entidad_Cosecha_Cereal_Tarifa] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC,
	[IDCosecha] ASC,
	[IDCereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaParitaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaParitaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaParitariaImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'In (''F'',''E'',''P'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoInicialImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExcesoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaZarandeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaZarandeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaZarandeoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaFumigado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaFumigado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'TarifaFumigadoImporte'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'In (''D'',''G'',''F'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeDiaGracia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeDiaGracia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeDiaGracia'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajeInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajeInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajeInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AlmacenajePorcentajeMensual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AlmacenajePorcentajeMensual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa', @level2type=N'COLUMN',@level2name=N'AlmacenajePorcentajeMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'08/05/2012 16:41:43' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad_Cosecha_Cereal_Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_Tarifa'
GO
/****** Object:  Table [dbo].[Entidad_Chofer]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad_Chofer](
	[IDEntidad] [int] NOT NULL,
	[IDEntidad_Transportista] [int] NULL,
	[PatenteChasis] [char](6) NULL,
	[PatenteAcoplado] [char](6) NULL,
 CONSTRAINT [PK__Entidad_Chofer] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⤛匬酶䇔늞ꖏ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Chofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'홡︦儍䲰㾡천訠敹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad_Transportista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad_Transportista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Chofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'IDEntidad_Transportista'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4200' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䇏劧㩚䬅娮捡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PatenteChasis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PatenteChasis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Chofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteChasis'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᚠ谔䣳侔ᲈ륓࣏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PatenteAcoplado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PatenteAcoplado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Chofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer', @level2type=N'COLUMN',@level2name=N'PatenteAcoplado'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'22/04/2011 22:20:48' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'29/04/2013 12:44:43' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad_Chofer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'101' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Chofer'
GO
/****** Object:  Table [dbo].[LibroMovimiento_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibroMovimiento_Cabecera](
	[Rubrica] [int] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[Folios] [smallint] NULL,
 CONSTRAINT [PK__LibroMovimiento_Cabecera] PRIMARY KEY NONCLUSTERED 
(
	[Rubrica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX__LibroMovimiento__Producto] ON [dbo].[LibroMovimiento_Cabecera] 
(
	[IDCereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Rubrica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Rubrica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Cabecera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Cabecera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Folios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Folios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Cabecera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'COLUMN',@level2name=N'Folios'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/03/2012 00:33:03' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'23/05/2012 19:36:10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LibroMovimiento_Cabecera' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera'
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidad](
	[IDLocalidad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IDPartido] [smallint] NULL,
	[IDProvincia] [char](1) NOT NULL,
 CONSTRAINT [aaaaaLocalidad_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDLocalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX__Localidad__Partido] ON [dbo].[Localidad] 
(
	[IDPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX__Localidad__Provincia] ON [dbo].[Localidad] 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PartidoLocalidad] ON [dbo].[Localidad] 
(
	[IDPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProvinciaLocalidad] ON [dbo].[Localidad] 
(
	[IDProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'葅ꂠ䯊₥먫놆캵' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Localidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쾚˗鿴䣁㮹鱕ᚷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Localidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ﻅጃꂑ䟌斠㔟恊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDPartido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDPartido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Localidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDPartido'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'衒♧楥䵂涏㬭꒢䑬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDProvincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Localidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'COLUMN',@level2name=N'IDProvincia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/04/2011 00:47:12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Localidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'21682' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad'
GO
/****** Object:  Table [dbo].[Formulario1116A_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario1116A_Cabecera](
	[IDFormulario1116A] [int] NOT NULL,
	[IDFormulario1116_Talonario] [int] NOT NULL,
	[FormularioNumero] [varchar](13) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[DepositarioIDEntidad] [int] NOT NULL,
	[DepositarioIDPlanta] [smallint] NOT NULL,
	[DepositanteIDEntidad] [int] NOT NULL,
	[DepositanteRazonSocial] [varchar](100) NOT NULL,
	[DepositanteDomicilioTipo] [tinyint] NOT NULL,
	[DepositanteDomicilioCalle] [varchar](50) NOT NULL,
	[DepositanteDomicilioNumero] [varchar](10) NULL,
	[DepositanteDomicilioPiso] [varchar](10) NULL,
	[DepositanteDomicilioOficina] [varchar](10) NULL,
	[DepositanteDomicilioCodigoPostal] [varchar](8) NULL,
	[DepositanteDomicilioIDLocalidad] [int] NOT NULL,
	[DepositanteCUIT] [varchar](13) NOT NULL,
	[DepositanteIIBB] [varchar](20) NULL,
	[DepositanteIDCategoriaIVA] [tinyint] NOT NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[TarifaGastoGeneral] [money] NULL,
	[TarifaZarandeo] [money] NULL,
	[TarifaSecadoDesde] [decimal](3, 1) NULL,
	[TarifaSecadoHasta] [decimal](3, 1) NULL,
	[TarifaSecado] [money] NULL,
	[TarifaSecadoPuntoExceso] [money] NULL,
	[TarifaOtro] [money] NULL,
	[Origen_IDPartido] [smallint] NOT NULL,
	[LugarEntregaDescripcion] [varchar](100) NOT NULL,
	[LugarEntregaIDProvincia] [char](1) NOT NULL,
	[LugarYFecha] [varchar](100) NOT NULL,
	[PesoBruto] [int] NOT NULL,
	[MermaVolatilPorcentaje] [decimal](3, 2) NOT NULL,
	[MermaVolatilKilogramo] [int] NOT NULL,
	[MermaSecadoPorcentaje] [decimal](4, 2) NOT NULL,
	[MermaSecadoKilogramo] [int] NOT NULL,
	[MermaZarandeoPorcentaje] [decimal](4, 2) NOT NULL,
	[MermaZarandeoKilogramo] [int] NOT NULL,
	[MermaTotal] [int] NOT NULL,
	[PesoNeto] [int] NOT NULL,
	[GastoGeneral] [money] NULL,
	[GastoSecado] [money] NULL,
	[GastoZarandeo] [money] NULL,
	[GastoOtro] [money] NULL,
	[GastoIVARI] [money] NULL,
	[GastoIVARNI] [money] NULL,
	[GastoTotal] [money] NULL,
	[GastoIDCondicionPago] [smallint] NULL,
	[KilogramoAplicado] [int] NOT NULL,
 CONSTRAINT [PK__Formulario1116A_Cabecera] PRIMARY KEY CLUSTERED 
(
	[IDFormulario1116A] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Formulario1116A_Cabecera__FormularioNumero] ON [dbo].[Formulario1116A_Cabecera] 
(
	[FormularioNumero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleteTarifa]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleteTarifa](
	[IDFleteTabla] [smallint] NOT NULL,
	[Kilometro] [smallint] NOT NULL,
	[TarifaReferencia] [money] NULL,
	[Tarifa] [money] NOT NULL,
 CONSTRAINT [PK__FleteTarifa] PRIMARY KEY NONCLUSTERED 
(
	[IDFleteTabla] ASC,
	[Kilometro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDFleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDFleteTabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'IDFleteTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Kilometro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Kilometro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'$ #,##0.00;$ -#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaReferencia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaReferencia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'TarifaReferencia'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'$ #,##0.00;$ -#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FleteTarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'COLUMN',@level2name=N'Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/05/2011 10:06:14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'09/08/2013 13:29:45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FleteTarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'2000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa'
GO
/****** Object:  Table [dbo].[Cereal_Humedad]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cereal_Humedad](
	[IDCereal] [tinyint] NOT NULL,
	[Humedad] [decimal](3, 1) NOT NULL,
	[Merma] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK__Cereal_Humedad] PRIMARY KEY NONCLUSTERED 
(
	[IDCereal] ASC,
	[Humedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CerealHumedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Humedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Humedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CerealHumedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Merma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Merma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CerealHumedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'COLUMN',@level2name=N'Merma'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'25/04/2011 10:23:36' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CerealHumedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'840' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad'
GO
/****** Object:  Table [dbo].[Entidad_OrigenDestino]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad_OrigenDestino](
	[IDEntidad] [int] NOT NULL,
	[IDOrigenDestino] [smallint] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[IDLocalidad] [int] NOT NULL,
	[Kilometro] [smallint] NULL,
	[ONCCA_Codigo] [int] NULL,
	[ControlaStock] [bit] NOT NULL,
 CONSTRAINT [aaaaaEntidad_OrigenDestino_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC,
	[IDOrigenDestino] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Entidad_OrigenDestino__Nombre] ON [dbo].[Entidad_OrigenDestino] 
(
	[IDEntidad] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EntidadEntidad_Destino] ON [dbo].[Entidad_OrigenDestino] 
(
	[IDEntidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX__Entidad_OrigenDestino__Localidad] ON [dbo].[Entidad_OrigenDestino] 
(
	[IDLocalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᕫ佤䀚Ὢ᭐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ฝ쬭肢䗑�哮㔁哻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDOrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDOrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDOrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1830' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'踔諯ᣧ䜒損ꂮ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4200' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'﷚豘䐳鞭ￃ궂왂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Direccion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Direccion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1485' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�ṻ䁡㊏杋竨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⤃ꉒ讧䥿掶糖�㉚' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Kilometro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Kilometro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'Kilometro'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1740' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'鈬％㏘䍨�䢙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ONCCA_Codigo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'COLUMN',@level2name=N'ONCCA_Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/04/2011 00:34:57' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad_OrigenDestino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'156' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino'
GO
/****** Object:  Table [dbo].[Entidad_Impuesto]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad_Impuesto](
	[IDEntidad] [int] NOT NULL,
	[IDCategoriaIVA] [tinyint] NULL,
	[IIBB] [varchar](20) NULL,
	[GananciaInscripto] [bit] NULL,
	[ReFOG_Situacion] [char](1) NULL,
	[CBU] [char](22) NULL,
	[ONCCA_Operador] [int] NULL,
 CONSTRAINT [PK__Entidad_Impuesto] PRIMARY KEY CLUSTERED 
(
	[IDEntidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entidad_Domicilio]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad_Domicilio](
	[IDEntidad] [int] NOT NULL,
	[Tipo] [tinyint] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numero] [varchar](10) NULL,
	[Piso] [varchar](10) NULL,
	[Oficina] [varchar](10) NULL,
	[CodigoPostal] [varchar](8) NULL,
	[IDLocalidad] [int] NULL,
 CONSTRAINT [PK__Entidad_Domicilio] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'苭沑铑䲺삽庐秿❼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䆉�䮠랻햵㾠' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Tipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Tipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'1 Or 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'糙峀䋭Ẑ洒嫿꺁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Calle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Calle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Calle'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'蠼㮡䶉릃⃕뽷ꁬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Numero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Numero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Numero'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㻻濲ꌢ䠰즈縵⭼岈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Piso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Piso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Piso'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㌪溢䁪蒣房ꋬ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Oficina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Oficina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'Oficina'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'散覎燎䳤㢍叛몷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CodigoPostal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CodigoPostal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'CodigoPostal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䲕死�俓ﺾ⠎螼☀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDLocalidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'COLUMN',@level2name=N'IDLocalidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'16/08/2011 18:28:26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'04/09/2012 12:13:46' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad_Domicilio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio'
GO
/****** Object:  Table [dbo].[Entidad_Cosecha_Cereal_TarifaEscala]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entidad_Cosecha_Cereal_TarifaEscala](
	[IDEntidad] [int] NOT NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[HumedadExcesoInicio] [decimal](3, 1) NOT NULL,
	[TarifaSecadoPuntoExceso] [money] NOT NULL,
 CONSTRAINT [aaaaaEntidad_Cosecha_Cereal_TarifaEscala_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDEntidad] ASC,
	[IDCosecha] ASC,
	[IDCereal] ASC,
	[HumedadExcesoInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Entidad_Cosecha_Cereal_TarifaEntidad_Cosecha_Cereal_TarifaEsc] ON [dbo].[Entidad_Cosecha_Cereal_TarifaEscala] 
(
	[IDEntidad] ASC,
	[IDCosecha] ASC,
	[IDCereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDEntidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HumedadExcesoInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HumedadExcesoInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'08/05/2012 16:43:58' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Entidad_Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Cosecha_Cereal_TarifaEscala'
GO
/****** Object:  Table [dbo].[Cosecha_Cereal_TarifaEscala]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cosecha_Cereal_TarifaEscala](
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[HumedadExcesoInicio] [decimal](3, 1) NOT NULL,
	[TarifaSecadoPuntoExceso] [money] NOT NULL,
 CONSTRAINT [PK__Cosecha_Cereal_TarifaEscala] PRIMARY KEY NONCLUSTERED 
(
	[IDCosecha] ASC,
	[IDCereal] ASC,
	[HumedadExcesoInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCosecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCosecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDCereal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'IDCereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HumedadExcesoInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HumedadExcesoInicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'HumedadExcesoInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarifaSecadoPuntoExceso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'COLUMN',@level2name=N'TarifaSecadoPuntoExceso'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'08/05/2012 16:40:43' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cosecha_Cereal_TarifaEscala' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala'
GO
/****** Object:  Table [dbo].[LibroMovimiento_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LibroMovimiento_Detalle](
	[Rubrica] [int] NOT NULL,
	[Folio] [smallint] NOT NULL,
	[Linea] [smallint] NOT NULL,
	[MovimientoTipo] [char](10) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[ComprobanteTipo] [tinyint] NULL,
	[ComprobanteNumero] [varchar](13) NULL,
	[CUIT] [char](13) NULL,
	[RemitenteDestinatario] [varchar](100) NULL,
	[IngresoKilogramoBruto] [int] NULL,
	[IngresoKilogramoNeto] [int] NULL,
	[EgresoKilogramoNeto] [int] NULL,
	[SaldoKilogramoNeto] [int] NOT NULL,
	[Observacion] [varchar](100) NULL,
 CONSTRAINT [PK__LibroMovimiento_Detalle] PRIMARY KEY NONCLUSTERED 
(
	[Rubrica] ASC,
	[Folio] ASC,
	[Linea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Rubrica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Rubrica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Rubrica'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Folio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Folio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Linea' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Linea' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Linea'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MovimientoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MovimientoTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ValidationRule', @value=N'In (''L'',''F'',''I'',''E'',''D'',''M'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'MovimientoTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Fecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Fecha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ComprobanteTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ComprobanteTipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ComprobanteNumero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ComprobanteNumero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'ComprobanteNumero'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CUIT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CUIT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'CUIT'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'RemitenteDestinatario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'RemitenteDestinatario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'RemitenteDestinatario'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IngresoKilogramoBruto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IngresoKilogramoBruto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoBruto'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IngresoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IngresoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'IngresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EgresoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EgresoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'EgresoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SaldoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SaldoKilogramoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'SaldoKilogramoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Observacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Observacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle', @level2type=N'COLUMN',@level2name=N'Observacion'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/03/2012 00:39:09' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'30/03/2012 00:40:10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LibroMovimiento_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3087' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Detalle'
GO
/****** Object:  Table [dbo].[Formulario1116RT_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formulario1116RT_Detalle](
	[IDFormulario1116RT] [int] NOT NULL,
	[IDRemesa] [tinyint] NOT NULL,
	[IDMovimiento_Cereal] [int] NOT NULL,
	[KilogramoAplicado] [int] NOT NULL,
 CONSTRAINT [PK__Formulario1116RT_Detalle] PRIMARY KEY NONCLUSTERED 
(
	[IDFormulario1116RT] ASC,
	[IDRemesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX__Formulario1116RT_Detalle__Movimiento] ON [dbo].[Formulario1116RT_Detalle] 
(
	[IDMovimiento_Cereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'焕絸䙃캚ꉌハഓ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDFormulario1116RT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDFormulario1116RT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116RT_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116RT'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'闣抲ڭ䚁沥䇏ﲱʕ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDRemesa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDRemesa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116RT_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'色糖鮄亹▴䱉圡㰝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116RT_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䄊䱡뎈Ხ洠午' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KilogramoAplicado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KilogramoAplicado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116RT_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle', @level2type=N'COLUMN',@level2name=N'KilogramoAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'15/08/2011 17:20:57' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Formulario1116RT_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'571' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116RT_Detalle'
GO
/****** Object:  Table [dbo].[Formulario1116B_Retencion]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formulario1116B_Retencion](
	[IDFormulario1116B] [int] NOT NULL,
	[IDRetencion] [smallint] NOT NULL,
	[BaseCalculo] [money] NOT NULL,
	[Alicuota] [decimal](4, 2) NOT NULL,
	[Importe] [money] NOT NULL,
 CONSTRAINT [PK__Formulario1116B_Retencion] PRIMARY KEY CLUSTERED 
(
	[IDFormulario1116B] ASC,
	[IDRetencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116A_GetByFormularioNumero]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116A_GetByFormularioNumero]
	@FormularioNumero char(13)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario1116A, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, IDCosecha, IDCereal, TarifaGastoGeneral, TarifaZarandeo, TarifaSecadoDesde, TarifaSecadoHasta, TarifaSecado, TarifaSecadoPuntoExceso, TarifaOtro, Origen_IDPartido, LugarEntregaDescripcion, LugarEntregaIDProvincia, LugarYFecha, PesoBruto, MermaVolatilPorcentaje, MermaVolatilKilogramo, MermaSecadoPorcentaje, MermaSecadoKilogramo, MermaZarandeoPorcentaje, MermaZarandeoKilogramo, MermaTotal, PesoNeto, GastoGeneral, GastoSecado, GastoZarandeo, GastoOtro, GastoIVARI, GastoIVARNI, GastoTotal, GastoIDCondicionPago, KilogramoAplicado
		FROM Formulario1116A_Cabecera
		WHERE FormularioNumero = @FormularioNumero
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116A_Get]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116A_Get]
	@IDFormulario1116A int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT IDFormulario1116A, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, IDCosecha, IDCereal, TarifaGastoGeneral, TarifaZarandeo, TarifaSecadoDesde, TarifaSecadoHasta, TarifaSecado, TarifaSecadoPuntoExceso, TarifaOtro, Origen_IDPartido, LugarEntregaDescripcion, LugarEntregaIDProvincia, LugarYFecha, PesoBruto, MermaVolatilPorcentaje, MermaVolatilKilogramo, MermaSecadoPorcentaje, MermaSecadoKilogramo, MermaZarandeoPorcentaje, MermaZarandeoKilogramo, MermaTotal, PesoNeto, GastoGeneral, GastoSecado, GastoZarandeo, GastoOtro, GastoIVARI, GastoIVARNI, GastoTotal, GastoIDCondicionPago, KilogramoAplicado
		FROM Formulario1116A_Cabecera
		WHERE IDFormulario1116A = @IDFormulario1116A
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116B_GetByFormularioNumero]    Script Date: 11/06/2013 20:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116B_GetByFormularioNumero]
	@FormularioNumero char(13)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario1116B, OperacionTipo, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, DepositanteGanancia_Inscripto, DepositanteReFOG_Situacion, DepositanteCBU, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, Origen_IDPartido, IDCosecha, IDCereal, ActuoCorredor, CondicionOperacionFecha, CondicionOperacionPrecioTonelada, CondicionOperacionFlete, OperacionCantidad, OperacionPrecioKilogramo, OperacionSubtotal, OperacionAlicuotaIVA, OperacionImporteIVA, OperacionImporteConIVA, RetencionImporteAFIP, RetencionImporteOtra, TotalImporteNetoAPagar, TotalIVARG, TotalPagoSegunCondicion
		FROM Formulario1116B_Cabecera
		WHERE FormularioNumero = @FormularioNumero
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116B_Get]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116B_Get]
	@IDFormulario1116B int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT IDFormulario1116B, OperacionTipo, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, DepositanteGanancia_Inscripto, DepositanteReFOG_Situacion, DepositanteCBU, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, Origen_IDPartido, IDCosecha, IDCereal, ActuoCorredor, CondicionOperacionFecha, CondicionOperacionPrecioTonelada, CondicionOperacionFlete, OperacionCantidad, OperacionPrecioKilogramo, OperacionSubtotal, OperacionAlicuotaIVA, OperacionImporteIVA, OperacionImporteConIVA, RetencionImporteAFIP, RetencionImporteOtra, TotalImporteNetoAPagar, TotalIVARG, TotalPagoSegunCondicion
		FROM Formulario1116B_Cabecera
		WHERE IDFormulario1116B = @IDFormulario1116B
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116RT_GetByFormularioNumero]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116RT_GetByFormularioNumero]
	@FormularioNumero char(13)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDFormulario1116RT, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, IDCosecha, IDCereal, Origen_IDPartido, RetiroOTransferencia, TotalKilogramo, GeneraNuevoF1116A, ReceptorIDEntidad, ReceptorRazonSocial, ReceptorDomicilioTipo, ReceptorDomicilioCalle, ReceptorDomicilioNumero, ReceptorDomicilioPiso, ReceptorDomicilioOficina, ReceptorDomicilioCodigoPostal, ReceptorDomicilioIDLocalidad, ReceptorCUIT, ReceptorIDCategoriaIVA, ReceptorIIBB, ReceptorActividad, ReceptorOperadorNumero, KilogramoAplicado
		FROM Formulario1116RT_Cabecera
		WHERE FormularioNumero = @FormularioNumero
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116RT_Get]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116RT_Get]
	@IDFormulario1116RT int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT IDFormulario1116RT, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, IDCosecha, IDCereal, Origen_IDPartido, RetiroOTransferencia, TotalKilogramo, GeneraNuevoF1116A, ReceptorIDEntidad, ReceptorRazonSocial, ReceptorDomicilioTipo, ReceptorDomicilioCalle, ReceptorDomicilioNumero, ReceptorDomicilioPiso, ReceptorDomicilioOficina, ReceptorDomicilioCodigoPostal, ReceptorDomicilioIDLocalidad, ReceptorCUIT, ReceptorIDCategoriaIVA, ReceptorIIBB, ReceptorActividad, ReceptorOperadorNumero, KilogramoAplicado
		FROM Formulario1116RT_Cabecera
		WHERE IDFormulario1116RT = @IDFormulario1116RT
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SubProducto_Grupo_Detalle_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SubProducto_Grupo_Detalle_List]
	@IDSubProducto_Grupo tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT SubProducto_Grupo_Detalle.IDSubProducto, SubProducto.Nombre AS SubProductoNombre, SubProducto_Grupo_Detalle.Porcentaje, NULL AS Kilogramo
		FROM SubProducto_Grupo_Detalle INNER JOIN SubProducto ON SubProducto_Grupo_Detalle.IDSubProducto = SubProducto.IDSubProducto
		WHERE IDSubProducto_Grupo = @IDSubProducto_Grupo

END
GO
/****** Object:  Table [dbo].[Movimiento_Cereal]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimiento_Cereal](
	[IDMovimiento_Cereal] [int] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[ComprobanteNumero] [char](12) NOT NULL,
	[IDCartaPorte_Talonario] [int] NULL,
	[CTGNumero] [int] NULL,
	[FechaCarga] [smalldatetime] NOT NULL,
	[IDEntidad_Titular] [int] NOT NULL,
	[IDEntidad_Intermediario] [int] NULL,
	[IDEntidad_RemitenteComercial] [int] NULL,
	[IDEntidad_Corredor] [int] NULL,
	[IDEntidad_Entregador] [int] NULL,
	[IDEntidad_Destinatario] [int] NULL,
	[IDEntidad_Destino] [int] NULL,
	[IDEntidad_Transportista] [int] NULL,
	[IDEntidad_Chofer] [int] NULL,
	[IDCosecha] [tinyint] NOT NULL,
	[IDCereal] [tinyint] NOT NULL,
	[ContratoNumero] [varchar](20) NULL,
	[PesoBruto] [int] NOT NULL,
	[PesoTara] [int] NOT NULL,
	[PesoNeto] [int] NOT NULL,
	[Volatil] [decimal](2, 2) NULL,
	[Humedad] [decimal](3, 1) NULL,
	[Zaranda] [decimal](3, 1) NULL,
	[Fumigado] [bit] NULL,
	[MermaVolatilKilogramo] [int] NULL,
	[MermaHumedadPorcentaje] [decimal](4, 2) NULL,
	[MermaHumedadKilogramo] [int] NULL,
	[MermaZarandaKilogramo] [int] NULL,
	[PesoFinal] [int] NULL,
	[IDOrigenDestino_Origen] [smallint] NULL,
	[IDOrigenDestino_Destino] [smallint] NULL,
	[CTGCancelacion] [int] NULL,
	[TransporteDominioCamion] [char](6) NULL,
	[TransporteDominioAcoplado] [char](6) NULL,
	[TransporteKilometro] [smallint] NULL,
	[TransporteTarifaReferencia] [money] NULL,
	[TransporteTarifa] [money] NULL,
	[FechaHoraArribo] [smalldatetime] NULL,
	[FechaHoraDescarga] [smalldatetime] NULL,
	[IDCartaPorte_MotivoAnulacion] [tinyint] NULL,
	[Notas] [varchar](1000) NULL,
	[EsIntacta] [bit] NOT NULL,
	[FechaHoraCreacion] [smalldatetime] NOT NULL,
	[FechaHoraModificacion] [smalldatetime] NOT NULL,
	[FechaHoraLiquidacionServicio] [smalldatetime] NULL,
	[Certificado] [bit] NULL,
	[KilogramoAplicado] [int] NULL,
 CONSTRAINT [PK__Movimiento] PRIMARY KEY CLUSTERED 
(
	[IDMovimiento_Cereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK__Movimiento__CosechaTipoComprobanteNumero] ON [dbo].[Movimiento_Cereal] 
(
	[IDCosecha] ASC,
	[Tipo] ASC,
	[ComprobanteNumero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_ControlaStock_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_ControlaStock_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT DISTINCT Entidad.IDEntidad, Entidad.Nombre, 2 AS Orden
			FROM Entidad LEFT JOIN Entidad_OrigenDestino ON Entidad.IDEntidad = Entidad_OrigenDestino.IDEntidad
			WHERE (@Activo IS NULL OR Entidad.Activo = @Activo OR Entidad.IDEntidad = @IDEntidad)
				AND Entidad_OrigenDestino.ControlaStock = 1)
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT DISTINCT Entidad.IDEntidad, Entidad.Nombre
			FROM Entidad LEFT JOIN Entidad_OrigenDestino ON Entidad.IDEntidad = Entidad_OrigenDestino.IDEntidad
			WHERE (@Activo IS NULL OR Entidad.Activo = @Activo OR Entidad.IDEntidad = @IDEntidad)
				AND Entidad_OrigenDestino.ControlaStock = 1
			ORDER BY Entidad.Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Chofer_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Chofer_List]
	@ListaNinguno bit,
	@Activo bit,
	@IDTransportista int,
	@IDEntidad int AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT 0 AS IDEntidad, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT Entidad.IDEntidad, Entidad.Nombre, 2 AS Orden
			FROM Entidad LEFT JOIN Entidad_Chofer ON Entidad.IDEntidad = Entidad_Chofer.IDEntidad
			WHERE Entidad.EsChofer = 1
				AND (@IDTransportista IS NULL OR Entidad_Chofer.IDEntidad_Transportista = @IDTransportista OR Entidad.IDEntidad = @IDEntidad)
				AND (@Activo IS NULL OR Entidad.Activo = @Activo OR Entidad.IDEntidad = @IDEntidad))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT Entidad.IDEntidad, Entidad.Nombre
			FROM Entidad LEFT JOIN Entidad_Chofer ON Entidad.IDEntidad = Entidad_Chofer.IDEntidad
			WHERE Entidad.EsChofer = 1
				AND (@IDTransportista IS NULL OR Entidad_Chofer.IDEntidad_Transportista = @IDTransportista OR Entidad.IDEntidad = @IDEntidad)
				AND (@Activo IS NULL OR Entidad.Activo = @Activo OR Entidad.IDEntidad = @IDEntidad)
			ORDER BY Entidad.Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116_PendienteAsignar_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116_PendienteAsignar_List]
	@IDEntidad_Destino int,
	@IDPlanta smallint,
	@IDEntidad_Depositante int,
	@IDCosecha smallint,
	@IDCereal tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
	(SELECT IDFormulario1116A AS IDFormulario1116, Origen_IDPartido, 'A'  AS FormularioTipo, FormularioNumero, Fecha, PesoNeto AS KilogramoTotal, (PesoNeto - KilogramoAplicado) AS KilogramoPendiente
		FROM Formulario1116A_Cabecera
		WHERE DepositarioIDEntidad = @IDEntidad_Destino AND DepositarioIDPlanta = @IDPlanta AND DepositanteIDEntidad = @IDEntidad_Depositante AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal AND KilogramoAplicado < PesoNeto)
	UNION
	(SELECT IDFormulario1116RT AS IDFormulario1116, Origen_IDPartido, 'RT' AS FormularioTipo, FormularioNumero, Fecha, TotalKilogramo AS KilogramoTotal, (TotalKilogramo - KilogramoAplicado) AS KilogramoPendiente
		FROM Formulario1116RT_Cabecera
		WHERE DepositarioIDEntidad = @IDEntidad_Destino AND DepositarioIDPlanta = @IDPlanta AND ReceptorIDEntidad = @IDEntidad_Depositante AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal AND RetiroOTransferencia = 'T' AND KilogramoAplicado < TotalKilogramo)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_OrigenDestino_ControlStock_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_OrigenDestino_ControlStock_List]
	@ListaNinguno bit,
	@MostrarNombreEmpresa bit,
	@Activo bit,
	@IDEntidad int,
	@IDOrigenDestino int
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @ListaNinguno = 1
		BEGIN
		(SELECT '0' AS ID, '--------------------' AS Nombre, 1 AS Orden)
		UNION
		(SELECT (CASE ISNULL(@IDEntidad, 0) WHEN 0 THEN CONVERT(varchar(7), Entidad.IDEntidad) + RIGHT('00000' + CONVERT(varchar(5), Entidad_OrigenDestino.IDOrigenDestino), 5) ELSE CONVERT(varchar(5), Entidad_OrigenDestino.IDOrigenDestino) END) AS ID, (CASE ISNULL(@MostrarNombreEmpresa, 1) WHEN 1 THEN Entidad.Nombre + ' - ' + Entidad_OrigenDestino.Nombre + ISNULL(' - (' + CONVERT(varchar(7), ONCCA_Codigo, 1) + ')', '') ELSE Entidad_OrigenDestino.Nombre + ISNULL(' - (' + CONVERT(varchar(7), ONCCA_Codigo, 1) + ')', '') END) AS Nombre, 2 AS Orden
			FROM Entidad LEFT JOIN Entidad_OrigenDestino ON Entidad.IDEntidad = Entidad_OrigenDestino.IDEntidad
			WHERE (((@Activo IS NULL OR Entidad.Activo = @Activo) AND Entidad_OrigenDestino.ControlaStock = 1)
				AND (@IDEntidad IS NULL OR Entidad.IDEntidad = @IDEntidad))
				OR (Entidad.IDEntidad = @IDEntidad AND Entidad_OrigenDestino.IDOrigenDestino = @IDOrigenDestino))
		ORDER BY Orden, Nombre
		END
	ELSE
		BEGIN
		SELECT (CASE ISNULL(@IDEntidad, 0) WHEN 0 THEN CONVERT(varchar(7), Entidad.IDEntidad) + RIGHT('00000' + CONVERT(varchar(5), Entidad_OrigenDestino.IDOrigenDestino), 5) ELSE CONVERT(varchar(5), Entidad_OrigenDestino.IDOrigenDestino) END) AS ID, (CASE ISNULL(@MostrarNombreEmpresa, 1) WHEN 1 THEN Entidad.Nombre + ' - ' + Entidad_OrigenDestino.Nombre + ISNULL(' - (' + CONVERT(varchar(7), ONCCA_Codigo, 1) + ')', '') ELSE Entidad_OrigenDestino.Nombre + ISNULL(' - (' + CONVERT(varchar(7), ONCCA_Codigo, 1) + ')', '') END) AS Nombre
			FROM Entidad LEFT JOIN Entidad_OrigenDestino ON Entidad.IDEntidad = Entidad_OrigenDestino.IDEntidad
			WHERE (((@Activo IS NULL OR Entidad.Activo = @Activo) AND Entidad_OrigenDestino.ControlaStock = 1)
				AND (@IDEntidad IS NULL OR Entidad.IDEntidad = @IDEntidad))
				OR (Entidad.IDEntidad = @IDEntidad AND Entidad_OrigenDestino.IDOrigenDestino = @IDOrigenDestino)
			ORDER BY Entidad.Nombre
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_Delete]
	@IDEntidad int
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--ELIMINO EL DOMICILIO
			DELETE
				FROM Entidad_Domicilio
				WHERE IDEntidad = @IDEntidad
			
			--ELIMINO LOS DATOS IMPOSITIVOS
			DELETE
				FROM Entidad_Impuesto
				WHERE IDEntidad = @IDEntidad
			
			--ELIMINO LOS DATOS DE CHOFER
			DELETE
				FROM Entidad_Chofer 
				WHERE IDEntidad = @IDEntidad
			
			--ELIMINO LA ENTIDAD
			DELETE
				FROM Entidad
				WHERE IDEntidad = @IDEntidad
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Entidad_SaldoCereal]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Entidad_SaldoCereal]
	@IDEntidad_Depositario int,
	@IDPlanta smallint,
	@IDEntidad_Depositante int,
	@IDCosecha tinyint,
	@IDCereal tinyint,
	@FechaDesde smalldatetime,
	@FechaHasta smalldatetime
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @EntradaBruto int
	DECLARE @EntradaNeto int
	DECLARE @Salida int
	DECLARE @StockActual int
	DECLARE @Certificado int
	DECLARE @Retirado int
	DECLARE @TransferidoDeTercero int
	DECLARE @TransferidoATercero int
	DECLARE @Liquidado int
	DECLARE @Existencia int
	
	--ENTRADAS
	SELECT @EntradaBruto = SUM(PesoNeto), @EntradaNeto = SUM(PesoFinal)
		FROM Movimiento_Cereal
		WHERE (@IDEntidad_Depositario IS NULL OR (IDEntidad_Destino = @IDEntidad_Depositario AND IDOrigenDestino_Destino = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND dbo.udf_GetRemitenteCereal(IDEntidad_Titular, IDEntidad_Intermediario, IDEntidad_RemitenteComercial) = @IDEntidad_Depositante
			AND Tipo = 'E' AND IDCartaPorte_MotivoAnulacion IS NULL
			AND (@FechaDesde IS NULL OR FechaHoraDescarga >= @FechaDesde)
			AND (@FechaHasta IS NULL OR FechaHoraDescarga <= @FechaHasta)

	--SALIDAS
	SELECT @Salida = SUM(PesoNeto)
		FROM Movimiento_Cereal
		WHERE (@IDEntidad_Depositario IS NULL OR (IDEntidad_Titular = @IDEntidad_Depositario AND IDOrigenDestino_Origen = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND dbo.udf_GetRemitenteCereal(IDEntidad_Titular, IDEntidad_Intermediario, IDEntidad_RemitenteComercial) = @IDEntidad_Depositante
			AND Tipo = 'S'
			AND IDCartaPorte_MotivoAnulacion IS NULL
			AND (@FechaDesde IS NULL OR FechaCarga >= @FechaDesde)
			AND (@FechaHasta IS NULL OR FechaCarga <= @FechaHasta)
	
	--STOCK ACTUAL
	SET @StockActual = ISNULL(@EntradaNeto, 0) - ISNULL(@Salida, 0)
			
	--CERTIFICADOS
	SELECT @Certificado = SUM(PesoNeto)
		FROM Formulario1116A_Cabecera
		WHERE (@IDEntidad_Depositario IS NULL OR (DepositarioIDEntidad = @IDEntidad_Depositario AND DepositarioIDPlanta = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND DepositanteIDEntidad = @IDEntidad_Depositante
			AND (@FechaDesde IS NULL OR Fecha >= @FechaDesde)
			AND (@FechaHasta IS NULL OR Fecha <= @FechaHasta)

	--TRANSFERIDO DE
	SELECT @TransferidoDeTercero = SUM(TotalKilogramo)
		FROM Formulario1116RT_Cabecera
		WHERE (@IDEntidad_Depositario IS NULL OR (DepositarioIDEntidad = @IDEntidad_Depositario AND DepositarioIDPlanta = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND ReceptorIDEntidad = @IDEntidad_Depositante
			AND RetiroOTransferencia = 'T'
			AND (@FechaDesde IS NULL OR Fecha >= @FechaDesde)
			AND (@FechaHasta IS NULL OR Fecha <= @FechaHasta)

	--RETIRADOS
	SELECT @Retirado = SUM(TotalKilogramo)
		FROM Formulario1116RT_Cabecera
		WHERE (@IDEntidad_Depositario IS NULL OR (DepositarioIDEntidad = @IDEntidad_Depositario AND DepositarioIDPlanta = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND DepositanteIDEntidad = @IDEntidad_Depositante
			AND RetiroOTransferencia = 'R'
			AND (@FechaDesde IS NULL OR Fecha >= @FechaDesde)
			AND (@FechaHasta IS NULL OR Fecha <= @FechaHasta)

	--TRANSFERIDO A
	SELECT @TransferidoATercero = SUM(TotalKilogramo)
		FROM Formulario1116RT_Cabecera
		WHERE (@IDEntidad_Depositario IS NULL OR (DepositarioIDEntidad = @IDEntidad_Depositario AND DepositarioIDPlanta = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND DepositanteIDEntidad = @IDEntidad_Depositante
			AND RetiroOTransferencia = 'T'
			AND (@FechaDesde IS NULL OR Fecha >= @FechaDesde)
			AND (@FechaHasta IS NULL OR Fecha <= @FechaHasta)

	--LIQUIDADO
	SELECT @Liquidado = SUM(OperacionCantidad)
		FROM Formulario1116B_Cabecera
		WHERE (@IDEntidad_Depositario IS NULL OR (DepositarioIDEntidad = @IDEntidad_Depositario AND DepositarioIDPlanta = @IDPlanta))
			AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			AND DepositanteIDEntidad = @IDEntidad_Depositante
			AND (@FechaDesde IS NULL OR Fecha >= @FechaDesde)
			AND (@FechaHasta IS NULL OR Fecha <= @FechaHasta)

	--EXISTENCIA
	SET @Existencia = ISNULL(@Certificado, 0) + ISNULL(@TransferidoDeTercero, 0) - ISNULL(@Retirado, 0) - ISNULL(@TransferidoATercero, 0) - ISNULL(@Liquidado, 0)
	
	--DEVUELVO LOS RESULTADOS
	SELECT ISNULL(@EntradaBruto, 0) AS EntradaBruto, ISNULL(@EntradaNeto, 0) AS EntradaNeto, ISNULL(@Salida, 0) AS Salida, @StockActual AS StockActual, ISNULL(@Certificado, 0) AS Certificado, ISNULL(@TransferidoDeTercero, 0) AS TransferidoDeTercero, ISNULL(@Retirado, 0) AS Retirado, ISNULL(@TransferidoATercero, 0) AS TransferidoATercero, ISNULL(@Liquidado, 0) AS Liquidado, @Existencia AS Existencia
END
GO
/****** Object:  Table [dbo].[Movimiento_SubProducto]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimiento_SubProducto](
	[IDMovimiento_SubProducto] [int] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[ComprobanteNumero] [varchar](13) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[IDEntidad_Titular] [int] NOT NULL,
	[IDOrigenDestino_Origen] [smallint] NOT NULL,
	[IDEntidad_Destinatario] [int] NULL,
	[IDOrigenDestino_Destino] [smallint] NULL,
	[IDEntidad_Transportista] [int] NULL,
	[IDEntidad_Chofer] [int] NULL,
	[IDMovimiento_Cereal] [int] NULL,
	[CotizacionDolarFecha] [smalldatetime] NULL,
	[CotizacionDolarImporte] [money] NULL,
	[TransporteDominioCamion] [char](6) NULL,
	[TransporteDominioAcoplado] [char](6) NULL,
	[TransporteKilometro] [smallint] NULL,
	[TransporteTarifaReferencia] [money] NULL,
	[TransporteTarifa] [money] NULL,
	[Notas] [varchar](1000) NULL,
	[FechaHoraCreacion] [smalldatetime] NOT NULL,
	[FechaHoraModificacion] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__Movimiento__SubProducto] PRIMARY KEY CLUSTERED 
(
	[IDMovimiento_SubProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movimiento_Cereal_Pesada]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento_Cereal_Pesada](
	[IDMovimiento_Cereal] [int] NOT NULL,
	[IDPesada] [int] NOT NULL,
	[PesoNeto] [int] NULL,
	[Humedad] [decimal](3, 1) NULL,
	[Zaranda] [decimal](3, 1) NULL,
 CONSTRAINT [PK__Movimiento_Pesada] PRIMARY KEY NONCLUSTERED 
(
	[IDMovimiento_Cereal] ASC,
	[IDPesada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'퓞鹬鋞䖉媔礃嵮᠃' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⭏趓ܚ䯋熧�캧䴰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDPesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDPesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'IDPesada'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PesoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PesoNeto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'PesoNeto'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Humedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Humedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Humedad'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Zaranda' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Zaranda' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada', @level2type=N'COLUMN',@level2name=N'Zaranda'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'18/08/2011 18:13:03' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'10/07/2012 12:19:10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Movimiento_Pesada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1184' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movimiento_Cereal_Pesada'
GO
/****** Object:  Table [dbo].[Movimiento_Cereal_Calculo]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento_Cereal_Calculo](
	[IDMovimiento_Cereal] [int] NOT NULL,
	[ParitariaTarifa] [money] NOT NULL,
	[ParitariaImporte] [money] NOT NULL,
	[SecadoTarifa] [money] NOT NULL,
	[SecadoImporte] [money] NOT NULL,
	[HumedadExcesoReal] [decimal](3, 1) NOT NULL,
	[HumedadExcesoCalculo] [decimal](3, 1) NOT NULL,
	[SecadoExcesoTarifa] [money] NOT NULL,
	[SecadoExcesoImporte] [money] NOT NULL,
	[ZarandeoTarifa] [money] NOT NULL,
	[ZarandeoImporte] [money] NOT NULL,
	[FumigadoTarifa] [money] NOT NULL,
	[FumigadoImporte] [money] NOT NULL,
	[ImporteTotal] [money] NOT NULL,
 CONSTRAINT [PK__Movimiento_Calculo] PRIMARY KEY CLUSTERED 
(
	[IDMovimiento_Cereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116RT_Report]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116RT_Report]
	@IDFormulario1116RT int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT Formulario1116RT_Cabecera.Fecha, Formulario1116RT_Cabecera.FormularioNumero, Formulario1116RT_Cabecera.RetiroOTransferencia, Formulario1116RT_Cabecera.Origen_FormularioTipo, Formulario1116RT_Cabecera.Origen_FormularioNumero, Formulario1116RT_Cabecera.TotalKilogramo AS KilogramoTotal
		--DEPOSITANTE
		, Formulario1116RT_Cabecera.DepositanteIDEntidad AS DepositanteCodigoCliente, Formulario1116RT_Cabecera.DepositanteRazonSocial, Formulario1116RT_Cabecera.DepositanteCUIT, DepositanteCategoriaIVA.Nombre AS DepositanteCondicionIVA, dbo.udf_GetDomicilioCompleto(Formulario1116RT_Cabecera.DepositanteDomicilioCalle, Formulario1116RT_Cabecera.DepositanteDomicilioNumero, Formulario1116RT_Cabecera.DepositanteDomicilioPiso, Formulario1116RT_Cabecera.DepositanteDomicilioOficina) AS DepositanteDomicilioCompleto, Formulario1116RT_Cabecera.DepositanteDomicilioCalle, Formulario1116RT_Cabecera.DepositanteDomicilioNumero, Formulario1116RT_Cabecera.DepositanteDomicilioPiso, Formulario1116RT_Cabecera.DepositanteDomicilioOficina, dbo.udf_GetCodigoPostalLocalidad(Formulario1116RT_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre) AS DepositanteCodigoPostalYLocalidad, Formulario1116RT_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre AS DepositanteDomicilioLocalidad, DepositanteProvincia.Nombre AS DepositanteDomicilioProvincia
		--RETIRO DE GRANOS - DATOS
		, Formulario1116RT_Cabecera.GeneraNuevoF1116A
		--RETIRO DE GRANOS - DETALLE DE CARTAS DE PORTE
		, Formulario1116RT_Detalle.IDRemesa AS RemesaOrden, Movimiento_Cereal.FechaCarga AS RemesaFechaRetiro, Movimiento_Cereal.ComprobanteNumero AS RemesaNumeroCartaPorte, RetiroCereal.ONCCA_EspecieNombre AS RemesaGranoNombre, RetiroCereal.ONCCA_EspecieCodigo AS RemesaGranoCodigo, Formulario1116RT_Detalle.KilogramoAplicado AS RemesaKilos
		--TRANSFERENCIA DE GRANOS - DATOS
		, Formulario1116RT_Cabecera.ReceptorRazonSocial, Formulario1116RT_Cabecera.ReceptorCUIT, ReceptorCategoriaIVA.Nombre AS ReceptorCondicionIVA, Formulario1116RT_Cabecera.ReceptorActividad, Formulario1116RT_Cabecera.ReceptorOperadorNumero, dbo.udf_GetDomicilioCompleto(Formulario1116RT_Cabecera.ReceptorDomicilioCalle, Formulario1116RT_Cabecera.ReceptorDomicilioNumero, Formulario1116RT_Cabecera.ReceptorDomicilioPiso, Formulario1116RT_Cabecera.ReceptorDomicilioOficina) AS ReceptorDomicilioCompleto, Formulario1116RT_Cabecera.ReceptorDomicilioCalle, Formulario1116RT_Cabecera.ReceptorDomicilioNumero, Formulario1116RT_Cabecera.ReceptorDomicilioPiso, Formulario1116RT_Cabecera.ReceptorDomicilioOficina, dbo.udf_GetCodigoPostalLocalidad(Formulario1116RT_Cabecera.ReceptorDomicilioCodigoPostal, ReceptorLocalidad.Nombre) AS ReceptorCodigoPostalYLocalidad,  Formulario1116RT_Cabecera.ReceptorDomicilioCodigoPostal, ReceptorLocalidad.Nombre AS ReceptorDomicilioLocalidad, ReceptorProvincia.Nombre AS ReceptorDomicilioProvincia
		--TRANSFERENCIA DE GRANOS - DETALLE
		, Formulario1116RT_Cabecera.Origen_FormularioFecha, TransferenciaCereal.ONCCA_EspecieNombre AS TransferenciaGranoNombre, TransferenciaCereal.ONCCA_EspecieCodigo AS TransferenciaGranoCodigo
		FROM (((((((((Formulario1116RT_Cabecera LEFT JOIN Formulario1116RT_Detalle ON Formulario1116RT_Cabecera.IDFormulario1116RT = Formulario1116RT_Detalle.IDFormulario1116RT) LEFT JOIN Movimiento_Cereal ON Formulario1116RT_Detalle.IDMovimiento_Cereal = Movimiento_Cereal.IDMovimiento_Cereal) INNER JOIN Localidad AS DepositanteLocalidad ON Formulario1116RT_Cabecera.DepositanteDomicilioIDLocalidad = DepositanteLocalidad.IDLocalidad) INNER JOIN Provincia AS DepositanteProvincia ON DepositanteLocalidad.IDProvincia = DepositanteProvincia.IDProvincia) INNER JOIN CategoriaIVA AS DepositanteCategoriaIVA ON Formulario1116RT_Cabecera.DepositanteIDCategoriaIVA = DepositanteCategoriaIVA.IDCategoriaIVA) LEFT JOIN Localidad AS ReceptorLocalidad ON Formulario1116RT_Cabecera.ReceptorDomicilioIDLocalidad = ReceptorLocalidad.IDLocalidad) LEFT JOIN Provincia AS ReceptorProvincia ON ReceptorLocalidad.IDProvincia = ReceptorProvincia.IDProvincia) LEFT JOIN CategoriaIVA AS ReceptorCategoriaIVA ON Formulario1116RT_Cabecera.ReceptorIDCategoriaIVA = ReceptorCategoriaIVA.IDCategoriaIVA) LEFT JOIN Cereal AS RetiroCereal ON Movimiento_Cereal.IDCereal = RetiroCereal.IDCereal) INNER JOIN Cereal AS TransferenciaCereal ON Formulario1116RT_Cabecera.IDCereal = TransferenciaCereal.IDCereal
		WHERE Formulario1116RT_Cabecera.IDFormulario1116RT = @IDFormulario1116RT
		ORDER BY Formulario1116RT_Detalle.IDRemesa
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116RT_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116RT_Delete]
	@IDFormulario1116RT int
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Origen_FormularioTipo char(1)
	DECLARE @Origen_IDFormulario1116A int
	DECLARE @Origen_IDFormulario1116RT int
	DECLARE @TotalKilogramo int
	
	BEGIN TRY
	
		BEGIN TRANSACTION
	
			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DE LOS Movimiento_CerealS AFECTADOS AL FORMULARIO
			UPDATE Movimiento_Cereal
				SET Movimiento_Cereal.KilogramoAplicado = Movimiento_Cereal.KilogramoAplicado - Formulario1116RT_Detalle.KilogramoAplicado
				FROM Movimiento_Cereal INNER JOIN Formulario1116RT_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario1116RT_Detalle.IDMovimiento_Cereal
				WHERE Formulario1116RT_Detalle.IDFormulario1116RT = @IDFormulario1116RT

			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DEL FORMULARIO A O RT SEGUN CORRESPONDA
			SELECT @Origen_FormularioTipo = Origen_FormularioTipo, @Origen_IDFormulario1116A = Origen_IDFormulario1116A, @Origen_IDFormulario1116RT = Origen_IDFormulario1116RT, @TotalKilogramo = TotalKilogramo
				FROM Formulario1116RT_Cabecera
				WHERE IDFormulario1116RT = @IDFormulario1116RT
			IF @Origen_FormularioTipo = 'A'
				BEGIN
				UPDATE Formulario1116A_Cabecera
					SET KilogramoAplicado = KilogramoAplicado - @TotalKilogramo
					WHERE IDFormulario1116A = @Origen_IDFormulario1116A
				END
			ELSE
				BEGIN
				UPDATE Formulario1116RT_Cabecera
					SET KilogramoAplicado = KilogramoAplicado - @TotalKilogramo
					WHERE IDFormulario1116RT = @Origen_IDFormulario1116RT
				END
			
			--ELIMINO EL DETALLE DE CARTAS DE PORTE DEL FORMULARIO
			DELETE
				FROM Formulario1116RT_Detalle
				WHERE IDFormulario1116RT = @IDFormulario1116RT
			
			--ELIMINO EL FORMULARIO RT
			DELETE
				FROM Formulario1116RT_Cabecera
				WHERE IDFormulario1116RT = @IDFormulario1116RT
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116RT_Add]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116RT_Add]
	@IDFormulario1116RT int OUTPUT,
	@IDFormulario1116_Talonario int,
	@FormularioNumero varchar(13),
	@Fecha smalldatetime,
	@DepositarioIDEntidad int,
	@DepositarioIDPlanta smallint,
	@DepositanteIDEntidad int,
	@DepositanteRazonSocial varchar(100),
	@DepositanteDomicilioTipo tinyint,
	@DepositanteDomicilioCalle varchar(50),
	@DepositanteDomicilioNumero varchar(10),
	@DepositanteDomicilioPiso varchar(10),
	@DepositanteDomicilioOficina varchar(10),
	@DepositanteDomicilioCodigoPostal varchar(8),
	@DepositanteDomicilioIDLocalidad int,
	@DepositanteCUIT varchar(13),
	@DepositanteIIBB varchar(20),
	@DepositanteIDCategoriaIVA tinyint,
	@Origen_FormularioTipo char(1),
	@Origen_FormularioNumero varchar(13),
	@Origen_FormularioFecha smalldatetime,
	@Origen_IDFormulario1116A int,
	@Origen_IDFormulario1116RT int,
	@Origen_IDPartido smallint,
	@IDCosecha tinyint,
	@IDCereal tinyint,
	@RetiroOTransferencia char(1),	
	@TotalKilogramo int,
	@GeneraNuevoF1116A bit,
	@ReceptorIDEntidad int,
	@ReceptorRazonSocial varchar(100),
	@ReceptorDomicilioTipo tinyint,
	@ReceptorDomicilioCalle varchar(50),
	@ReceptorDomicilioNumero varchar(10),
	@ReceptorDomicilioPiso varchar(10),
	@ReceptorDomicilioOficina varchar(10),
	@ReceptorDomicilioCodigoPostal varchar(8),
	@ReceptorDomicilioIDLocalidad int,
	@ReceptorCUIT varchar(13),
	@ReceptorIIBB varchar(20),
	@ReceptorIDCategoriaIVA tinyint,
	@ReceptorActividad varchar(50),
	@ReceptorOperadorNumero int,
	@StringListOfIDMovimiento_CerealAndKilogramoAplicado varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SeparatorPos int = 0
	DECLARE @DelimiterPosStart int = 0
	DECLARE @DelimiterPosEnd int = 0
	DECLARE @ValuePairLen int
	DECLARE @ValuePair varchar(25)
	
	DECLARE @Formulario_Detalle__IDRemesa tinyint = 0
	DECLARE @Formulario_Detalle__IDMovimiento_Cereal int
	DECLARE @Formulario_Detalle__KilogramoAplicado int
	
	DECLARE @KilogramoAplicado int
	
	DECLARE @Formulario_Detalle TABLE(IDRemesa int PRIMARY KEY, IDMovimiento_Cereal int NOT NULL, KilogramoAplicado int NOT NULL)
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--PARSEO LOS Movimiento_CerealS Y LOS GUARDO EN UNA TABLA LOCAL
			WHILE CHARINDEX('|', @StringListOfIDMovimiento_CerealAndKilogramoAplicado, @SeparatorPos + 1) > 0
				BEGIN
					SET @ValuePairLen = CHARINDEX('|', @StringListOfIDMovimiento_CerealAndKilogramoAplicado, @SeparatorPos + 1) - @SeparatorPos
					SET @ValuePair = SUBSTRING(@StringListOfIDMovimiento_CerealAndKilogramoAplicado, @SeparatorPos, @ValuePairLen)
					
					--ID REMESA
					SET @Formulario_Detalle__IDRemesa = @Formulario_Detalle__IDRemesa + 1
					
					--ID Movimiento_Cereal
					SET @DelimiterPosStart = CHARINDEX('¬', @ValuePair, 1)
					IF @DelimiterPosStart > 0
						SET @Formulario_Detalle__IDMovimiento_Cereal = CAST(SUBSTRING(@ValuePair, 1, @DelimiterPosStart - 1) AS int)
					
					--KILOGRAMO APLICADO
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					SET @Formulario_Detalle__KilogramoAplicado = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 25) AS int)
					
					INSERT INTO @Formulario_Detalle
						VALUES (@Formulario_Detalle__IDRemesa, @Formulario_Detalle__IDMovimiento_Cereal, @Formulario_Detalle__KilogramoAplicado)
					
					SET @SeparatorPos = CHARINDEX('|', @StringListOfIDMovimiento_CerealAndKilogramoAplicado, @SeparatorPos + @ValuePairLen) + 1
				END
			
			--OBTENGO EL NUEVO ID DEL FORMULARIO
			SET @IDFormulario1116RT = (SELECT ISNULL(MAX(IDFormulario1116RT), 0) + 1 FROM Formulario1116RT_Cabecera)
			
			--LIMPIO LAS VARIABLES QUE NO CORRESPONDEN
			IF @RetiroOTransferencia = 'R'
				BEGIN
				SET @TotalKilogramo = 0
				SET @ReceptorIDEntidad = NULL
				SET @ReceptorRazonSocial = NULL
				SET @ReceptorDomicilioTipo = NULL
				SET @ReceptorDomicilioCalle = NULL
				SET @ReceptorDomicilioNumero = NULL
				SET @ReceptorDomicilioPiso = NULL
				SET @ReceptorDomicilioOficina = NULL
				SET @ReceptorDomicilioCodigoPostal = NULL
				SET @ReceptorDomicilioIDLocalidad = NULL
				SET @ReceptorCUIT = NULL
				SET @ReceptorIIBB = NULL
				SET @ReceptorIDCategoriaIVA = NULL
				SET @ReceptorActividad = NULL
				SET @ReceptorOperadorNumero = NULL
				SET @KilogramoAplicado = NULL
				SET @StringListOfIDMovimiento_CerealAndKilogramoAplicado = ''
				END
			ELSE
				BEGIN
				SET @GeneraNuevoF1116A = NULL
				SET @KilogramoAplicado = 0
				END
			
			--SI ES UN RETIRO DE MERCADERÍA, SUMO LOS KILOS DE TODAS LAS CP DE SALIDA
			--SI ES UNA TRANSFERENCIA, YA TENGO LOS KILOS EN @TotalKilogramo
			IF @RetiroOTransferencia = 'R'
				BEGIN
				SET @TotalKilogramo = (SELECT ISNULL(SUM(Formulario_Detalle.KilogramoAplicado), 0)
											FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
											WHERE Movimiento_Cereal.Tipo = 'S' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND (Movimiento_Cereal.PesoNeto - Movimiento_Cereal.KilogramoAplicado) > 0)
				END
			
			--AGREGO EL FORMULARIO RT
			INSERT INTO Formulario1116RT_Cabecera
				(IDFormulario1116RT, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, Origen_IDPartido, IDCosecha, IDCereal, RetiroOTransferencia, TotalKilogramo, GeneraNuevoF1116A, ReceptorIDEntidad, ReceptorRazonSocial, ReceptorDomicilioTipo, ReceptorDomicilioCalle, ReceptorDomicilioNumero, ReceptorDomicilioPiso, ReceptorDomicilioOficina, ReceptorDomicilioCodigoPostal, ReceptorDomicilioIDLocalidad, ReceptorCUIT, ReceptorIIBB, ReceptorIDCategoriaIVA, ReceptorActividad, ReceptorOperadorNumero, KilogramoAplicado)
				SELECT @IDFormulario1116RT, @IDFormulario1116_Talonario, @FormularioNumero, @Fecha, @DepositarioIDEntidad, @DepositarioIDPlanta, @DepositanteIDEntidad, @DepositanteRazonSocial, @DepositanteDomicilioTipo, @DepositanteDomicilioCalle, @DepositanteDomicilioNumero, @DepositanteDomicilioPiso, @DepositanteDomicilioOficina, @DepositanteDomicilioCodigoPostal, @DepositanteDomicilioIDLocalidad, @DepositanteCUIT, @DepositanteIIBB, @DepositanteIDCategoriaIVA, @Origen_FormularioTipo, @Origen_FormularioNumero, @Origen_FormularioFecha, @Origen_IDFormulario1116A, @Origen_IDFormulario1116RT, @Origen_IDPartido, @IDCosecha, @IDCereal, @RetiroOTransferencia, @TotalKilogramo, @GeneraNuevoF1116A, @ReceptorIDEntidad, @ReceptorRazonSocial, @ReceptorDomicilioTipo, @ReceptorDomicilioCalle, @ReceptorDomicilioNumero, @ReceptorDomicilioPiso, @ReceptorDomicilioOficina, @ReceptorDomicilioCodigoPostal, @ReceptorDomicilioIDLocalidad, @ReceptorCUIT, @ReceptorIIBB, @ReceptorIDCategoriaIVA, @ReceptorActividad, @ReceptorOperadorNumero, @KilogramoAplicado
			
			--AGREGO EL DETALLE DE CARTAS DE PORTE DEL FORMULARIO
			INSERT INTO Formulario1116RT_Detalle
				(IDFormulario1116RT, IDRemesa, IDMovimiento_Cereal, KilogramoAplicado)
				SELECT @IDFormulario1116RT, Formulario_Detalle.IDRemesa, Formulario_Detalle.IDMovimiento_Cereal, Formulario_Detalle.KilogramoAplicado
					FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
					WHERE Movimiento_Cereal.Tipo = 'S' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND (Movimiento_Cereal.PesoNeto - Movimiento_Cereal.KilogramoAplicado) > 0
					
			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DEL FORMULARIO A O RT SEGÚN CORRESPONDA
			IF @Origen_FormularioTipo = 'A'
				BEGIN
				UPDATE Formulario1116A_Cabecera
					SET KilogramoAplicado = KilogramoAplicado + @TotalKilogramo
						WHERE IDFormulario1116A = @Origen_IDFormulario1116A
				END
			ELSE
				BEGIN
				UPDATE Formulario1116RT_Cabecera
					SET KilogramoAplicado = KilogramoAplicado + @TotalKilogramo
						WHERE IDFormulario1116RT = @Origen_IDFormulario1116RT
				END

			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DE LOS Movimiento_CerealS AFECTADOS AL FORMULARIO
			UPDATE Movimiento_Cereal
				SET Movimiento_Cereal.KilogramoAplicado = Movimiento_Cereal.KilogramoAplicado + Formulario_Detalle.KilogramoAplicado
					FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
					WHERE Movimiento_Cereal.Tipo = 'S' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND (Movimiento_Cereal.PesoNeto - Movimiento_Cereal.KilogramoAplicado) > 0

		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116B_Report]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116B_Report]
	@IDFormulario1116B int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT Formulario1116B_Cabecera.Fecha, Formulario1116B_Cabecera.OperacionTipo, Formulario1116B_Cabecera.FormularioNumero, Formulario1116B_Cabecera.ActuoCorredor
		--DEPOSITANTE
		, Formulario1116B_Cabecera.DepositanteIDEntidad AS DepositanteCodigoCliente, Formulario1116B_Cabecera.DepositanteRazonSocial, Formulario1116B_Cabecera.DepositanteCUIT, CategoriaIVA.Nombre AS DepositanteCondicionIVA, Formulario1116B_Cabecera.DepositanteIIBB, dbo.udf_GetDomicilioCompleto(Formulario1116B_Cabecera.DepositanteDomicilioCalle, Formulario1116B_Cabecera.DepositanteDomicilioNumero, Formulario1116B_Cabecera.DepositanteDomicilioPiso, Formulario1116B_Cabecera.DepositanteDomicilioOficina) AS DepositanteDomicilioCompleto, Formulario1116B_Cabecera.DepositanteDomicilioCalle, Formulario1116B_Cabecera.DepositanteDomicilioNumero, Formulario1116B_Cabecera.DepositanteDomicilioPiso, Formulario1116B_Cabecera.DepositanteDomicilioOficina, dbo.udf_GetCodigoPostalLocalidad(Formulario1116B_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre) AS DepositanteCodigoPostalYLocalidad, Formulario1116B_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre AS DepositanteDomicilioLocalidad, DepositanteProvincia.Nombre AS DepositanteDomicilioProvincia
		--CONDICIONES OPERACION
		, Formulario1116B_Cabecera.CondicionOperacionFecha, Formulario1116B_Cabecera.CondicionOperacionPrecioTonelada, Cereal.ONCCA_EspecieNombre AS CerealNombre, Formulario1116B_Cabecera.CondicionOperacionFlete
		--MERCADERIA ENTREGADA
		, dbo.udf_GetFormulario1116TipoNumero(Formulario1116B_Cabecera.Origen_FormularioTipo, Formulario1116B_Cabecera.Origen_FormularioNumero) AS Origen_FormularioTipoNumero, Formulario1116B_Cabecera.Origen_FormularioFecha, OrigenPartido.Nombre AS OrigenPartido, OrigenProvincia.Nombre AS OrigenProvincia
		--OPERACION
		, Formulario1116B_Cabecera.OperacionCantidad, Formulario1116B_Cabecera.OperacionPrecioKilogramo, Formulario1116B_Cabecera.OperacionSubtotal, Formulario1116B_Cabecera.OperacionAlicuotaIVA, Formulario1116B_Cabecera.OperacionImporteIVA, Formulario1116B_Cabecera.OperacionImporteConIVA
		--DETALLE DE RETENCIONES
		, Retencion.Concepto, Retencion.Nombre, Formulario1116B_Retencion.BaseCalculo, Formulario1116B_Retencion.Alicuota, Formulario1116B_Retencion.Importe
		--TOTALES DE LA LIQUIDACION
		, Formulario1116B_Cabecera.RetencionImporteAFIP, Formulario1116B_Cabecera.RetencionImporteOtra, Formulario1116B_Cabecera.TotalImporteNetoAPagar, Formulario1116B_Cabecera.TotalIVARG, Formulario1116B_Cabecera.TotalPagoSegunCondicion
		
		FROM (((((((Formulario1116B_Cabecera LEFT JOIN Formulario1116B_Retencion ON Formulario1116B_Cabecera.IDFormulario1116B = Formulario1116B_Retencion.IDFormulario1116B) LEFT JOIN Retencion ON Formulario1116B_Retencion.IDRetencion = Retencion.IDRetencion) INNER JOIN Localidad AS DepositanteLocalidad ON Formulario1116B_Cabecera.DepositanteDomicilioIDLocalidad = DepositanteLocalidad.IDLocalidad) INNER JOIN Provincia AS DepositanteProvincia ON DepositanteLocalidad.IDProvincia = DepositanteProvincia.IDProvincia) INNER JOIN CategoriaIVA ON Formulario1116B_Cabecera.DepositanteIDCategoriaIVA = CategoriaIVA.IDCategoriaIVA) INNER JOIN Partido AS OrigenPartido ON Formulario1116B_Cabecera.Origen_IDPartido = OrigenPartido.IDPartido) INNER JOIN Provincia AS OrigenProvincia ON OrigenPartido.IDProvincia = OrigenProvincia.IDProvincia) INNER JOIN Cereal ON Formulario1116B_Cabecera.IDCereal = Cereal.IDCereal
		WHERE Formulario1116B_Cabecera.IDFormulario1116B = @IDFormulario1116B
		ORDER BY Formulario1116B_Retencion.IDRetencion
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_UpdateMerma]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_UpdateMerma]
	@IDMovimiento_Cereal int
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Tipo char(1)
	DECLARE @IDCereal tinyint
	DECLARE @PesoNeto int
	DECLARE @Volatil decimal(2,2)
	DECLARE @Humedad decimal(3,1)
	DECLARE @Zaranda decimal(3,1)
	DECLARE @MermaVolatilKilogramo int
	DECLARE @MermaHumedadPorcentaje decimal(4,2)
	DECLARE @MermaHumedadKilogramo int
	DECLARE @MermaZarandaKilogramo int
	DECLARE @PesoFinal int
	
	DECLARE @MermaHumedadBase decimal(3,1)
	DECLARE @MermaHumedadManipuleo decimal(2,2)
	
	DECLARE @Cereal_HumedadMerma decimal(4,2)
	
	SELECT @Tipo = Tipo, @IDCereal = IDCereal, @PesoNeto = PesoNeto, @Volatil = ISNULL(Volatil, 0), @Humedad = Humedad, @Zaranda = ISNULL(Zaranda, 0)
		FROM Movimiento_Cereal
		WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
	
	IF @Tipo = 'E'
		BEGIN
		SET @PesoFinal = @PesoNeto
		
		--VOLATIL
		SET @MermaVolatilKilogramo = @PesoNeto * (@Volatil / 100)
		SET @PesoFinal = @PesoFinal - @MermaVolatilKilogramo
		
		--SECADO
		SELECT @MermaHumedadBase = MermaHumedadBase, @MermaHumedadManipuleo = MermaHumedadManipuleo
			FROM Cereal
			WHERE IDCereal = @IDCereal
			
		IF @MermaHumedadBase IS NULL
			BEGIN
			SET @MermaHumedadPorcentaje = 0
			SET @MermaHumedadKilogramo = 0
			END
		ELSE
			BEGIN
			IF @Humedad > @MermaHumedadBase
				BEGIN
				SELECT @Cereal_HumedadMerma = Merma
					FROM Cereal_Humedad
					WHERE IDCereal = @IDCereal AND Humedad = @Humedad
				SET @MermaHumedadPorcentaje = @MermaHumedadManipuleo + @CerealHumedadMerma
				SET @MermaHumedadKilogramo = @PesoNeto * (@MermaHumedadPorcentaje / 100)
				END
			ELSE
				BEGIN
				SET @MermaHumedadPorcentaje = 0
				SET @MermaHumedadKilogramo = 0
				END
			END
		SET @PesoFinal = @PesoFinal - @MermaHumedadKilogramo
		
		--ZARANDA
		SET @MermaZarandaKilogramo = @PesoNeto * (@Zaranda / 100)
		SET @PesoFinal = @PesoFinal - @MermaZarandaKilogramo
		END
	ELSE
		BEGIN
		SET @MermaVolatilKilogramo = NULL
		SET @MermaHumedadPorcentaje = NULL
		SET @MermaHumedadKilogramo = NULL
		SET @MermaZarandaKilogramo = NULL
		IF @Tipo <> 'U'
			SET @PesoFinal = (@PesoNeto * -1)
		END
	
	UPDATE Movimiento_Cereal
		SET MermaVolatilKilogramo = @MermaVolatilKilogramo, MermaHumedadPorcentaje = @MermaHumedadPorcentaje, MermaHumedadKilogramo = @MermaHumedadKilogramo, MermaZarandaKilogramo = @MermaZarandaKilogramo, PesoFinal = @PesoFinal
		WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Salida_SinAplicar_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Salida_SinAplicar_List]
	@IDEntidad_Depositario int,
	@IDPlanta smallint,
	@IDEntidad_Depositante int,
	@IDCosecha smallint,
	@IDCereal tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
    SELECT Movimiento_Cereal.IDMovimiento_Cereal, Movimiento_Cereal.ComprobanteNumero, Movimiento_Cereal.FechaCarga, Movimiento_Cereal.PesoNeto, (Movimiento_Cereal.PesoNeto - Movimiento_Cereal.KilogramoAplicado) AS KilogramoPendiente, 0 AS KilogramoAsignar
		FROM Movimiento_Cereal
		WHERE Movimiento_Cereal.Tipo = 'S' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND (Movimiento_Cereal.PesoNeto - Movimiento_Cereal.KilogramoAplicado) > 0 AND Movimiento_Cereal.IDEntidad_Titular = @IDEntidad_Depositario AND Movimiento_Cereal.IDOrigenDestino_Origen = @IDPlanta AND dbo.udf_GetRemitenteCereal(Movimiento_Cereal.IDEntidad_Titular, Movimiento_Cereal.IDEntidad_Intermediario, Movimiento_Cereal.IDEntidad_RemitenteComercial) = @IDEntidad_Depositante AND Movimiento_Cereal.IDCosecha = @IDCosecha AND Movimiento_Cereal.IDCereal = @IDCereal
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_GetByComprobanteNumero]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_GetByComprobanteNumero]
	@ComprobanteNumero char(12)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDMovimiento_Cereal, Tipo, ComprobanteNumero, IDCartaPorte_Talonario, CTGNumero, FechaCarga, IDEntidad_Titular, IDEntidad_Intermediario, IDEntidad_RemitenteComercial, IDEntidad_Corredor, IDEntidad_Entregador, IDEntidad_Destinatario, IDEntidad_Destino, IDEntidad_Transportista, IDEntidad_Chofer, IDCosecha, IDCereal, ContratoNumero, PesoBruto, PesoTara, PesoNeto, Volatil, Humedad, Zaranda, MermaVolatilKilogramo, MermaHumedadPorcentaje, MermaHumedadKilogramo, MermaZarandaKilogramo, PesoFinal, IDOrigenDestino_Origen, IDOrigenDestino_Destino, CTGCancelacion, TransporteDominioCamion, TransporteDominioAcoplado, TransporteKilometro, TransporteTarifaReferencia, TransporteTarifa, FechaHoraArribo, FechaHoraDescarga, IDCartaPorte_MotivoAnulacion, Notas, EsIntacta, FechaHoraCreacion, FechaHoraModificacion, FechaHoraLiquidacionServicio, Certificado, KilogramoAplicado
		FROM Movimiento_Cereal
		WHERE ComprobanteNumero = @ComprobanteNumero
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Get]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Get]
	@IDMovimiento_Cereal int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IDMovimiento_Cereal, Tipo, ComprobanteNumero, IDCartaPorte_Talonario, CTGNumero, FechaCarga, IDEntidad_Titular, IDEntidad_Intermediario, IDEntidad_RemitenteComercial, IDEntidad_Corredor, IDEntidad_Entregador, IDEntidad_Destinatario, IDEntidad_Destino, IDEntidad_Transportista, IDEntidad_Chofer, IDCosecha, IDCereal, ContratoNumero, PesoBruto, PesoTara, PesoNeto, Volatil, Humedad, Zaranda, MermaVolatilKilogramo, MermaHumedadPorcentaje, MermaHumedadKilogramo, MermaZarandaKilogramo, PesoFinal, IDOrigenDestino_Origen, IDOrigenDestino_Destino, CTGCancelacion, TransporteDominioCamion, TransporteDominioAcoplado, TransporteKilometro, TransporteTarifaReferencia, TransporteTarifa, FechaHoraArribo, FechaHoraDescarga, IDCartaPorte_MotivoAnulacion, Notas, EsIntacta, FechaHoraCreacion, FechaHoraModificacion, FechaHoraLiquidacionServicio, Certificado, KilogramoAplicado
		FROM Movimiento_Cereal
		WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Entrada_SinCertificar_ListPartido]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Entrada_SinCertificar_ListPartido]
	@IDEntidad_Depositario int,
	@IDPlanta smallint,
	@IDEntidad_Depositante int,
	@IDCosecha smallint,
	@IDCereal tinyint
AS
BEGIN
	SET NOCOUNT ON;
	
    SELECT DISTINCT Partido.IDPartido, Partido.Nombre
		FROM ((Movimiento_Cereal INNER JOIN Entidad_OrigenDestino ON Movimiento_Cereal.IDEntidad_Titular = Entidad_OrigenDestino.IDEntidad AND Movimiento_Cereal.IDOrigenDestino_oRIGEN = Entidad_OrigenDestino.IDOrigenDestino) INNER JOIN Localidad ON Entidad_OrigenDestino.IDLocalidad = Localidad.IDLocalidad) INNER JOIN Partido ON Localidad.IDPartido = Partido.IDPartido
		WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND Movimiento_Cereal.Certificado = 0 AND Movimiento_Cereal.IDEntidad_Destino = @IDEntidad_Depositario AND Movimiento_Cereal.IDOrigenDestino_Destino = @IDPlanta AND dbo.udf_GetRemitenteCereal(Movimiento_Cereal.IDEntidad_Titular, Movimiento_Cereal.IDEntidad_Intermediario, Movimiento_Cereal.IDEntidad_RemitenteComercial) = @IDEntidad_Depositante AND Movimiento_Cereal.IDCosecha = @IDCosecha AND Movimiento_Cereal.IDCereal = @IDCereal
		ORDER BY Partido.Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Entrada_SinCertificar_List]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Entrada_SinCertificar_List]
	@IDEntidad_Depositario int,
	@IDPlanta smallint,
	@IDEntidad_Depositante int,
	@IDCosecha smallint,
	@IDCereal tinyint,
	@IDPartido smallint
AS
BEGIN
	SET NOCOUNT ON;
	
    SELECT Movimiento_Cereal.IDMovimiento_Cereal, 0 AS Selected, Movimiento_Cereal.ComprobanteNumero, Movimiento_Cereal.FechaCarga, Entidad_Transportista.Nombre AS Entidad_Transportista_Nombre, Movimiento_Cereal.PesoBruto, Movimiento_Cereal.PesoTara, Movimiento_Cereal.PesoNeto, Movimiento_Cereal.PesoFinal, Movimiento_Cereal.Humedad, Movimiento_Cereal.Zaranda
		FROM ((Movimiento_Cereal INNER JOIN Entidad AS Entidad_Transportista ON Movimiento_Cereal.IDEntidad_Transportista = Entidad_Transportista.IDEntidad) INNER JOIN Entidad_OrigenDestino AS Origen ON Movimiento_Cereal.IDEntidad_Titular = Origen.IDEntidad AND Movimiento_Cereal.IDOrigenDestino_Origen = Origen.IDOrigenDestino) INNER JOIN Localidad AS Localidad_Origen ON Origen.IDLocalidad = Localidad_Origen.IDLocalidad
		WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND Movimiento_Cereal.Certificado = 0 AND Movimiento_Cereal.IDEntidad_Destino = @IDEntidad_Depositario AND Movimiento_Cereal.IDOrigenDestino_Destino = @IDPlanta AND dbo.udf_GetRemitenteCereal(Movimiento_Cereal.IDEntidad_Titular, Movimiento_Cereal.IDEntidad_Intermediario, Movimiento_Cereal.IDEntidad_RemitenteComercial) = @IDEntidad_Depositante AND Movimiento_Cereal.IDCosecha = @IDCosecha AND Movimiento_Cereal.IDCereal = @IDCereal AND Localidad_Origen.IDPartido = @IDPartido
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116B_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116B_Delete]
	@IDFormulario1116B int
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Origen_FormularioTipo char(1)
	DECLARE @Origen_IDFormulario1116A int
	DECLARE @Origen_IDFormulario1116RT int
	DECLARE @OperacionCantidad int
	
	BEGIN TRY
	
		BEGIN TRANSACTION
	
			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DEL FORMULARIO A O RT SEGUN CORRESPONDA
			SELECT @Origen_FormularioTipo = Origen_FormularioTipo, @Origen_IDFormulario1116A = Origen_IDFormulario1116A, @Origen_IDFormulario1116RT = Origen_IDFormulario1116RT, @OperacionCantidad = OperacionCantidad
				FROM Formulario1116B_Cabecera
				WHERE IDFormulario1116B = @IDFormulario1116B
			IF @Origen_FormularioTipo = 'A'
				BEGIN
				UPDATE Formulario1116A_Cabecera
					SET KilogramoAplicado = KilogramoAplicado - @OperacionCantidad
					WHERE IDFormulario1116A = @Origen_IDFormulario1116A
				END
			ELSE
				BEGIN
				UPDATE Formulario1116RT_Cabecera
					SET KilogramoAplicado = KilogramoAplicado - @OperacionCantidad
					WHERE IDFormulario1116RT = @Origen_IDFormulario1116RT
				END

			--ELIMINO EL DETALLE DE RETENCIONES DEL FORMULARIO
			DELETE
				FROM Formulario1116B_Retencion
				WHERE IDFormulario1116B = @IDFormulario1116B
			
			--ELIMINO EL FORMULARIO B
			DELETE
				FROM Formulario1116B_Cabecera
				WHERE IDFormulario1116B = @IDFormulario1116B
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116B_Add]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116B_Add]
	@IDFormulario1116B int OUTPUT,
	@OperacionTipo char(1),
	@FormularioNumero varchar(13),
	@Fecha smalldatetime,
	@DepositarioIDEntidad int,
	@DepositarioIDPlanta smallint,
	@DepositanteIDEntidad int,
	@DepositanteRazonSocial varchar(100),
	@DepositanteDomicilioTipo tinyint,
	@DepositanteDomicilioCalle varchar(50),
	@DepositanteDomicilioNumero varchar(10),
	@DepositanteDomicilioPiso varchar(10),
	@DepositanteDomicilioOficina varchar(10),
	@DepositanteDomicilioCodigoPostal varchar(8),
	@DepositanteDomicilioIDLocalidad int,
	@DepositanteCUIT varchar(13),
	@DepositanteIIBB varchar(20),
	@DepositanteIDCategoriaIVA tinyint,
	@DepositanteGanancia_Inscripto bit,
	@DepositanteReFOG_Situacion char(1),
	@DepositanteCBU varchar(22),
	@Origen_FormularioTipo char(1),
	@Origen_FormularioNumero varchar(13),
	@Origen_FormularioFecha smalldatetime,
	@Origen_IDFormulario1116A int,
	@Origen_IDFormulario1116RT int,
	@Origen_IDPartido smallint,
	@IDCosecha tinyint,
	@IDCereal tinyint,
	@ActuoCorredor bit,
	@CondicionOperacionFecha smalldatetime,
	@CondicionOperacionPrecioTonelada money,
	@CondicionOperacionFlete money,
	@OperacionCantidad int,
	@OperacionPrecioKilogramo money,
	@OperacionAlicuotaIVA decimal(3,1)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @DepositanteReFOG_Activo bit
	DECLARE @OperacionSubtotal money
	DECLARE @OperacionImporteIVA money
	DECLARE @OperacionImporteConIVA money
	DECLARE @RetencionImporteAFIP money
	DECLARE @RetencionImporteOtra money
	DECLARE @RetencionIVAImporte money
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			IF @DepositanteReFOG_Situacion = 'A'
				SET @DepositanteReFOG_Activo = 1
			ELSE
				SET @DepositanteReFOG_Activo = 0
			
			--OBTENGO EL NUEVO ID DEL FORMULARIO
			SET @IDFormulario1116B = (SELECT ISNULL(MAX(IDFormulario1116B), 0) + 1 FROM Formulario1116B_Cabecera)

			--AGREGO EL FORMULARIO B
			SET @OperacionSubtotal = ROUND(@OperacionCantidad * (@CondicionOperacionPrecioTonelada - @CondicionOperacionFlete) / 1000, 2)
			SET @OperacionImporteIVA = ROUND(@OperacionSubtotal * @OperacionAlicuotaIVA / 100, 2)
			SET @OperacionImporteConIVA = @OperacionSubtotal + @OperacionImporteIVA
			INSERT INTO Formulario1116B_Cabecera
				(IDFormulario1116B, OperacionTipo, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, DepositanteGanancia_Inscripto, DepositanteReFOG_Situacion, DepositanteCBU, Origen_FormularioTipo, Origen_FormularioNumero, Origen_FormularioFecha, Origen_IDFormulario1116A, Origen_IDFormulario1116RT, Origen_IDPartido, IDCosecha, IDCereal, ActuoCorredor, CondicionOperacionFecha, CondicionOperacionPrecioTonelada, CondicionOperacionFlete, OperacionCantidad, OperacionPrecioKilogramo, OperacionSubtotal, OperacionAlicuotaIVA, OperacionImporteIVA, OperacionImporteConIVA, RetencionImporteAFIP, RetencionImporteOtra, TotalImporteNetoAPagar, TotalIVARG, TotalPagoSegunCondicion)
				VALUES (@IDFormulario1116B, @OperacionTipo, @FormularioNumero, @Fecha, @DepositarioIDEntidad, @DepositarioIDPlanta, @DepositanteIDEntidad, @DepositanteRazonSocial, @DepositanteDomicilioTipo, @DepositanteDomicilioCalle, @DepositanteDomicilioNumero, @DepositanteDomicilioPiso, @DepositanteDomicilioOficina, @DepositanteDomicilioCodigoPostal, @DepositanteDomicilioIDLocalidad, @DepositanteCUIT, @DepositanteIIBB, @DepositanteIDCategoriaIVA, @DepositanteGanancia_Inscripto, @DepositanteReFOG_Situacion, @DepositanteCBU, @Origen_FormularioTipo, @Origen_FormularioNumero, @Origen_FormularioFecha, @Origen_IDFormulario1116A, @Origen_IDFormulario1116RT, @Origen_IDPartido, @IDCosecha, @IDCereal, @ActuoCorredor, @CondicionOperacionFecha, @CondicionOperacionPrecioTonelada, @CondicionOperacionFlete, @OperacionCantidad, @OperacionPrecioKilogramo, @OperacionSubtotal, @OperacionAlicuotaIVA, @OperacionImporteIVA, @OperacionImporteConIVA, 0, 0, 0, 0, 0)
			
			--AGREGO EL DETALLE DE RETENCIONES DEL FORMULARIO
			INSERT INTO Formulario1116B_Retencion
				(IDFormulario1116B, IDRetencion, BaseCalculo, Alicuota, Importe)
				SELECT @IDFormulario1116B, IDRetencion, (CASE BaseCalculoTipo WHEN 'IN' THEN @OperacionSubtotal - ISNULL(MinimoNoImponible, 0) WHEN 'IB' THEN @OperacionImporteConIVA - ISNULL(MinimoNoImponible, 0) END), Alicuota, ROUND((CASE BaseCalculoTipo WHEN 'IN' THEN @OperacionSubtotal - ISNULL(MinimoNoImponible, 0) WHEN 'IB' THEN @OperacionImporteConIVA - ISNULL(MinimoNoImponible, 0) END) * Alicuota / 100, 2)
					FROM Retencion
					WHERE AplicableEn = 'FB' AND Activo = 1
						AND (ReFOG_Activo IS NULL OR ReFOG_Activo = @DepositanteReFOG_Activo)
						AND (Ganancia_Inscripto IS NULL OR Ganancia_Inscripto = @DepositanteGanancia_Inscripto)
			
			--ACTUALIZO LOS TOTALES DEL FORMULARIO SEGUN LAS RETENCIONES APLICADAS
			SET @RetencionImporteAFIP = (SELECT SUM(Formulario1116B_Retencion.Importe) FROM Formulario1116B_Retencion INNER JOIN Retencion ON Formulario1116B_Retencion.IDRetencion = Retencion.IDRetencion WHERE Formulario1116B_Retencion.IDFormulario1116B = @IDFormulario1116B AND (Retencion.Concepto = 'I' OR Retencion.Concepto = 'G'))
			SET @RetencionImporteOtra = (SELECT SUM(Formulario1116B_Retencion.Importe) FROM Formulario1116B_Retencion INNER JOIN Retencion ON Formulario1116B_Retencion.IDRetencion = Retencion.IDRetencion WHERE Formulario1116B_Retencion.IDFormulario1116B = @IDFormulario1116B AND Retencion.Concepto <> 'I' AND Retencion.Concepto <> 'G')
			SET @RetencionIVAImporte = (SELECT Formulario1116B_Retencion.Importe FROM Formulario1116B_Retencion INNER JOIN Retencion ON Formulario1116B_Retencion.IDRetencion = Retencion.IDRetencion WHERE Formulario1116B_Retencion.IDFormulario1116B = @IDFormulario1116B AND Retencion.Concepto = 'I')
			UPDATE Formulario1116B_Cabecera
				SET RetencionImporteAFIP = @RetencionImporteAFIP, RetencionImporteOtra = @RetencionImporteOtra, TotalImporteNetoAPagar = @OperacionImporteConIVA - @RetencionImporteAFIP - @RetencionImporteOtra, TotalIVARG = @OperacionImporteIVA - @RetencionIVAImporte, TotalPagoSegunCondicion = (@OperacionImporteConIVA - @RetencionImporteAFIP - @RetencionImporteOtra) - (@OperacionImporteIVA - @RetencionIVAImporte)
				WHERE IDFormulario1116B = @IDFormulario1116B 
			
			--ACTUALIZO EL CAMPO KILOGRAMO APLICADO DEL FORMULARIO A O RT SEGÚN CORRESPONDA
			IF @Origen_FormularioTipo = 'A'
				BEGIN
				UPDATE Formulario1116A_Cabecera
					SET KilogramoAplicado = KilogramoAplicado + @OperacionCantidad
						WHERE IDFormulario1116A = @Origen_IDFormulario1116A
				END
			ELSE
				BEGIN
				UPDATE Formulario1116RT_Cabecera
					SET KilogramoAplicado = KilogramoAplicado + @OperacionCantidad
						WHERE IDFormulario1116RT = @Origen_IDFormulario1116RT
				END
			
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  Table [dbo].[Formulario1116A_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formulario1116A_Detalle](
	[IDFormulario1116A] [int] NOT NULL,
	[IDRemesa] [tinyint] NOT NULL,
	[IDMovimiento_Cereal] [int] NOT NULL,
 CONSTRAINT [PK__Formulario1116A_Detalle] PRIMARY KEY NONCLUSTERED 
(
	[IDFormulario1116A] ASC,
	[IDRemesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX__Formulario1116A_Detalle__Movimiento] ON [dbo].[Formulario1116A_Detalle] 
(
	[IDMovimiento_Cereal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'琌鉎⹫䄳䖁プ䟖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDFormulario1116A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDFormulario1116A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116A_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDFormulario1116A'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'畀⢽氂䌭﹑ꬹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDRemesa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDRemesa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116A_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDRemesa'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3082' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䈭Ị䍖⮃䃺䜐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDMovimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Formulario1116A_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle', @level2type=N'COLUMN',@level2name=N'IDMovimiento_Cereal'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/04/2011 23:20:45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/05/2012 20:49:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Formulario1116A_Detalle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1085' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formulario1116A_Detalle'
GO
/****** Object:  Table [dbo].[Movimiento_SubProducto_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento_SubProducto_Detalle](
	[IDMovimiento_SubProducto] [int] NOT NULL,
	[Linea] [tinyint] NOT NULL,
	[IDSubProducto] [tinyint] NOT NULL,
	[Porcentaje] [decimal](5, 2) NULL,
	[Kilogramo] [int] NOT NULL,
	[PrecioToneladaDolar] [money] NULL,
	[PrecioToneladaPeso] [money] NULL,
 CONSTRAINT [PK__Movimiento_SubProducto_Detalle] PRIMARY KEY CLUSTERED 
(
	[IDMovimiento_SubProducto] ASC,
	[Linea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116A_Report]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116A_Report]
	@IDFormulario1116A int
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT Formulario1116A_Cabecera.Fecha, Formulario1116A_Cabecera.FormularioNumero
		--DEPOSITANTE
		, Formulario1116A_Cabecera.DepositanteIDEntidad AS DepositanteCodigoCliente, Formulario1116A_Cabecera.DepositanteRazonSocial, dbo.udf_GetDomicilioCompleto(Formulario1116A_Cabecera.DepositanteDomicilioCalle, Formulario1116A_Cabecera.DepositanteDomicilioNumero, Formulario1116A_Cabecera.DepositanteDomicilioPiso, Formulario1116A_Cabecera.DepositanteDomicilioOficina) AS DepositanteDomicilioCompleto, Formulario1116A_Cabecera.DepositanteDomicilioCalle, Formulario1116A_Cabecera.DepositanteDomicilioNumero, Formulario1116A_Cabecera.DepositanteDomicilioPiso, Formulario1116A_Cabecera.DepositanteDomicilioOficina, dbo.udf_GetCodigoPostalLocalidad(Formulario1116A_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre) AS DepositanteCodigoPostalYLocalidad, Formulario1116A_Cabecera.DepositanteDomicilioCodigoPostal, DepositanteLocalidad.Nombre AS DepositanteDomicilioLocalidad, DepositanteProvincia.Nombre AS DepositanteDomicilioProvincia, Formulario1116A_Cabecera.DepositanteCUIT, Formulario1116A_Cabecera.DepositanteIIBB, CategoriaIVA.Nombre AS DepositanteCondicionIVA
		--CEREAL
		, Cereal.ONCCA_EspecieNombre AS CerealNombre, Cereal.ONCCA_GranoTipoNombre AS CerealTipo, Cereal.ONCCA_EspecieCodigo AS CerealCodigo
		--TARIFAS
		, Formulario1116A_Cabecera.TarifaGastoGeneral, Formulario1116A_Cabecera.TarifaZarandeo, Formulario1116A_Cabecera.TarifaSecadoDesde, Formulario1116A_Cabecera.TarifaSecadoHasta, Formulario1116A_Cabecera.TarifaSecado, Formulario1116A_Cabecera.TarifaSecadoPuntoExceso, Formulario1116A_Cabecera.TarifaOtro
		--DATOS OPERACIÓN
		, OrigenPartido.Nombre AS OrigenPartido, OrigenProvincia.Nombre AS OrigenProvincia, Formulario1116A_Cabecera.LugarEntregaDescripcion, LugarEntregaProvincia.Nombre AS LugarEntregaProvincia, Formulario1116A_Cabecera.LugarYFecha
		--MERMAS Y KILOGRAMOS FINALES
		, Formulario1116A_Cabecera.PesoBruto, Formulario1116A_Cabecera.MermaVolatilPorcentaje, Formulario1116A_Cabecera.MermaVolatilKilogramo, Formulario1116A_Cabecera.MermaSecadoPorcentaje, Formulario1116A_Cabecera.MermaSecadoKilogramo, Formulario1116A_Cabecera.MermaZarandeoPorcentaje, Formulario1116A_Cabecera.MermaZarandeoKilogramo, Formulario1116A_Cabecera.MermaTotal, Formulario1116A_Cabecera.PesoNeto
		--GASTOS
		, Formulario1116A_Cabecera.GastoGeneral, Formulario1116A_Cabecera.GastoSecado, Formulario1116A_Cabecera.GastoZarandeo, Formulario1116A_Cabecera.GastoOtro, Formulario1116A_Cabecera.GastoIVARI, Formulario1116A_Cabecera.GastoIVARNI, Formulario1116A_Cabecera.GastoTotal, CondicionPago.Nombre AS GastoCondicionPago
		--DETALLE DE CARTAS DE PORTES
		, Formulario1116A_Detalle.IDRemesa AS RemesaOrden, Movimiento_Cereal.FechaHoraDescarga AS RemesaFecha, Movimiento_Cereal.ComprobanteNumero AS RemesaRomaneo, Movimiento_Cereal.PesoNeto AS RemesaKgsBrutos, Movimiento_Cereal.MermaZarandaKilogramo AS RemesaZarandeoMermaKgs, Movimiento_Cereal_Calculo.ZarandeoTarifa AS RemesaZarandeoTarifa, Movimiento_Cereal_Calculo.ZarandeoImporte AS RemesaZarandeoImporte, Movimiento_Cereal.Humedad AS RemesaSecadoHumedad, Movimiento_Cereal.MermaHumedadKilogramo AS RemesaSecadoMermaKgs, (Movimiento_Cereal_Calculo.SecadoTarifa + Movimiento_Cereal_Calculo.SecadoExcesoTarifa) AS RemesaSecadoTarifa, (Movimiento_Cereal_Calculo.SecadoImporte + Movimiento_Cereal_Calculo.SecadoExcesoImporte) AS RemesaSecadoImporte
		FROM ((((((((((Formulario1116A_Cabecera INNER JOIN Formulario1116A_Detalle ON Formulario1116A_Cabecera.IDFormulario1116A = Formulario1116A_Detalle.IDFormulario1116A) INNER JOIN Movimiento_Cereal ON Formulario1116A_Detalle.IDMovimiento_Cereal = Movimiento_Cereal.IDMovimiento_Cereal) LEFT JOIN Movimiento_Cereal_Calculo ON Movimiento_Cereal.IDMovimiento_Cereal = Movimiento_Cereal_Calculo.IDMovimiento_Cereal) INNER JOIN Localidad AS DepositanteLocalidad ON Formulario1116A_Cabecera.DepositanteDomicilioIDLocalidad = DepositanteLocalidad.IDLocalidad) INNER JOIN Provincia AS DepositanteProvincia ON DepositanteLocalidad.IDProvincia = DepositanteProvincia.IDProvincia) INNER JOIN CategoriaIVA ON Formulario1116A_Cabecera.DepositanteIDCategoriaIVA = CategoriaIVA.IDCategoriaIVA) INNER JOIN Partido AS OrigenPartido ON Formulario1116A_Cabecera.Origen_IDPartido = OrigenPartido.IDPartido) INNER JOIN Provincia AS OrigenProvincia ON OrigenPartido.IDProvincia = OrigenProvincia.IDProvincia) INNER JOIN Provincia AS LugarEntregaProvincia ON Formulario1116A_Cabecera.LugarEntregaIDProvincia = LugarEntregaProvincia.IDProvincia) INNER JOIN Cereal ON Formulario1116A_Cabecera.IDCereal = Cereal.IDCereal) INNER JOIN CondicionPago ON Formulario1116A_Cabecera.GastoIDCondicionPago = CondicionPago.IDCondicionPago
		WHERE Formulario1116A_Cabecera.IDFormulario1116A = @IDFormulario1116A
		ORDER BY Formulario1116A_Detalle.IDRemesa
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116A_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116A_Delete]
	@IDFormulario1116A int
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
	
		BEGIN TRANSACTION
	
			--ACTUALIZO EL CAMPO CERTIFICADO DE LOS Movimiento_CerealS AFECTADOS AL FORMULARIO
			UPDATE Movimiento_Cereal
				SET Movimiento_Cereal.Certificado = 0
				FROM Movimiento_Cereal INNER JOIN Formulario1116A_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario1116A_Detalle.IDMovimiento_Cereal
				WHERE Formulario1116A_Detalle.IDFormulario1116A = @IDFormulario1116A AND Movimiento_Cereal.Certificado = 1
			
			--ELIMINO EL DETALLE DE CARTAS DE PORTE DEL FORMULARIO
			DELETE
				FROM Formulario1116A_Detalle
				WHERE IDFormulario1116A = @IDFormulario1116A
			
			--ELIMINO EL FORMULARIO A
			DELETE
				FROM Formulario1116A_Cabecera
				WHERE IDFormulario1116A = @IDFormulario1116A
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Formulario1116A_Add]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Formulario1116A_Add]
	@IDFormulario1116A int OUTPUT,
	@IDFormulario1116_Talonario int,
	@FormularioNumero varchar(13),
	@Fecha smalldatetime,
	@DepositarioIDEntidad int,
	@DepositarioIDPlanta smallint,
	@DepositanteIDEntidad int,
	@DepositanteRazonSocial varchar(100),
	@DepositanteDomicilioTipo tinyint,
	@DepositanteDomicilioCalle varchar(50),
	@DepositanteDomicilioNumero varchar(10),
	@DepositanteDomicilioPiso varchar(10),
	@DepositanteDomicilioOficina varchar(10),
	@DepositanteDomicilioCodigoPostal varchar(8),
	@DepositanteDomicilioIDLocalidad int,
	@DepositanteCUIT varchar(13),
	@DepositanteIIBB varchar(20),
	@DepositanteIDCategoriaIVA tinyint,
	@IDCosecha tinyint,
	@IDCereal tinyint,
	@TarifaGastosGenerales money,
	@TarifaZarandeo money,
	@TarifaSecadoDesde decimal(3,1),
	@TarifaSecadoHasta decimal(3,1),
	@TarifaSecado money,
	@TarifaSecadoPuntoExceso money,
	@TarifaOtro money,
	@Origen_IDPartido smallint,
	@LugarEntregaDescripcion varchar(100),
	@LugarEntregaIDProvincia char(1),
	@LugarYFecha varchar(100),
	@GastoGeneral money,
	@GastoSecado money,
	@GastoZarandeo money,
	@GastoOtro money,
	@GastoIVARI money,
	@GastoIVARNI money,
	@GastoTotal money,
	@GastoIDCondicionPago smallint,
	@StringListOfIDMovimiento_Cereal varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Pos int = 0
	DECLARE @Len int
	DECLARE @Value varchar(10)
	DECLARE @Formulario_Detalle__IDRemesa tinyint = 0
	DECLARE @Formulario_Detalle__IDMovimiento_Cereal int
	
	DECLARE @Formulario_Detalle TABLE(IDRemesa int PRIMARY KEY, IDMovimiento_Cereal int NOT NULL)
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--PARSEO LOS Movimiento_CerealS Y LOS GUARDO EN UNA TABLA LOCAL
			WHILE CHARINDEX('|', @StringListOfIDMovimiento_Cereal, @Pos + 1) > 0
				BEGIN
					SET @Len = CHARINDEX('|', @StringListOfIDMovimiento_Cereal, @Pos + 1) - @Pos
					SET @Value = SUBSTRING(@StringListOfIDMovimiento_Cereal, @Pos, @Len)
					SET @Formulario_Detalle__IDMovimiento_Cereal = CAST(@Value AS int)
					SET @Formulario_Detalle__IDRemesa = @Formulario_Detalle__IDRemesa + 1
					
					INSERT INTO @Formulario_Detalle
						VALUES (@Formulario_Detalle__IDRemesa, @Formulario_Detalle__IDMovimiento_Cereal)
					
					SET @Pos = CHARINDEX('|', @StringListOfIDMovimiento_Cereal, @Pos + @Len) + 1
				END
			
			--OBTENGO EL NUEVO ID DEL FORMULARIO
			SET @IDFormulario1116A = (SELECT ISNULL(MAX(IDFormulario1116A), 0) + 1 FROM Formulario1116A_Cabecera)
			
			--AGREGO EL FORMULARIO A CON LOS TOTALES OBTENIDOS DE LOS Movimiento_CerealS
			INSERT INTO Formulario1116A_Cabecera
				(IDFormulario1116A, IDFormulario1116_Talonario, FormularioNumero, Fecha, DepositarioIDEntidad, DepositarioIDPlanta, DepositanteIDEntidad, DepositanteRazonSocial, DepositanteDomicilioTipo, DepositanteDomicilioCalle, DepositanteDomicilioNumero, DepositanteDomicilioPiso, DepositanteDomicilioOficina, DepositanteDomicilioCodigoPostal, DepositanteDomicilioIDLocalidad, DepositanteCUIT, DepositanteIIBB, DepositanteIDCategoriaIVA, IDCosecha, IDCereal, TarifaGastoGeneral, TarifaZarandeo, TarifaSecadoDesde, TarifaSecadoHasta, TarifaSecado, TarifaSecadoPuntoExceso, TarifaOtro, Origen_IDPartido, LugarEntregaDescripcion, LugarEntregaIDProvincia, LugarYFecha, PesoBruto, MermaVolatilPorcentaje, MermaVolatilKilogramo, MermaSecadoPorcentaje, MermaSecadoKilogramo, MermaZarandeoPorcentaje, MermaZarandeoKilogramo, MermaTotal, PesoNeto, GastoGeneral, GastoSecado, GastoZarandeo, GastoOtro, GastoIVARI, GastoIVARNI, GastoTotal, GastoIDCondicionPago, KilogramoAplicado)
				SELECT @IDFormulario1116A, @IDFormulario1116_Talonario, @FormularioNumero, @Fecha, @DepositarioIDEntidad, @DepositarioIDPlanta, @DepositanteIDEntidad, @DepositanteRazonSocial, @DepositanteDomicilioTipo, @DepositanteDomicilioCalle, @DepositanteDomicilioNumero, @DepositanteDomicilioPiso, @DepositanteDomicilioOficina, @DepositanteDomicilioCodigoPostal, @DepositanteDomicilioIDLocalidad, @DepositanteCUIT, @DepositanteIIBB, @DepositanteIDCategoriaIVA, @IDCosecha, @IDCereal, @TarifaGastosGenerales, @TarifaZarandeo, @TarifaSecadoDesde, @TarifaSecadoHasta, @TarifaSecado, @TarifaSecadoPuntoExceso, @TarifaOtro, @Origen_IDPartido, @LugarEntregaDescripcion, @LugarEntregaIDProvincia, @LugarYFecha, ISNULL(SUM(Movimiento_Cereal.PesoNeto), 0), ROUND(ISNULL(AVG(Movimiento_Cereal.Volatil), 0), 2), ISNULL(SUM(Movimiento_Cereal.MermaVolatilKilogramo), 0), ROUND(ISNULL(AVG(Movimiento_Cereal.MermaHumedadPorcentaje), 0), 2), ISNULL(SUM(Movimiento_Cereal.MermaHumedadKilogramo), 0), ROUND(ISNULL(AVG(Movimiento_Cereal.Zaranda), 0), 2), ISNULL(SUM(Movimiento_Cereal.MermaZarandaKilogramo), 0), ISNULL(SUM(Movimiento_Cereal.MermaVolatilKilogramo), 0) + ISNULL(SUM(Movimiento_Cereal.MermaHumedadKilogramo), 0) + ISNULL(SUM(Movimiento_Cereal.MermaZarandaKilogramo), 0), ISNULL(SUM(Movimiento_Cereal.PesoFinal), 0), @GastoGeneral, @GastoSecado, @GastoZarandeo, @GastoOtro, @GastoIVARI, @GastoIVARNI, @GastoTotal, @GastoIDCondicionPago, 0
					FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
					WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND Movimiento_Cereal.Certificado = 0
			
			--AGREGO EL DETALLE DE CARTAS DE PORTE DEL FORMULARIO
			INSERT INTO Formulario1116A_Detalle
				SELECT @IDFormulario1116A, Formulario_Detalle.IDRemesa, Formulario_Detalle.IDMovimiento_Cereal
					FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
					WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND Movimiento_Cereal.Certificado = 0
					
			--ACTUALIZO EL CAMPO CERTIFICADO DE LOS Movimiento_CerealS AFECTADOS AL FORMULARIO
			UPDATE Movimiento_Cereal
				SET Movimiento_Cereal.Certificado = 1
					FROM Movimiento_Cereal INNER JOIN @Formulario_Detalle AS Formulario_Detalle ON Movimiento_Cereal.IDMovimiento_Cereal = Formulario_Detalle.IDMovimiento_Cereal
					WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDCartaPorte_MotivoAnulacion IS NULL AND Movimiento_Cereal.Certificado = 0

		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Delete]
	@IDMovimiento_Cereal int
AS
BEGIN
	SET NOCOUNT ON;
	
	BEGIN TRY
	
		BEGIN TRANSACTION
	
			--ELIMINO LAS PESADAS ASOCIADAS AL Movimiento_Cereal
			DELETE
				FROM Movimiento_Cereal_Pesada
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
			
			--ELIMINO EL CALCULO ASOCIADO AL Movimiento_Cereal
			DELETE
				FROM Movimiento_Cereal_Calculo
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
				
			--ELIMINO EL Movimiento_Cereal
			DELETE
				FROM Movimiento_Cereal
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
	
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_CalcularTarifas]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_CalcularTarifas]
	@IDMovimiento_Cereal int
AS
BEGIN
	SET NOCOUNT ON;
	
	--VALORES DEL Movimiento_Cereal
	DECLARE @Tipo char(1)
	DECLARE @IDEntidad int
	DECLARE @IDCosecha tinyint
	DECLARE @IDCereal tinyint
	DECLARE @PesoNeto int
	DECLARE @Volatil decimal(2,2)
	DECLARE @Humedad decimal(3,1)
	DECLARE @Zaranda decimal(3,1)
	DECLARE @Fumigado bit
	
	--CEREAL
	DECLARE @MermaHumedadBase decimal(3,1)
	
	--TARIFAS
	DECLARE @TarifaParitariaImporte money
	DECLARE @TarifaSecadoTipo char(1)
	DECLARE @TarifaSecadoInicialPunto decimal(3,1)
	DECLARE @TarifaSecadoInicialImporte money
	DECLARE @TarifaSecadoPuntoExcesoImporte money
	DECLARE @TarifaSecadoHumedadBase decimal(3,1)
	DECLARE @TarifaSecadoHumedadMargenLibre decimal(1,1)
	DECLARE @TarifaSecadoHumedadRedondeoPuntoTipo char(1)
	DECLARE @TarifaZarandeoImporte money
	DECLARE @TarifaFumigadoImporte money
	DECLARE @AlmacenajeTipo char(1)
	DECLARE @AlmacenajeDiaGracia smallint
	DECLARE @AlmacenajeInicio smalldatetime
	DECLARE @AlmacenajePorcentajeMensual decimal(2,1)
	
	--CALCULOS
	DECLARE @ParitariaTarifa money = 0
	DECLARE @ParitariaImporte money = 0
	DECLARE @SecadoTarifa money = 0
	DECLARE @SecadoImporte money = 0
	DECLARE @HumedadExcesoReal decimal(3,1) = 0
	DECLARE @HumedadExcesoCalculo decimal(3,1) = 0
	DECLARE @SecadoExcesoTarifa money = 0
	DECLARE @SecadoExcesoImporte money = 0
	DECLARE @ZarandeoTarifa money = 0
	DECLARE @ZarandeoImporte money = 0
	DECLARE @FumigadoTarifa money = 0
	DECLARE @FumigadoImporte money = 0
	DECLARE @ImporteTotal money = 0
	
	BEGIN TRY
	
		BEGIN TRANSACTION

		--GUARDO LOS DATOS DEL Movimiento_Cereal
		SELECT @Tipo = Tipo, @IDCosecha = IDCosecha, @IDCereal = IDCereal, @PesoNeto = PesoNeto, @Volatil = ISNULL(Volatil, 0), @Humedad = ISNULL(Humedad, 0), @Zaranda = ISNULL(Zaranda, 0), @Fumigado = ISNULL(Fumigado, 0)
			FROM Movimiento_Cereal
			WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
		
		IF @Tipo = 'E'
			BEGIN
	
			--GUARDO LA HUMEDAD BASE DEL CEREAL
			SELECT @MermaHumedadBase = MermaHumedadBase
				FROM Cereal
				WHERE IDCereal = @IDCereal
			
			--CARGO LAS TARIFAS GENERALES
			SELECT @TarifaParitariaImporte = TarifaParitariaImporte, @TarifaSecadoTipo = TarifaSecadoTipo, @TarifaSecadoInicialPunto = TarifaSecadoInicialPunto, @TarifaSecadoInicialImporte = TarifaSecadoInicialImporte, @TarifaSecadoPuntoExcesoImporte = TarifaSecadoPuntoExcesoImporte, @TarifaSecadoHumedadBase = ISNULL(TarifaSecadoHumedadBase, @MermaHumedadBase), @TarifaSecadoHumedadMargenLibre = TarifaSecadoHumedadMargenLibre, @TarifaSecadoHumedadRedondeoPuntoTipo = TarifaSecadoHumedadRedondeoPuntoTipo, @TarifaZarandeoImporte = TarifaZarandeoImporte, @TarifaFumigadoImporte = TarifaFumigadoImporte, @AlmacenajeTipo = AlmacenajeTipo, @AlmacenajeDiaGracia = AlmacenajeDiaGracia, @AlmacenajeInicio = AlmacenajeInicio, @AlmacenajePorcentajeMensual = AlmacenajePorcentajeMensual
				FROM Cosecha_Cereal_Tarifa
				WHERE IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			
			--CARGO LAS TARIFAS POR CLIENTE
			SELECT @TarifaParitariaImporte = ISNULL(TarifaParitariaImporte, @TarifaParitariaImporte), @TarifaSecadoTipo = ISNULL(TarifaSecadoTipo, @TarifaSecadoTipo), @TarifaSecadoInicialPunto = ISNULL(TarifaSecadoInicialPunto, @TarifaSecadoInicialPunto), @TarifaSecadoInicialImporte = ISNULL(TarifaSecadoInicialImporte, @TarifaSecadoInicialImporte), @TarifaSecadoPuntoExcesoImporte = ISNULL(TarifaSecadoPuntoExcesoImporte, @TarifaSecadoPuntoExcesoImporte), @TarifaSecadoHumedadBase = ISNULL(TarifaSecadoHumedadBase, @TarifaSecadoHumedadBase), @TarifaSecadoHumedadMargenLibre = ISNULL(TarifaSecadoHumedadMargenLibre, @TarifaSecadoHumedadMargenLibre), @TarifaSecadoHumedadRedondeoPuntoTipo = ISNULL(TarifaSecadoHumedadRedondeoPuntoTipo, @TarifaSecadoHumedadRedondeoPuntoTipo), @TarifaZarandeoImporte = ISNULL(TarifaZarandeoImporte, @TarifaZarandeoImporte), @TarifaFumigadoImporte = ISNULL(TarifaFumigadoImporte, @TarifaFumigadoImporte), @AlmacenajeTipo = ISNULL(AlmacenajeTipo, @AlmacenajeTipo), @AlmacenajeDiaGracia = ISNULL(AlmacenajeDiaGracia, @AlmacenajeDiaGracia), @AlmacenajeInicio = ISNULL(AlmacenajeInicio, @AlmacenajeInicio), @AlmacenajePorcentajeMensual = ISNULL(AlmacenajePorcentajeMensual, @AlmacenajePorcentajeMensual)
				FROM Entidad_Cosecha_Cereal_Tarifa
				WHERE IDEntidad = @IDEntidad AND IDCosecha = @IDCosecha AND IDCereal = @IDCereal
			
			--VERIFICO LOS VALORES DE LAS TARIFAS POR SI HAY NULLS
			SELECT @TarifaParitariaImporte = ISNULL(@TarifaParitariaImporte, 0), @TarifaSecadoInicialPunto = ISNULL(@TarifaSecadoInicialPunto, 0), @TarifaSecadoInicialImporte = ISNULL(@TarifaSecadoInicialImporte, 0), @TarifaSecadoPuntoExcesoImporte = ISNULL(@TarifaSecadoPuntoExcesoImporte, 0), @TarifaSecadoHumedadBase = ISNULL(@TarifaSecadoHumedadBase, 0), @TarifaSecadoHumedadMargenLibre = ISNULL(@TarifaSecadoHumedadMargenLibre, 0), @TarifaZarandeoImporte = ISNULL(@TarifaZarandeoImporte, 0), @TarifaFumigadoImporte = ISNULL(@TarifaFumigadoImporte, 0), @AlmacenajeDiaGracia = ISNULL(@AlmacenajeDiaGracia, 0), @AlmacenajePorcentajeMensual = ISNULL(@AlmacenajePorcentajeMensual, 0)
			
			--CALCULO LA PARITARIA
			SET @ParitariaTarifa = ISNULL(@TarifaParitariaImporte, 0)
			SET @ParitariaImporte = ROUND((@PesoNeto / 100) * @ParitariaTarifa, 2)
			
			--CALCULO EL SECADO
			IF @Humedad > (@TarifaSecadoHumedadBase + @TarifaSecadoHumedadMargenLibre)
				BEGIN
				--SECADO INICIAL
				SET @SecadoTarifa = ISNULL(@TarifaSecadoInicialImporte, 0)
				SET @SecadoImporte = ROUND((@PesoNeto / 100) * @SecadoTarifa, 2)
				--SECADO PUNTO EXCESO
				SET @HumedadExcesoReal = ISNULL((@Humedad - @MermaHumedadBase), 0)
				IF @Humedad <= (@TarifaSecadoHumedadBase + @TarifaSecadoHumedadMargenLibre)
					BEGIN
					SET @HumedadExcesoCalculo = 0
					END
				ELSE
					BEGIN
					SET @HumedadExcesoCalculo = ISNULL((@Humedad - (@TarifaSecadoHumedadBase + @TarifaSecadoHumedadMargenLibre)), 0)
					END
				--SECADO PUNTO EXCESO - REDONDEO
				SET @HumedadExcesoCalculo =
					(CASE @TarifaSecadoHumedadRedondeoPuntoTipo
						--NINGUNO
						WHEN 'N' THEN @HumedadExcesoCalculo
						--TRUNCAR
						WHEN 'T' THEN ROUND(@HumedadExcesoCalculo, 0, 1)
						--CONVERTIR AL ENTERO SIGUIENTE
						WHEN 'E' THEN CEILING(@HumedadExcesoCalculo)
						--REDONDEAR
						WHEN 'R' THEN ROUND(@HumedadExcesoCalculo, 0)
					END)
				--DETERMINO LA TARIFA SEGÚN SI UTILIZA ESCALA O NO
				IF @TarifaSecadoTipo = 'F'
					BEGIN
					--TARIFA FIJA
					SET @SecadoExcesoTarifa = ISNULL(@TarifaSecadoPuntoExcesoImporte, 0)
					END
				IF @TarifaSecadoTipo = 'E'
					BEGIN
					--TARIFA ESCALA COMPLETA
					SET @SecadoExcesoTarifa = (SELECT TOP 1 TarifaSecadoPuntoExceso
						FROM Cosecha_Cereal_TarifaEscala
						WHERE IDCosecha = @IDCosecha AND IDCereal = @IDCereal AND HumedadExcesoInicio <= (@Humedad - (@TarifaSecadoHumedadBase + @TarifaSecadoHumedadMargenLibre))
						ORDER BY HumedadExcesoInicio DESC)
					END
				IF @TarifaSecadoTipo = 'P'
					BEGIN
					--TARIFA ESCALA POR PUNTO
					SET @SecadoExcesoTarifa = 0
					END
				SET @SecadoExcesoImporte = ROUND((@PesoNeto / 100) * @HumedadExcesoCalculo * @SecadoExcesoTarifa, 2)
				END

			--CALCULO EL ZARANDEO
			IF @Zaranda > 0
				BEGIN
				SET @ZarandeoTarifa = ISNULL(@TarifaZarandeoImporte, 0)
				SET @ZarandeoImporte = ROUND((@PesoNeto / 100) * @ZarandeoTarifa, 2)
				END

			--CALCULO EL FUMIGADO
			IF @Fumigado > 0
				BEGIN
				SET @FumigadoTarifa = ISNULL(@TarifaFumigadoImporte, 0)
				SET @FumigadoImporte = ROUND((@PesoNeto / 100) * @FumigadoTarifa, 2)
				END
				
			--TOTAL GENERAL
			SET @ImporteTotal = @ParitariaImporte + @SecadoImporte + @SecadoExcesoImporte + @ZarandeoImporte + @FumigadoImporte

			--AGREGO O ACTUALIZO EL CALCULO SEGUN SI YA EXISTE EL REGISTRO O NO
			IF (SELECT COUNT(*) FROM Movimiento_Cereal_Calculo WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal) = 0
				BEGIN
				INSERT INTO Movimiento_Cereal_Calculo
					(IDMovimiento_Cereal, ParitariaTarifa, ParitariaImporte, SecadoTarifa, SecadoImporte, HumedadExcesoReal, HumedadExcesoCalculo, SecadoExcesoTarifa, SecadoExcesoImporte, ZarandeoTarifa, ZarandeoImporte, FumigadoTarifa, FumigadoImporte, ImporteTotal)
					VALUES (@IDMovimiento_Cereal, @ParitariaTarifa, @ParitariaImporte, @SecadoTarifa, @SecadoImporte, @HumedadExcesoReal, @HumedadExcesoCalculo, @SecadoExcesoTarifa, @SecadoExcesoImporte, @ZarandeoTarifa, @ZarandeoImporte, @FumigadoTarifa, @FumigadoImporte, @ImporteTotal)
				END
			ELSE
				BEGIN
				UPDATE Movimiento_Cereal_Calculo
					SET ParitariaTarifa = @ParitariaTarifa, ParitariaImporte = @ParitariaImporte, SecadoTarifa = @SecadoTarifa, SecadoImporte = @SecadoImporte, HumedadExcesoReal = @HumedadExcesoReal, HumedadExcesoCalculo = @HumedadExcesoCalculo, SecadoExcesoTarifa = @SecadoExcesoTarifa, SecadoExcesoImporte = @SecadoExcesoImporte, ZarandeoTarifa = @ZarandeoTarifa, ZarandeoImporte = @ZarandeoImporte, FumigadoTarifa = @FumigadoTarifa, FumigadoImporte = @FumigadoImporte, ImporteTotal = @ImporteTotal
					WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
				END
				
			END
		
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Add]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Add]
	@IDMovimiento_Cereal int OUTPUT,
	@Tipo char(1),
	@ComprobanteNumero varchar(12),
	@IDCartaPorte_Talonario int,
	@CTGNumero int,
	@FechaCarga smalldatetime,
	@IDEntidad_Titular int,
	@IDEntidad_Intermediario int,
	@IDEntidad_RemitenteComercial int,
	@IDEntidad_Corredor int,
	@IDEntidad_Entregador int,
	@IDEntidad_Destinatario int,
	@IDEntidad_Destino int,
	@IDEntidad_Transportista int,
	@IDEntidad_Chofer int,
	@IDCosecha int,
	@IDCereal int,
	@ContratoNumero varchar(20),
	@PesoBruto int,
	@PesoTara int,
	@PesoNeto int,
	@Volatil decimal(2,2),
	@Humedad decimal(3,1),
	@Zaranda decimal(3,1),
	@IDOrigenDestino_Origen smallint,
	@IDOrigenDestino_Destino smallint,
	@CTGCancelacion int,
	@TransporteDominioCamion char(6),
	@TransporteDominioAcoplado char(6),
	@TransporteKilometro smallint,
	@TransporteTarifaReferencia money,
	@TransporteTarifa money,
	@FechaHoraArribo smalldatetime,
	@FechaHoraDescarga smalldatetime,
	@IDCartaPorte_MotivoAnulacion tinyint,
	@Notas varchar(1000),
	@EsIntacta bit,
	@StringListOfIDPesadaCompleta varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SeparatorPos int = 0
	DECLARE @DelimiterPosStart int = 0
	DECLARE @DelimiterPosEnd int = 0
	DECLARE @ValuePairLen int
	DECLARE @ValuePair varchar(25)
	
	DECLARE @Movimiento_Cereal_Pesada__IDPesada int
	DECLARE @Movimiento_Cereal_Pesada__PesoNeto int
	DECLARE @Movimiento_Cereal_Pesada__Humedad decimal(3,1)
	DECLARE @Movimiento_Cereal_Pesada__Zaranda decimal(3,1)
	
	DECLARE @Movimiento_Cereal_Pesada TABLE(IDPesada int PRIMARY KEY, PesoNeto int NULL, Humedad decimal(3,1) NULL, Zaranda decimal(3,1) NULL)
	
	DECLARE @Certificado bit
	DECLARE @KilogramoAplicado int
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--PARSEO LAS PESADAS Y LAS GUARDO EN UNA TABLA LOCAL
			WHILE CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + 1) > 0
				BEGIN
					SET @ValuePairLen = CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + 1) - @SeparatorPos
					SET @ValuePair = SUBSTRING(@StringListOfIDPesadaCompleta, @SeparatorPos, @ValuePairLen)
					
					--ID PESADA
					SET @DelimiterPosStart = CHARINDEX('¬', @ValuePair, 1)
					IF @DelimiterPosStart > 0
						SET @Movimiento_Cereal_Pesada__IDPesada = CAST(SUBSTRING(@ValuePair, 1, @DelimiterPosStart - 1) AS int)
					
					--PESO NETO
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) = 'NULL'
						SET @Movimiento_Cereal_Pesada__PesoNeto = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__PesoNeto = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) AS int)
					
					--HUMEDAD
					SET @DelimiterPosStart = @DelimiterPosEnd
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) = 'NULL'
						SET @Movimiento_Cereal_Pesada__Humedad = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__Humedad = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) AS decimal(3,1))
					
					--ZARANDA
					SET @DelimiterPosStart = @DelimiterPosEnd
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 25) = 'NULL'
						SET @Movimiento_Cereal_Pesada__Zaranda = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__Zaranda = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 25) AS decimal(3,1))
					
					INSERT INTO @Movimiento_Cereal_Pesada
						VALUES (@Movimiento_Cereal_Pesada__IDPesada, @Movimiento_Cereal_Pesada__PesoNeto, @Movimiento_Cereal_Pesada__Humedad, @Movimiento_Cereal_Pesada__Zaranda)
					
					SET @SeparatorPos = CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + @ValuePairLen) + 1
				END
			
			--OBTENGO EL NUEVO ID DEL Movimiento_Cereal
			SET @IDMovimiento_Cereal = (SELECT ISNULL(MAX(IDMovimiento_Cereal), 0) + 1 FROM Movimiento_Cereal)
			
			--PREPARO LAS VARIABLES CORRESPONDIENTES
			IF @Tipo = 'E'
				BEGIN
				SET @Certificado = 0
				SET @KilogramoAplicado = NULL
				END
			IF @Tipo = 'S'
				BEGIN
				SET @Volatil = NULL
				SET @Humedad = NULL
				SET @Zaranda = NULL
				SET @FechaHoraArribo = NULL
				SET @FechaHoraDescarga = NULL
				SET @Certificado = NULL
				SET @KilogramoAplicado = 0
				END
			IF @Tipo = 'T' OR @Tipo = 'P' OR @Tipo = 'B' OR @Tipo = 'U'
				BEGIN
				SET @IDCartaPorte_Talonario = NULL
				SET @CTGNumero = NULL
				SET @IDEntidad_Intermediario = NULL
				SET @IDEntidad_RemitenteComercial = NULL
				SET @IDEntidad_Corredor = NULL
				SET @IDEntidad_Entregador = NULL
				SET @IDEntidad_Destinatario = NULL
				SET @IDEntidad_Transportista = NULL
				SET @IDEntidad_Chofer = NULL
				SET @ContratoNumero = NULL
				SET @Volatil = NULL
				SET @Humedad = NULL
				SET @Zaranda = NULL
				SET @CTGCancelacion = NULL
				SET @TransporteDominioCamion = NULL
				SET @TransporteDominioAcoplado = NULL
				SET @TransporteKilometro = NULL
				SET @TransporteTarifaReferencia = NULL
				SET @TransporteTarifa = NULL
				SET @FechaHoraArribo = NULL
				SET @FechaHoraDescarga = NULL
				SET @IDCartaPorte_MotivoAnulacion = NULL
				SET @Certificado = NULL
				SET @KilogramoAplicado = NULL
				END
			
			--AGREGO EL Movimiento_Cereal
			INSERT INTO Movimiento_Cereal
				(IDMovimiento_Cereal, Tipo, ComprobanteNumero, IDCartaPorte_Talonario, CTGNumero, FechaCarga, IDEntidad_Titular, IDEntidad_Intermediario, IDEntidad_RemitenteComercial, IDEntidad_Corredor, IDEntidad_Entregador, IDEntidad_Destinatario, IDEntidad_Destino, IDEntidad_Transportista, IDEntidad_Chofer, IDCosecha, IDCereal, ContratoNumero, PesoBruto, PesoTara, PesoNeto, Volatil, Humedad, Zaranda, IDOrigenDestino_Origen, IDOrigenDestino_Destino, CTGCancelacion, TransporteDominioCamion, TransporteDominioAcoplado, TransporteKilometro, TransporteTarifaReferencia, TransporteTarifa, FechaHoraArribo, FechaHoraDescarga, IDCartaPorte_MotivoAnulacion, Notas, EsIntacta, FechaHoraCreacion, FechaHoraModificacion, FechaHoraLiquidacionServicio, Certificado, KilogramoAplicado)
				VALUES (@IDMovimiento_Cereal, @Tipo, @ComprobanteNumero, @IDCartaPorte_Talonario, @CTGNumero, @FechaCarga, @IDEntidad_Titular, @IDEntidad_Intermediario, @IDEntidad_RemitenteComercial, @IDEntidad_Corredor, @IDEntidad_Entregador, @IDEntidad_Destinatario, @IDEntidad_Destino, @IDEntidad_Transportista, @IDEntidad_Chofer, @IDCosecha, @IDCereal, @ContratoNumero, @PesoBruto, @PesoTara, @PesoNeto, @Volatil, @Humedad, @Zaranda, @IDOrigenDestino_Origen, @IDOrigenDestino_Destino, @CTGCancelacion, @TransporteDominioCamion, @TransporteDominioAcoplado, @TransporteKilometro, @TransporteTarifaReferencia, @TransporteTarifa, @FechaHoraArribo, @FechaHoraDescarga, @IDCartaPorte_MotivoAnulacion, @Notas, @EsIntacta, GETDATE(), GETDATE(), NULL, @Certificado, @KilogramoAplicado)
			
			--CALCULO LAS MERMAS
			EXEC usp_Movimiento_Cereal_UpdateMerma @IDMovimiento_Cereal
			
			--AGREGO EL DETALLE DE PESADAS
			INSERT INTO Movimiento_Cereal_Pesada
				(IDMovimiento_Cereal, IDPesada, PesoNeto, Humedad, Zaranda)
				SELECT @IDMovimiento_Cereal, IDPesada, PesoNeto, Humedad, Zaranda
					FROM @Movimiento_Cereal_Pesada
					
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_Update]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_Update]
	@IDMovimiento_Cereal int,
	@ComprobanteNumero varchar(12),
	@IDCartaPorte_Talonario int,
	@CTGNumero int,
	@FechaCarga smalldatetime,
	@IDEntidad_Titular int,
	@IDEntidad_Intermediario int,
	@IDEntidad_RemitenteComercial int,
	@IDEntidad_Corredor int,
	@IDEntidad_Entregador int,
	@IDEntidad_Destinatario int,
	@IDEntidad_Destino int,
	@IDEntidad_Transportista int,
	@IDEntidad_Chofer int,
	@IDCosecha int,
	@IDCereal int,
	@ContratoNumero varchar(20),
	@PesoBruto int,
	@PesoTara int,
	@PesoNeto int,
	@Volatil decimal(2,2),
	@Humedad decimal(3,1),
	@Zaranda decimal(3,1),
	@IDOrigenDestino_Origen smallint,
	@IDOrigenDestino_Destino smallint,
	@CTGCancelacion int,
	@TransporteDominioCamion char(6),
	@TransporteDominioAcoplado char(6),
	@TransporteKilometro smallint,
	@TransporteTarifaReferencia money,
	@TransporteTarifa money,
	@FechaHoraArribo smalldatetime,
	@FechaHoraDescarga smalldatetime,
	@IDCartaPorte_MotivoAnulacion tinyint,
	@Notas varchar(1000),
	@EsIntacta bit,
	@StringListOfIDPesadaCompleta varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SeparatorPos int = 0
	DECLARE @DelimiterPosStart int = 0
	DECLARE @DelimiterPosEnd int = 0
	DECLARE @ValuePairLen int
	DECLARE @ValuePair varchar(25)
	
	DECLARE @Movimiento_Cereal_Pesada__IDPesada int
	DECLARE @Movimiento_Cereal_Pesada__PesoNeto int
	DECLARE @Movimiento_Cereal_Pesada__Humedad decimal(3,1)
	DECLARE @Movimiento_Cereal_Pesada__Zaranda decimal(3,1)
	
	DECLARE @Movimiento_Cereal_Pesada TABLE(IDPesada int PRIMARY KEY, PesoNeto int NULL, Humedad decimal(3,1) NULL, Zaranda decimal(3,1) NULL)
	
	DECLARE @Certificado bit
	DECLARE @KilogramoAplicado int
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--PARSEO LAS PESADAS Y LAS GUARDO EN UNA TABLA LOCAL
			WHILE CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + 1) > 0
				BEGIN
					SET @ValuePairLen = CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + 1) - @SeparatorPos
					SET @ValuePair = SUBSTRING(@StringListOfIDPesadaCompleta, @SeparatorPos, @ValuePairLen)
					
					--ID PESADA
					SET @DelimiterPosStart = CHARINDEX('¬', @ValuePair, 1)
					IF @DelimiterPosStart > 0
						SET @Movimiento_Cereal_Pesada__IDPesada = CAST(SUBSTRING(@ValuePair, 1, @DelimiterPosStart - 1) AS int)
					
					--PESO NETO
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) = 'NULL'
						SET @Movimiento_Cereal_Pesada__PesoNeto = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__PesoNeto = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) AS int)
					
					--HUMEDAD
					SET @DelimiterPosStart = @DelimiterPosEnd
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) = 'NULL'
						SET @Movimiento_Cereal_Pesada__Humedad = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__Humedad = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) AS decimal(3,1))
					
					--ZARANDA
					SET @DelimiterPosStart = @DelimiterPosEnd
					IF SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 25) = 'NULL'
						SET @Movimiento_Cereal_Pesada__Zaranda = NULL
					ELSE
						SET @Movimiento_Cereal_Pesada__Zaranda = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 25) AS decimal(3,1))
					
					INSERT INTO @Movimiento_Cereal_Pesada
						VALUES (@Movimiento_Cereal_Pesada__IDPesada, @Movimiento_Cereal_Pesada__PesoNeto, @Movimiento_Cereal_Pesada__Humedad, @Movimiento_Cereal_Pesada__Zaranda)
					
					SET @SeparatorPos = CHARINDEX('|', @StringListOfIDPesadaCompleta, @SeparatorPos + @ValuePairLen) + 1
				END
			
			--ACTUALIZO EL Movimiento_Cereal
			UPDATE Movimiento_Cereal
				SET ComprobanteNumero = @ComprobanteNumero, IDCartaPorte_Talonario = @IDCartaPorte_Talonario, CTGNumero = @CTGNumero, FechaCarga = @FechaCarga, IDEntidad_Titular = @IDEntidad_Titular, IDEntidad_Intermediario = @IDEntidad_Intermediario, IDEntidad_RemitenteComercial = @IDEntidad_RemitenteComercial, IDEntidad_Corredor = @IDEntidad_Corredor, IDEntidad_Entregador = @IDEntidad_Entregador, IDEntidad_Destinatario = @IDEntidad_Destinatario, IDEntidad_Destino = @IDEntidad_Destino, IDEntidad_Transportista = @IDEntidad_Transportista, IDEntidad_Chofer = @IDEntidad_Chofer, IDCosecha = @IDCosecha, IDCereal = @IDCereal, ContratoNumero = @ContratoNumero, PesoBruto = @PesoBruto, PesoTara = @PesoTara, PesoNeto = @PesoNeto, Volatil = @Volatil, Humedad = @Humedad, Zaranda = @Zaranda, IDOrigenDestino_Origen = @IDOrigenDestino_Origen, IDOrigenDestino_Destino = @IDOrigenDestino_Destino, CTGCancelacion = @CTGCancelacion, TransporteDominioCamion = @TransporteDominioCamion, TransporteDominioAcoplado = @TransporteDominioAcoplado, TransporteKilometro = @TransporteKilometro, TransporteTarifaReferencia = @TransporteTarifaReferencia, TransporteTarifa = @TransporteTarifa, FechaHoraArribo = @FechaHoraArribo, FechaHoraDescarga = @FechaHoraDescarga, IDCartaPorte_MotivoAnulacion = @IDCartaPorte_MotivoAnulacion, Notas = @Notas, EsIntacta = @EsIntacta, FechaHoraModificacion = GETDATE()
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
			
			--CALCULO LAS MERMAS
			EXEC usp_Movimiento_Cereal_UpdateMerma @IDMovimiento_Cereal
			
			--ACTUALIZO EL DETALLE DE PESADAS
			--(ELIMINO Y VUELVO A AGREGAR), AUNQUE NO ES LO MÁS EFICIENTE, ES LO MÁS SIMPLE
			DELETE
				FROM Movimiento_Cereal_Pesada
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal
				
			INSERT INTO Movimiento_Cereal_Pesada
				(IDMovimiento_Cereal, IDPesada, PesoNeto, Humedad, Zaranda)
				SELECT @IDMovimiento_Cereal, IDPesada, PesoNeto, Humedad, Zaranda
					FROM @Movimiento_Cereal_Pesada
		
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_SubProducto_Detalle_Update]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_SubProducto_Detalle_Update]
	@IDMovimiento_SubProducto int, 
	@Linea tinyint, 
	@IDSubProducto tinyint, 
	@Porcentaje decimal(5), 
	@Kilogramo int, 
	@PrecioToneladaDolar money, 
	@PrecioToneladaPeso money 
AS

BEGIN
	SET NOCOUNT ON;

	UPDATE Movimiento_SubProducto_Detalle
		SET IDSubProducto = @IDSubProducto, Porcentaje = @Porcentaje, Kilogramo = @Kilogramo, PrecioToneladaDolar = @PrecioToneladaDolar, PrecioToneladaPeso = @PrecioToneladaPeso
		WHERE IDMovimiento_SubProducto = @IDMovimiento_SubProducto AND Linea = @Linea 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_SubProducto_Detalle_Get]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_SubProducto_Detalle_Get]
	@IDMovimiento_SubProducto int, 
	@Linea tinyint 
AS

BEGIN
	SET NOCOUNT ON;

	SELECT Movimiento_SubProducto_Detalle.IDMovimiento_SubProducto, Movimiento_SubProducto_Detalle.Linea, Movimiento_SubProducto_Detalle.IDSubProducto, Movimiento_SubProducto_Detalle.Porcentaje, Movimiento_SubProducto_Detalle.Kilogramo, Movimiento_SubProducto_Detalle.PrecioToneladaDolar, Movimiento_SubProducto_Detalle.PrecioToneladaPeso
		FROM Movimiento_SubProducto_Detalle
		WHERE Movimiento_SubProducto_Detalle.IDMovimiento_SubProducto = @IDMovimiento_SubProducto AND Movimiento_SubProducto_Detalle.Linea = @Linea 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_SubProducto_Detalle_Delete]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_SubProducto_Detalle_Delete] 
	@IDMovimiento_SubProducto int, 
	@Linea tinyint AS
	
BEGIN
	SET NOCOUNT ON;

	DELETE
		FROM Movimiento_SubProducto_Detalle
		WHERE IDMovimiento_SubProducto = @IDMovimiento_SubProducto AND Linea = @Linea 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_SubProducto_Detalle_Add]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_SubProducto_Detalle_Add]
	@IDMovimiento_SubProducto int OUTPUT, 
	@Linea tinyint OUTPUT, 
	@IDSubProducto tinyint, 
	@Porcentaje decimal(5), 
	@Kilogramo int, 
	@PrecioToneladaDolar money, 
	@PrecioToneladaPeso money 
AS

BEGIN
	SET NOCOUNT ON;

	SET @IDMovimiento_SubProducto = (SELECT ISNULL(MAX(Movimiento_SubProducto_Detalle.IDMovimiento_SubProducto), 0) + 1 FROM Movimiento_SubProducto_Detalle)
	SET @Linea = (SELECT ISNULL(MAX(Movimiento_SubProducto_Detalle.Linea), 0) + 1 FROM Movimiento_SubProducto_Detalle)

	INSERT INTO Movimiento_SubProducto_Detalle
		(IDMovimiento_SubProducto, Linea, IDSubProducto, Porcentaje, Kilogramo, PrecioToneladaDolar, PrecioToneladaPeso )
		VALUES (@IDMovimiento_SubProducto, @Linea, @IDSubProducto, @Porcentaje, @Kilogramo, @PrecioToneladaDolar, @PrecioToneladaPeso )

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Cereal_A_SubProducto]    Script Date: 11/06/2013 20:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Movimiento_Cereal_A_SubProducto]
	@IDMovimiento_Cereal int,
	@StringListOfIDSubProductoPorcentajeAndKilogramo varchar(1000)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SeparatorPos int = 0
	DECLARE @DelimiterPosStart int = 0
	DECLARE @DelimiterPosEnd int = 0
	DECLARE @ValuePairLen int
	DECLARE @ValuePair varchar(25)
	
	DECLARE @Fecha smalldatetime
	DECLARE @IDEntidad_Titular int
	DECLARE @IDOrigenDestino_Origen smallint
	
	DECLARE @IDMovimiento_SubProducto int
	DECLARE @ComprobanteNumero varchar(13)
	
	DECLARE @Linea tinyint
	DECLARE @IDSubProducto tinyint = 0
	DECLARE @Porcentaje decimal(5,2)
	DECLARE @Kilogramo int
	
	BEGIN TRY
	
		BEGIN TRANSACTION
			--OBTENGO LOS DATOS DEL MOVIMIENTO CEREAL
			SELECT @Fecha = FechaCarga, @IDEntidad_Titular = IDEntidad_Titular, @IDOrigenDestino_Origen = IDOrigenDestino_Origen
				FROM Movimiento_Cereal
				WHERE IDMovimiento_Cereal = @IDMovimiento_Cereal

			--OBTENGO EL NUEVO ID DEL MOVIMIENTO DE ENTRADA
			SET @IDMovimiento_SubProducto = (SELECT ISNULL(MAX(IDMovimiento_SubProducto), 0) + 1 FROM Movimiento_SubProducto WHERE Tipo = 'E')

			--OBTENGO EL NÚMERO DE COMPROBANTE
			SET @ComprobanteNumero = (SELECT ISNULL(CAST(MAX(ComprobanteNumero) as int), 0) + 1 FROM Movimiento_SubProducto WHERE Tipo = 'E')
			SET @ComprobanteNumero = REPLICATE('0', 12 - DATALENGTH(@ComprobanteNumero)) + @ComprobanteNumero

			--INSERTO EL MOVIMIENTO
			INSERT INTO Movimiento_SubProducto
				(IDMovimiento_SubProducto, Tipo, ComprobanteNumero, Fecha, IDEntidad_Titular, IDOrigenDestino_Origen, IDMovimiento_Cereal, FechaHoraCreacion, FechaHoraModificacion)
				VALUES (@IDMovimiento_SubProducto, 'E', @ComprobanteNumero, @Fecha, @IDEntidad_Titular, @IDOrigenDestino_Origen, @IDMovimiento_Cereal, GETDATE(), GETDATE())
		
			--PARSEO LOS ITEMS Y LOS AGREGO A LA TABLA DE MOVIMIENTOS DE SUBPRODUCTOS
			WHILE CHARINDEX('|', @StringListOfIDSubProductoPorcentajeAndKilogramo, @SeparatorPos + 1) > 0
				BEGIN				
					SET @ValuePairLen = CHARINDEX('|', @StringListOfIDSubProductoPorcentajeAndKilogramo, @SeparatorPos + 1) - @SeparatorPos
					SET @ValuePair = SUBSTRING(@StringListOfIDSubProductoPorcentajeAndKilogramo, @SeparatorPos, @ValuePairLen)
					
					--LÍNEA
					SET @Linea = (SELECT ISNULL(MAX(Linea), 0) + 1 FROM Movimiento_SubProducto_Detalle WHERE IDMovimiento_SubProducto = @IDMovimiento_SubProducto)
					
					--ID SUB PRODUCTO
					SET @DelimiterPosStart = CHARINDEX('¬', @ValuePair, 1)
					IF @DelimiterPosStart > 0
						SET @IDSubProducto = CAST(SUBSTRING(@ValuePair, 1, @DelimiterPosStart - 1) AS tinyint)
					
					--PORCENTAJE
					SET @DelimiterPosEnd = CHARINDEX('¬', @ValuePair, @DelimiterPosStart + 1)
					SET @Porcentaje = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, (@DelimiterPosEnd - @DelimiterPosStart - 1)) AS int)
					
					--KILOGRAMO
					SET @DelimiterPosStart = @DelimiterPosEnd
					SET @Kilogramo = CAST(SUBSTRING(@ValuePair, @DelimiterPosStart + 1, 10) AS int)
					
					--INSERTO EL DETALLE DEL MOVIMIENTO
					INSERT INTO Movimiento_SubProducto_Detalle
						(IDMovimiento_SubProducto, Linea, IDSubProducto, Porcentaje, Kilogramo)
						VALUES (@IDMovimiento_SubProducto, @Linea, @IDSubProducto, @Porcentaje, @Kilogramo)
					
					SET @SeparatorPos = CHARINDEX('|', @StringListOfIDSubProductoPorcentajeAndKilogramo, @SeparatorPos + @ValuePairLen) + 1
				END
		COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();

		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
	END CATCH
END
GO
/****** Object:  Default [DF__Cereal__Activo__0519C6AF]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Cereal] ADD  CONSTRAINT [DF__Cereal__Activo__0519C6AF]  DEFAULT ((0)) FOR [Activo]
GO
/****** Object:  Default [DF__Categoria__Activ__7F60ED59]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[CategoriaIVA] ADD  CONSTRAINT [DF__Categoria__Activ__7F60ED59]  DEFAULT ((0)) FOR [Activo]
GO
/****** Object:  Default [DF__Entidad__EsTitul__1A14E395]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsTitul__1A14E395]  DEFAULT ((0)) FOR [EsTitular]
GO
/****** Object:  Default [DF__Entidad__EsInter__1B0907CE]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsInter__1B0907CE]  DEFAULT ((0)) FOR [EsIntermediario]
GO
/****** Object:  Default [DF__Entidad__EsRemit__1BFD2C07]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsRemit__1BFD2C07]  DEFAULT ((0)) FOR [EsRemitenteComercial]
GO
/****** Object:  Default [DF__Entidad__EsCorre__1CF15040]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsCorre__1CF15040]  DEFAULT ((0)) FOR [EsCorredor]
GO
/****** Object:  Default [DF__Entidad__EsEntre__1DE57479]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsEntre__1DE57479]  DEFAULT ((0)) FOR [EsEntregador]
GO
/****** Object:  Default [DF__Entidad__EsDesti__1ED998B2]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsDesti__1ED998B2]  DEFAULT ((0)) FOR [EsDestinatario]
GO
/****** Object:  Default [DF__Entidad__EsDesti__1FCDBCEB]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsDesti__1FCDBCEB]  DEFAULT ((0)) FOR [EsDestino]
GO
/****** Object:  Default [DF__Entidad__EsTrans__20C1E124]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsTrans__20C1E124]  DEFAULT ((0)) FOR [EsTransportista]
GO
/****** Object:  Default [DF__Entidad__EsChofe__21B6055D]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__EsChofe__21B6055D]  DEFAULT ((0)) FOR [EsChofer]
GO
/****** Object:  Default [DF__Entidad__Activo__22AA2996]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF__Entidad__Activo__22AA2996]  DEFAULT ((0)) FOR [Activo]
GO
/****** Object:  Default [DF__FleteTabl__Activ__5070F446]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[FleteTabla] ADD  CONSTRAINT [DF__FleteTabl__Activ__5070F446]  DEFAULT ((1)) FOR [Activo]
GO
/****** Object:  Default [DF__Cosecha__Activo__0DAF0CB0]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Cosecha] ADD  CONSTRAINT [DF__Cosecha__Activo__0DAF0CB0]  DEFAULT ((0)) FOR [Activo]
GO
/****** Object:  Default [DF__Parametro__SiNo__47DBAE45]    Script Date: 11/06/2013 20:47:42 ******/
ALTER TABLE [dbo].[Parametro] ADD  CONSTRAINT [DF__Parametro__SiNo__47DBAE45]  DEFAULT ((0)) FOR [SiNo]
GO
/****** Object:  Default [DF__Formulari__Inscr__6383C8BA]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116B_Cabecera] ADD  CONSTRAINT [DF__Formulari__Inscr__6383C8BA]  DEFAULT ((0)) FOR [DepositanteGanancia_Inscripto]
GO
/****** Object:  Default [DF__Formulari__Actuo__628FA481]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116B_Cabecera] ADD  CONSTRAINT [DF__Formulari__Actuo__628FA481]  DEFAULT ((0)) FOR [ActuoCorredor]
GO
/****** Object:  Check [CK Entidad_Domicilio Tipo]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Domicilio]  WITH CHECK ADD  CONSTRAINT [CK Entidad_Domicilio Tipo] CHECK  (([Tipo]=(1) OR [Tipo]=(2)))
GO
ALTER TABLE [dbo].[Entidad_Domicilio] CHECK CONSTRAINT [CK Entidad_Domicilio Tipo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'El valor especificado entra en conflicto con el conjunto de reglas de validación del campo ''Tipo''.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_Domicilio', @level2type=N'CONSTRAINT',@level2name=N'CK Entidad_Domicilio Tipo'
GO
/****** Object:  ForeignKey [Cosecha_Cereal_Tarifa_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Cosecha_Cereal_Tarifa]  WITH CHECK ADD  CONSTRAINT [Cosecha_Cereal_Tarifa_FK00] FOREIGN KEY([IDCereal])
REFERENCES [dbo].[Cereal] ([IDCereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Cosecha_Cereal_Tarifa] CHECK CONSTRAINT [Cosecha_Cereal_Tarifa_FK00]
GO
/****** Object:  ForeignKey [FK__Cosecha__Cosecha_Cereal_Tarifa]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Cosecha_Cereal_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK__Cosecha__Cosecha_Cereal_Tarifa] FOREIGN KEY([IDCosecha])
REFERENCES [dbo].[Cosecha] ([IDCosecha])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Cosecha_Cereal_Tarifa] CHECK CONSTRAINT [FK__Cosecha__Cosecha_Cereal_Tarifa]
GO
/****** Object:  ForeignKey [FK__SubProducto__SubProducto_Grupo_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[SubProducto_Grupo_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__SubProducto__SubProducto_Grupo_Detalle] FOREIGN KEY([IDSubProducto])
REFERENCES [dbo].[SubProducto] ([IDSubProducto])
GO
ALTER TABLE [dbo].[SubProducto_Grupo_Detalle] CHECK CONSTRAINT [FK__SubProducto__SubProducto_Grupo_Detalle]
GO
/****** Object:  ForeignKey [FK__SubProducto_Grupo__SubProducto_Grupo_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[SubProducto_Grupo_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__SubProducto_Grupo__SubProducto_Grupo_Detalle] FOREIGN KEY([IDSubProducto_Grupo])
REFERENCES [dbo].[SubProducto_Grupo] ([IDSubProducto_Grupo])
GO
ALTER TABLE [dbo].[SubProducto_Grupo_Detalle] CHECK CONSTRAINT [FK__SubProducto_Grupo__SubProducto_Grupo_Detalle]
GO
/****** Object:  ForeignKey [FK__Entidad__Formulario1116B_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116B_Cabecera]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Formulario1116B_Cabecera] FOREIGN KEY([DepositanteIDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
GO
ALTER TABLE [dbo].[Formulario1116B_Cabecera] CHECK CONSTRAINT [FK__Entidad__Formulario1116B_Cabecera]
GO
/****** Object:  ForeignKey [FK__Formulario1116_Talonario__Formulario1116RT_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116RT_Cabecera]  WITH CHECK ADD  CONSTRAINT [FK__Formulario1116_Talonario__Formulario1116RT_Cabecera] FOREIGN KEY([IDFormulario1116_Talonario])
REFERENCES [dbo].[Formulario1116_Talonario] ([IDFormulario1116_Talonario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116RT_Cabecera] CHECK CONSTRAINT [FK__Formulario1116_Talonario__Formulario1116RT_Cabecera]
GO
/****** Object:  ForeignKey [Entidad_Cosecha_Cereal_Ta_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa]  WITH CHECK ADD  CONSTRAINT [Entidad_Cosecha_Cereal_Ta_FK00] FOREIGN KEY([IDCereal])
REFERENCES [dbo].[Cereal] ([IDCereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa] CHECK CONSTRAINT [Entidad_Cosecha_Cereal_Ta_FK00]
GO
/****** Object:  ForeignKey [FK__Cosecha__Entidad_Cosecha_Cereal_Tarifa]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK__Cosecha__Entidad_Cosecha_Cereal_Tarifa] FOREIGN KEY([IDCosecha])
REFERENCES [dbo].[Cosecha] ([IDCosecha])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa] CHECK CONSTRAINT [FK__Cosecha__Entidad_Cosecha_Cereal_Tarifa]
GO
/****** Object:  ForeignKey [FK__Entidad__Entidad_Cosecha_Cereal_Tarifa]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Entidad_Cosecha_Cereal_Tarifa] FOREIGN KEY([IDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_Tarifa] CHECK CONSTRAINT [FK__Entidad__Entidad_Cosecha_Cereal_Tarifa]
GO
/****** Object:  ForeignKey [FK__Entidad__Entidad_Chofer]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Chofer]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Entidad_Chofer] FOREIGN KEY([IDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Chofer] CHECK CONSTRAINT [FK__Entidad__Entidad_Chofer]
GO
/****** Object:  ForeignKey [LibroMovimiento_Cabecera_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[LibroMovimiento_Cabecera]  WITH CHECK ADD  CONSTRAINT [LibroMovimiento_Cabecera_FK00] FOREIGN KEY([IDCereal])
REFERENCES [dbo].[Cereal] ([IDCereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LibroMovimiento_Cabecera] CHECK CONSTRAINT [LibroMovimiento_Cabecera_FK00]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''LibroMovimiento_Cabecera'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LibroMovimiento_Cabecera', @level2type=N'CONSTRAINT',@level2name=N'LibroMovimiento_Cabecera_FK00'
GO
/****** Object:  ForeignKey [Localidad_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [Localidad_FK00] FOREIGN KEY([IDPartido])
REFERENCES [dbo].[Partido] ([IDPartido])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [Localidad_FK00]
GO
/****** Object:  ForeignKey [Localidad_FK01]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [Localidad_FK01] FOREIGN KEY([IDProvincia])
REFERENCES [dbo].[Provincia] ([IDProvincia])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [Localidad_FK01]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''Localidad'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Localidad', @level2type=N'CONSTRAINT',@level2name=N'Localidad_FK01'
GO
/****** Object:  ForeignKey [FK__CondicionPago__Formulario1116A_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116A_Cabecera]  WITH CHECK ADD  CONSTRAINT [FK__CondicionPago__Formulario1116A_Cabecera] FOREIGN KEY([GastoIDCondicionPago])
REFERENCES [dbo].[CondicionPago] ([IDCondicionPago])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116A_Cabecera] CHECK CONSTRAINT [FK__CondicionPago__Formulario1116A_Cabecera]
GO
/****** Object:  ForeignKey [FK__Formulario1116_Talonario__Formulario1116A_Cabecera]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116A_Cabecera]  WITH CHECK ADD  CONSTRAINT [FK__Formulario1116_Talonario__Formulario1116A_Cabecera] FOREIGN KEY([IDFormulario1116_Talonario])
REFERENCES [dbo].[Formulario1116_Talonario] ([IDFormulario1116_Talonario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116A_Cabecera] CHECK CONSTRAINT [FK__Formulario1116_Talonario__Formulario1116A_Cabecera]
GO
/****** Object:  ForeignKey [FleteTarifa_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[FleteTarifa]  WITH CHECK ADD  CONSTRAINT [FleteTarifa_FK00] FOREIGN KEY([IDFleteTabla])
REFERENCES [dbo].[FleteTabla] ([IDFleteTabla])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FleteTarifa] CHECK CONSTRAINT [FleteTarifa_FK00]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''FleteTarifa'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FleteTarifa', @level2type=N'CONSTRAINT',@level2name=N'FleteTarifa_FK00'
GO
/****** Object:  ForeignKey [CerealHumedad_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[CerealHumedad]  WITH CHECK ADD  CONSTRAINT [CerealHumedad_FK00] FOREIGN KEY([IDCereal])
REFERENCES [dbo].[Cereal] ([IDCereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CerealHumedad] CHECK CONSTRAINT [CerealHumedad_FK00]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''CerealHumedad'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CerealHumedad', @level2type=N'CONSTRAINT',@level2name=N'CerealHumedad_FK00'
GO
/****** Object:  ForeignKey [FK__Entidad__Entidad_OrigenDestino]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_OrigenDestino]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Entidad_OrigenDestino] FOREIGN KEY([IDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_OrigenDestino] CHECK CONSTRAINT [FK__Entidad__Entidad_OrigenDestino]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''Entidad_OrigenDestino'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad_OrigenDestino', @level2type=N'CONSTRAINT',@level2name=N'FK__Entidad__Entidad_OrigenDestino'
GO
/****** Object:  ForeignKey [FK__CategoriaIVA__Entidad_Impuesto]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Impuesto]  WITH CHECK ADD  CONSTRAINT [FK__CategoriaIVA__Entidad_Impuesto] FOREIGN KEY([IDCategoriaIVA])
REFERENCES [dbo].[CategoriaIVA] ([IDCategoriaIVA])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Impuesto] CHECK CONSTRAINT [FK__CategoriaIVA__Entidad_Impuesto]
GO
/****** Object:  ForeignKey [FK__Entidad__Entidad_Impuesto]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Impuesto]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Entidad_Impuesto] FOREIGN KEY([IDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Impuesto] CHECK CONSTRAINT [FK__Entidad__Entidad_Impuesto]
GO
/****** Object:  ForeignKey [FK__Entidad__Entidad_Domicilio]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Domicilio]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Entidad_Domicilio] FOREIGN KEY([IDEntidad])
REFERENCES [dbo].[Entidad] ([IDEntidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Domicilio] CHECK CONSTRAINT [FK__Entidad__Entidad_Domicilio]
GO
/****** Object:  ForeignKey [FK__Localidad__Entidad_Domicilio]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Domicilio]  WITH CHECK ADD  CONSTRAINT [FK__Localidad__Entidad_Domicilio] FOREIGN KEY([IDLocalidad])
REFERENCES [dbo].[Localidad] ([IDLocalidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Domicilio] CHECK CONSTRAINT [FK__Localidad__Entidad_Domicilio]
GO
/****** Object:  ForeignKey [FK__Entidad_Cosecha_Cereal_Tarifa__Entidad_Cosecha_Cereal_TarifaEscala]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_TarifaEscala]  WITH CHECK ADD  CONSTRAINT [FK__Entidad_Cosecha_Cereal_Tarifa__Entidad_Cosecha_Cereal_TarifaEscala] FOREIGN KEY([IDEntidad], [IDCosecha], [IDCereal])
REFERENCES [dbo].[Entidad_Cosecha_Cereal_Tarifa] ([IDEntidad], [IDCosecha], [IDCereal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entidad_Cosecha_Cereal_TarifaEscala] CHECK CONSTRAINT [FK__Entidad_Cosecha_Cereal_Tarifa__Entidad_Cosecha_Cereal_TarifaEscala]
GO
/****** Object:  ForeignKey [Cosecha_Cereal_TarifaEsca_FK00]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Cosecha_Cereal_TarifaEscala]  WITH CHECK ADD  CONSTRAINT [Cosecha_Cereal_TarifaEsca_FK00] FOREIGN KEY([IDCosecha], [IDCereal])
REFERENCES [dbo].[Cosecha_Cereal_Tarifa] ([IDCosecha], [IDCereal])
GO
ALTER TABLE [dbo].[Cosecha_Cereal_TarifaEscala] CHECK CONSTRAINT [Cosecha_Cereal_TarifaEsca_FK00]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'No se puede eliminar el registro porque la tabla ''Cosecha_Cereal_TarifaEscala'' incluye registros relacionados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cosecha_Cereal_TarifaEscala', @level2type=N'CONSTRAINT',@level2name=N'Cosecha_Cereal_TarifaEsca_FK00'
GO
/****** Object:  ForeignKey [FK__LibroMovimiento_Cabecera__LibroMovimiento_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[LibroMovimiento_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__LibroMovimiento_Cabecera__LibroMovimiento_Detalle] FOREIGN KEY([Rubrica])
REFERENCES [dbo].[LibroMovimiento_Cabecera] ([Rubrica])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LibroMovimiento_Detalle] CHECK CONSTRAINT [FK__LibroMovimiento_Cabecera__LibroMovimiento_Detalle]
GO
/****** Object:  ForeignKey [FK__Formulario1116RT_Cabecera__Formulario1116RT_Detalle]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116RT_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__Formulario1116RT_Cabecera__Formulario1116RT_Detalle] FOREIGN KEY([IDFormulario1116RT])
REFERENCES [dbo].[Formulario1116RT_Cabecera] ([IDFormulario1116RT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116RT_Detalle] CHECK CONSTRAINT [FK__Formulario1116RT_Cabecera__Formulario1116RT_Detalle]
GO
/****** Object:  ForeignKey [FK__Formulario1116B_Cabecera__Formulario1116B_Retencion]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116B_Retencion]  WITH CHECK ADD  CONSTRAINT [FK__Formulario1116B_Cabecera__Formulario1116B_Retencion] FOREIGN KEY([IDFormulario1116B])
REFERENCES [dbo].[Formulario1116B_Cabecera] ([IDFormulario1116B])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116B_Retencion] CHECK CONSTRAINT [FK__Formulario1116B_Cabecera__Formulario1116B_Retencion]
GO
/****** Object:  ForeignKey [FK__Retencion__Formulario1116B_Retencion]    Script Date: 11/06/2013 20:48:09 ******/
ALTER TABLE [dbo].[Formulario1116B_Retencion]  WITH CHECK ADD  CONSTRAINT [FK__Retencion__Formulario1116B_Retencion] FOREIGN KEY([IDRetencion])
REFERENCES [dbo].[Retencion] ([IDRetencion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116B_Retencion] CHECK CONSTRAINT [FK__Retencion__Formulario1116B_Retencion]
GO
/****** Object:  ForeignKey [FK__CartaPorte_MotivoAnulacion__Movimiento]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal]  WITH CHECK ADD  CONSTRAINT [FK__CartaPorte_MotivoAnulacion__Movimiento] FOREIGN KEY([IDCartaPorte_MotivoAnulacion])
REFERENCES [dbo].[CartaPorte_MotivoAnulacion] ([IDCartaPorte_MotivoAnulacion])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_Cereal] CHECK CONSTRAINT [FK__CartaPorte_MotivoAnulacion__Movimiento]
GO
/****** Object:  ForeignKey [FK__CartaPorte_Talonario__Movimiento]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal]  WITH CHECK ADD  CONSTRAINT [FK__CartaPorte_Talonario__Movimiento] FOREIGN KEY([IDCartaPorte_Talonario])
REFERENCES [dbo].[CartaPorte_Talonario] ([IDCartaPorte_Talonario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_Cereal] CHECK CONSTRAINT [FK__CartaPorte_Talonario__Movimiento]
GO
/****** Object:  ForeignKey [FK__Entidad_OrigenDestino__Movimiento__Destino]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal]  WITH CHECK ADD  CONSTRAINT [FK__Entidad_OrigenDestino__Movimiento__Destino] FOREIGN KEY([IDEntidad_Destino], [IDOrigenDestino_Destino])
REFERENCES [dbo].[Entidad_OrigenDestino] ([IDEntidad], [IDOrigenDestino])
GO
ALTER TABLE [dbo].[Movimiento_Cereal] CHECK CONSTRAINT [FK__Entidad_OrigenDestino__Movimiento__Destino]
GO
/****** Object:  ForeignKey [FK__Entidad_OrigenDestino__Movimiento__Origen]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal]  WITH CHECK ADD  CONSTRAINT [FK__Entidad_OrigenDestino__Movimiento__Origen] FOREIGN KEY([IDEntidad_Titular], [IDOrigenDestino_Origen])
REFERENCES [dbo].[Entidad_OrigenDestino] ([IDEntidad], [IDOrigenDestino])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_Cereal] CHECK CONSTRAINT [FK__Entidad_OrigenDestino__Movimiento__Origen]
GO
/****** Object:  ForeignKey [FK__Entidad__Movimiento_SubProducto__Chofer]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Chofer] FOREIGN KEY([IDEntidad_Chofer])
REFERENCES [dbo].[Entidad] ([IDEntidad])
GO
ALTER TABLE [dbo].[Movimiento_SubProducto] CHECK CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Chofer]
GO
/****** Object:  ForeignKey [FK__Entidad__Movimiento_SubProducto__Destinatario]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Destinatario] FOREIGN KEY([IDEntidad_Destinatario])
REFERENCES [dbo].[Entidad] ([IDEntidad])
GO
ALTER TABLE [dbo].[Movimiento_SubProducto] CHECK CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Destinatario]
GO
/****** Object:  ForeignKey [FK__Entidad__Movimiento_SubProducto__Titular]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Titular] FOREIGN KEY([IDEntidad_Titular])
REFERENCES [dbo].[Entidad] ([IDEntidad])
GO
ALTER TABLE [dbo].[Movimiento_SubProducto] CHECK CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Titular]
GO
/****** Object:  ForeignKey [FK__Entidad__Movimiento_SubProducto__Transportista]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto]  WITH CHECK ADD  CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Transportista] FOREIGN KEY([IDEntidad_Transportista])
REFERENCES [dbo].[Entidad] ([IDEntidad])
GO
ALTER TABLE [dbo].[Movimiento_SubProducto] CHECK CONSTRAINT [FK__Entidad__Movimiento_SubProducto__Transportista]
GO
/****** Object:  ForeignKey [FK__Movimiento_Cereal__Movimiento_SubProducto]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto]  WITH CHECK ADD  CONSTRAINT [FK__Movimiento_Cereal__Movimiento_SubProducto] FOREIGN KEY([IDMovimiento_Cereal])
REFERENCES [dbo].[Movimiento_Cereal] ([IDMovimiento_Cereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_SubProducto] CHECK CONSTRAINT [FK__Movimiento_Cereal__Movimiento_SubProducto]
GO
/****** Object:  ForeignKey [FK__Movimiento__Movimiento_Pesada]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal_Pesada]  WITH CHECK ADD  CONSTRAINT [FK__Movimiento__Movimiento_Pesada] FOREIGN KEY([IDMovimiento_Cereal])
REFERENCES [dbo].[Movimiento_Cereal] ([IDMovimiento_Cereal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_Cereal_Pesada] CHECK CONSTRAINT [FK__Movimiento__Movimiento_Pesada]
GO
/****** Object:  ForeignKey [FK__Movimiento__Movimiento_Calculo]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_Cereal_Calculo]  WITH CHECK ADD  CONSTRAINT [FK__Movimiento__Movimiento_Calculo] FOREIGN KEY([IDMovimiento_Cereal])
REFERENCES [dbo].[Movimiento_Cereal] ([IDMovimiento_Cereal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_Cereal_Calculo] CHECK CONSTRAINT [FK__Movimiento__Movimiento_Calculo]
GO
/****** Object:  ForeignKey [FK__Formulario1116A_Cabecera__Formulario1116A_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Formulario1116A_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__Formulario1116A_Cabecera__Formulario1116A_Detalle] FOREIGN KEY([IDFormulario1116A])
REFERENCES [dbo].[Formulario1116A_Cabecera] ([IDFormulario1116A])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116A_Detalle] CHECK CONSTRAINT [FK__Formulario1116A_Cabecera__Formulario1116A_Detalle]
GO
/****** Object:  ForeignKey [FK__Movimiento__Formulario1116A_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Formulario1116A_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__Movimiento__Formulario1116A_Detalle] FOREIGN KEY([IDMovimiento_Cereal])
REFERENCES [dbo].[Movimiento_Cereal] ([IDMovimiento_Cereal])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Formulario1116A_Detalle] CHECK CONSTRAINT [FK__Movimiento__Formulario1116A_Detalle]
GO
/****** Object:  ForeignKey [FK__Movimiento_SubProducto__Movimiento_SubProducto_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__Movimiento_SubProducto__Movimiento_SubProducto_Detalle] FOREIGN KEY([IDMovimiento_SubProducto])
REFERENCES [dbo].[Movimiento_SubProducto] ([IDMovimiento_SubProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_SubProducto_Detalle] CHECK CONSTRAINT [FK__Movimiento_SubProducto__Movimiento_SubProducto_Detalle]
GO
/****** Object:  ForeignKey [FK__SubProducto__Movimiento_SubProducto_Detalle]    Script Date: 11/06/2013 20:48:10 ******/
ALTER TABLE [dbo].[Movimiento_SubProducto_Detalle]  WITH CHECK ADD  CONSTRAINT [FK__SubProducto__Movimiento_SubProducto_Detalle] FOREIGN KEY([IDSubProducto])
REFERENCES [dbo].[SubProducto] ([IDSubProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Movimiento_SubProducto_Detalle] CHECK CONSTRAINT [FK__SubProducto__Movimiento_SubProducto_Detalle]
GO
