USE [master]
GO
/****** Object:  Database [QLDatVe]    Script Date: 5/30/2024 5:56:33 PM ******/
CREATE DATABASE [QLDatVe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDatVe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLDatVe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLDatVe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLDatVe_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLDatVe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDatVe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDatVe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDatVe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDatVe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDatVe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDatVe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDatVe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDatVe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDatVe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDatVe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDatVe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDatVe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDatVe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDatVe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDatVe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDatVe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLDatVe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDatVe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDatVe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDatVe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDatVe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDatVe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDatVe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDatVe] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDatVe] SET  MULTI_USER 
GO
ALTER DATABASE [QLDatVe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDatVe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDatVe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDatVe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLDatVe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLDatVe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLDatVe] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLDatVe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLDatVe]
GO
/****** Object:  Table [dbo].[CHITIETHOADONVETAU]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADONVETAU](
	[hoaDon] [nvarchar](20) NOT NULL,
	[veTau] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[maGhe] [nvarchar](20) NOT NULL,
	[maToa] [nvarchar](20) NOT NULL,
	[maTau] [nvarchar](20) NOT NULL,
	[maLichTrinh] [nvarchar](20) NOT NULL,
	[loaiGhe] [varchar](50) NULL,
	[tinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maGhe] ASC,
	[maToa] ASC,
	[maTau] ASC,
	[maLichTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[maHD] [nvarchar](20) NOT NULL,
	[nhanVien] [varchar](10) NULL,
	[khachHang] [nchar](10) NULL,
	[ngayLapHD] [date] NULL,
	[tongTienHD] [float] NULL,
 CONSTRAINT [PK__HOADON__7A3E1486373535AF] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[maKH] [nchar](10) NOT NULL,
	[tenKH] [varchar](255) NULL,
	[gioiTinh] [varchar](10) NULL,
	[soDienThoai] [varchar](12) NULL,
	[cCCD] [varchar](15) NULL,
	[diaChi] [varchar](100) NULL,
	[loaiKH] [int] NULL,
	[ngaySinh] [date] NULL,
 CONSTRAINT [PK__KHACHHAN__7A3ECFE41DA779D2] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[maLichTrinh] [nvarchar](20) NOT NULL,
	[maTau] [nvarchar](20) NOT NULL,
	[ngayDi] [date] NULL,
	[ngayDen] [date] NULL,
	[gaDi] [nvarchar](20) NULL,
	[gaDen] [nvarchar](20) NULL,
	[giaChuyen] [float] NULL,
 CONSTRAINT [PK_LichTrinh_1] PRIMARY KEY CLUSTERED 
(
	[maLichTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[maNV] [varchar](10) NOT NULL,
	[hoTen] [varchar](255) NULL,
	[ngaySinh] [date] NULL,
	[cCCD] [varchar](15) NULL,
	[diaChi] [varchar](100) NULL,
	[soDienThoai] [varchar](12) NULL,
	[email] [varchar](50) NULL,
	[caLam] [nvarchar](10) NULL,
	[trangThai] [nvarchar](20) NULL,
	[ngayVaoLam] [date] NULL,
	[gioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK__NHANVIEN__7A3EC7D51AD91BA5] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[maNV] [varchar](10) NOT NULL,
	[matKhau] [varchar](100) NULL,
 CONSTRAINT [PK__TAIKHOAN__7A3EC7D5C264C4D6] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tau]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tau](
	[maTau] [nvarchar](20) NOT NULL,
	[tenTau] [varchar](255) NULL,
	[loaiTau] [nvarchar](20) NULL,
 CONSTRAINT [PK_Tau_1] PRIMARY KEY CLUSTERED 
(
	[maTau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Toa]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toa](
	[maToa] [nvarchar](20) NOT NULL,
	[maTau] [nvarchar](20) NOT NULL,
	[loaiToa] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maToa] ASC,
	[maTau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VETAU]    Script Date: 5/30/2024 5:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VETAU](
	[maVe] [nvarchar](20) NOT NULL,
	[maLichTrinh] [nvarchar](20) NOT NULL,
	[maGhe] [nvarchar](20) NOT NULL,
	[maToa] [nvarchar](20) NOT NULL,
	[maTau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__VETAU__7A2272760F61891A] PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024001', N'V001')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024001', N'V004')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V005')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V007')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V010')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V011')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024001', N'V002')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024001', N'V003')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V006')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V008')
INSERT [dbo].[CHITIETHOADONVETAU] ([hoaDon], [veTau]) VALUES (N'HD053024002', N'V009')
GO
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE01', N'TOA01', N'SE01', N'LT010', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE01', N'TOA01', N'SE02', N'LT008', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE02', N'TOA01', N'SE01', N'LT010', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE02', N'TOA01', N'SE02', N'LT008', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE03', N'TOA01', N'SE01', N'LT010', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE03', N'TOA01', N'SE02', N'LT008', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE04', N'TOA01', N'SE02', N'LT008', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE05', N'TOA01', N'SE05', N'LT009', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE06', N'TOA01', N'SE05', N'LT009', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE07', N'TOA01', N'SE05', N'LT009', N'', 1)
INSERT [dbo].[Ghe] ([maGhe], [maToa], [maTau], [maLichTrinh], [loaiGhe], [tinhTrang]) VALUES (N'GHE08', N'TOA01', N'SE05', N'LT009', N'', 1)
GO
INSERT [dbo].[HOADON] ([maHD], [nhanVien], [khachHang], [ngayLapHD], [tongTienHD]) VALUES (N'HD053024001', N'NV001', N'KH001     ', CAST(N'2024-05-30' AS Date), 1280000)
INSERT [dbo].[HOADON] ([maHD], [nhanVien], [khachHang], [ngayLapHD], [tongTienHD]) VALUES (N'HD053024002', N'NV001', N'KH002     ', CAST(N'2024-05-30' AS Date), 3600000)
GO
INSERT [dbo].[KHACHHANG] ([maKH], [tenKH], [gioiTinh], [soDienThoai], [cCCD], [diaChi], [loaiKH], [ngaySinh]) VALUES (N'KH001     ', N'Nguyenn Kha Minh', N'Nam', N'0957622321', N'071201325218', N'Lam Dong', 1, CAST(N'2004-05-30' AS Date))
INSERT [dbo].[KHACHHANG] ([maKH], [tenKH], [gioiTinh], [soDienThoai], [cCCD], [diaChi], [loaiKH], [ngaySinh]) VALUES (N'KH002     ', N'Tran Minh Chau', N'Nu', N'0937454323', N'071311325229', N'Ho Chi Minh', 1, CAST(N'2003-06-23' AS Date))
GO
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT001', N'SE01', CAST(N'2024-05-25' AS Date), CAST(N'2024-05-27' AS Date), N'Sai Gon', N'Ha Noi', 300000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT002', N'SE05', CAST(N'2024-05-25' AS Date), CAST(N'2024-05-27' AS Date), N'Sai Gon', N'Ha Noi', 400000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT003', N'SE03', CAST(N'2024-05-25' AS Date), CAST(N'2024-05-27' AS Date), N'Sai Gon', N'Ha Noi', 400000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT004', N'SE01', CAST(N'2024-05-28' AS Date), CAST(N'2024-05-30' AS Date), N'Ha Noi', N'Sai Gon', 300000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT005', N'SE02', CAST(N'2024-05-28' AS Date), CAST(N'2024-05-30' AS Date), N'Ha Noi', N'Sai Gon', 400000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT006', N'SE03', CAST(N'2024-05-28' AS Date), CAST(N'2024-05-30' AS Date), N'Ha Noi', N'Sai Gon', 500000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT007', N'SE01', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-31' AS Date), N'Ha Noi', N'Sai Gon', 500000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT008', N'SE02', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-31' AS Date), N'Sai Gon', N'Ha Noi', 300000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT009', N'SE05', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-31' AS Date), N'Sai Gon', N'Ha Noi', 600000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT010', N'SE01', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-03' AS Date), N'Ha Noi', N'Sai Gon', 300000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT011', N'SE03', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-03' AS Date), N'Ha Noi', N'Sai Gon', 700000)
INSERT [dbo].[LichTrinh] ([maLichTrinh], [maTau], [ngayDi], [ngayDen], [gaDi], [gaDen], [giaChuyen]) VALUES (N'LT012', N'SE01', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-30' AS Date), N'Ha Noi', N'Hai Phong', 5000000)
GO
INSERT [dbo].[NHANVIEN] ([maNV], [hoTen], [ngaySinh], [cCCD], [diaChi], [soDienThoai], [email], [caLam], [trangThai], [ngayVaoLam], [gioiTinh]) VALUES (N'NV001', N'Nguyen Kha Minh', CAST(N'2003-07-09' AS Date), N'079275936610', N'Lam Dong', N'0982257321', N'minh@gmail.com', N'Ca 1', N'Dang Lam', CAST(N'2022-07-09' AS Date), N'nam')
INSERT [dbo].[NHANVIEN] ([maNV], [hoTen], [ngaySinh], [cCCD], [diaChi], [soDienThoai], [email], [caLam], [trangThai], [ngayVaoLam], [gioiTinh]) VALUES (N'NV002', N'Tran Minh Chau', CAST(N'2003-01-01' AS Date), N'073837128840', N'Mien Tay', N'0987254321', N'cahu@123', N'Ca 1', N'Dang Lam', CAST(N'2019-09-09' AS Date), N'nam')
INSERT [dbo].[NHANVIEN] ([maNV], [hoTen], [ngaySinh], [cCCD], [diaChi], [soDienThoai], [email], [caLam], [trangThai], [ngayVaoLam], [gioiTinh]) VALUES (N'NV003', N'Nguyen Duc Hung Thinh', CAST(N'2003-04-05' AS Date), N'079472948851', N'Sai Gon', N'0917636321', N'thinh@gmail.com', N'Ca 3', N'Dang Lam', CAST(N'2019-08-09' AS Date), N'nam')
INSERT [dbo].[NHANVIEN] ([maNV], [hoTen], [ngaySinh], [cCCD], [diaChi], [soDienThoai], [email], [caLam], [trangThai], [ngayVaoLam], [gioiTinh]) VALUES (N'NV004', N'Nguyen Quoc Huy', CAST(N'2003-06-05' AS Date), N'079274941120', N'Tuy Hoa', N'0947554328', N'Huy@gmail.com', N'Ca 3', N'Dang Lam', CAST(N'2023-01-01' AS Date), N'nam')
GO
INSERT [dbo].[TAIKHOAN] ([maNV], [matKhau]) VALUES (N'NV001', N'123456')
INSERT [dbo].[TAIKHOAN] ([maNV], [matKhau]) VALUES (N'NV002', N'123456')
INSERT [dbo].[TAIKHOAN] ([maNV], [matKhau]) VALUES (N'NV003', N'123456')
INSERT [dbo].[TAIKHOAN] ([maNV], [matKhau]) VALUES (N'NV004', N'123456')
GO
INSERT [dbo].[Tau] ([maTau], [tenTau], [loaiTau]) VALUES (N'SE01', N'HaDong-CatLinh', N'Tau hoa')
INSERT [dbo].[Tau] ([maTau], [tenTau], [loaiTau]) VALUES (N'SE02', N'MyDuc-DaTer', N'Tau Hoa')
INSERT [dbo].[Tau] ([maTau], [tenTau], [loaiTau]) VALUES (N'SE03', N'HaDong-CatLinh', N'Tau Hoa')
INSERT [dbo].[Tau] ([maTau], [tenTau], [loaiTau]) VALUES (N'SE04', N'HaDong-CatLinh', N'Tau Hoa')
INSERT [dbo].[Tau] ([maTau], [tenTau], [loaiTau]) VALUES (N'SE05', N'SG_Transport', N'Tau hoa')
GO
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA01', N'SE01', N'Loai Toa 1')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA01', N'SE02', N'Loai Toa 1')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA01', N'SE03', N'Loai Toa 1')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA01', N'SE04', N'Loai Toa 1')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA01', N'SE05', N'Loai Toa 1')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA02', N'SE01', N'Loai Toa 2')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA02', N'SE02', N'Loai Toa 2')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA02', N'SE03', N'Loai Toa 2')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA02', N'SE04', N'Loai Toa 2')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA02', N'SE05', N'Loai Toa 2')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA03', N'SE01', N'Loai Toa 3')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA03', N'SE02', N'Loai Toa 3')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA03', N'SE03', N'Loai Toa 3')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA03', N'SE04', N'Loai Toa 3')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA03', N'SE05', N'Loai Toa 3')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA04', N'SE01', N'Loai Toa 4')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA04', N'SE02', N'Loai Toa 4')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA04', N'SE03', N'Loai Toa 4')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA04', N'SE04', N'Loai Toa 4')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA04', N'SE05', N'Loai Toa 4')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA05', N'SE01', N'Loai Toa 5')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA05', N'SE02', N'Loai Toa 5')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA05', N'SE03', N'Loai Toa 5')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA05', N'SE04', N'Loai Toa 5')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA05', N'SE05', N'Loai Toa 5')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA06', N'SE01', N'Loai Toa 6')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA06', N'SE02', N'Loai Toa 6')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA06', N'SE03', N'Loai Toa 6')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA06', N'SE04', N'Loai Toa 6')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA06', N'SE05', N'Loai Toa 6')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA07', N'SE01', N'Loai Toa 7')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA07', N'SE02', N'Loai Toa 7')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA07', N'SE03', N'Loai Toa 7')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA07', N'SE04', N'Loai Toa 7')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA07', N'SE05', N'Loai Toa 7')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA08', N'SE01', N'Loai Toa 8')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA08', N'SE02', N'Loai Toa 8')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA08', N'SE03', N'Loai Toa 8')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA08', N'SE04', N'Loai Toa 8')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA08', N'SE05', N'Loai Toa 8')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA09', N'SE01', N'Loai Toa 9')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA09', N'SE02', N'Loai Toa 9')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA09', N'SE03', N'Loai Toa 9')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA09', N'SE04', N'Loai Toa 9')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA09', N'SE05', N'Loai Toa 9')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA10', N'SE01', N'Loai Toa 10')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA10', N'SE02', N'Loai Toa 10')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA10', N'SE03', N'Loai Toa 10')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA10', N'SE04', N'Loai Toa 10')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA10', N'SE05', N'Loai Toa 10')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA11', N'SE01', N'Loai Toa 11')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA11', N'SE02', N'Loai Toa 11')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA11', N'SE03', N'Loai Toa 11')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA11', N'SE04', N'Loai Toa 11')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA11', N'SE05', N'Loai Toa 11')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA12', N'SE01', N'Loai Toa 12')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA12', N'SE02', N'Loai Toa 12')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA12', N'SE03', N'Loai Toa 12')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA12', N'SE04', N'Loai Toa 12')
INSERT [dbo].[Toa] ([maToa], [maTau], [loaiToa]) VALUES (N'TOA12', N'SE05', N'Loai Toa 12')
GO
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V001', N'LT008', N'GHE01', N'TOA01', N'SE02')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V002', N'LT008', N'GHE02', N'TOA01', N'SE02')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V003', N'LT008', N'GHE03', N'TOA01', N'SE02')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V004', N'LT008', N'GHE04', N'TOA01', N'SE02')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V005', N'LT009', N'GHE05', N'TOA01', N'SE05')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V006', N'LT010', N'GHE01', N'TOA01', N'SE01')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V007', N'LT009', N'GHE06', N'TOA01', N'SE05')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V008', N'LT010', N'GHE02', N'TOA01', N'SE01')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V009', N'LT009', N'GHE07', N'TOA01', N'SE05')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V010', N'LT010', N'GHE03', N'TOA01', N'SE01')
INSERT [dbo].[VETAU] ([maVe], [maLichTrinh], [maGhe], [maToa], [maTau]) VALUES (N'V011', N'LT009', N'GHE08', N'TOA01', N'SE05')
GO
ALTER TABLE [dbo].[CHITIETHOADONVETAU]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHO__hoaDo__52593CB8] FOREIGN KEY([hoaDon])
REFERENCES [dbo].[HOADON] ([maHD])
GO
ALTER TABLE [dbo].[CHITIETHOADONVETAU] CHECK CONSTRAINT [FK__CHITIETHO__hoaDo__52593CB8]
GO
ALTER TABLE [dbo].[CHITIETHOADONVETAU]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHO__veTau__5441852] FOREIGN KEY([veTau])
REFERENCES [dbo].[VETAU] ([maVe])
GO
ALTER TABLE [dbo].[CHITIETHOADONVETAU] CHECK CONSTRAINT [FK__CHITIETHO__veTau__5441852]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD FOREIGN KEY([maToa], [maTau])
REFERENCES [dbo].[Toa] ([maToa], [maTau])
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LichTrinh] FOREIGN KEY([maLichTrinh])
REFERENCES [dbo].[LichTrinh] ([maLichTrinh])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LichTrinh]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK__HOADON__khachHan__5535A963] FOREIGN KEY([khachHang])
REFERENCES [dbo].[KHACHHANG] ([maKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK__HOADON__khachHan__5535A963]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK__HOADON__nhanVien__5629CD9C] FOREIGN KEY([nhanVien])
REFERENCES [dbo].[NHANVIEN] ([maNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK__HOADON__nhanVien__5629CD9C]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_Tau] FOREIGN KEY([maTau])
REFERENCES [dbo].[Tau] ([maTau])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_Tau]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK__TAIKHOAN__maNV__59FA5E80] FOREIGN KEY([maNV])
REFERENCES [dbo].[NHANVIEN] ([maNV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK__TAIKHOAN__maNV__59FA5E80]
GO
ALTER TABLE [dbo].[Toa]  WITH CHECK ADD FOREIGN KEY([maTau])
REFERENCES [dbo].[Tau] ([maTau])
GO
ALTER TABLE [dbo].[VETAU]  WITH CHECK ADD  CONSTRAINT [FK_VETAU_LichTrinh] FOREIGN KEY([maLichTrinh])
REFERENCES [dbo].[LichTrinh] ([maLichTrinh])
GO
ALTER TABLE [dbo].[VETAU] CHECK CONSTRAINT [FK_VETAU_LichTrinh]
GO
USE [master]
GO
ALTER DATABASE [QLDatVe] SET  READ_WRITE 
GO
