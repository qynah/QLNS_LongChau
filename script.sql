USE [master]
GO
/****** Object:  Database [QuanLyNhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
CREATE DATABASE [QuanLyNhanVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhanVien', FILENAME = N'D:\SQL_data_nmcnpm\QuanLyNhanVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyNhanVien_log', FILENAME = N'D:\SQL_data_nmcnpm\QuanLyNhanVien_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [QuanLyNhanVien] SET COMPATIBILITY_LEVEL = 150
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [QuanLyNhanVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhanVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhanVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhanVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyNhanVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhanVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhanVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhanVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyNhanVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNhanVien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyNhanVien] SET QUERY_STORE = OFF
GO
USE [QuanLyNhanVien]
GO
USE [QuanLyNhanVien]
GO
/****** Object:  Sequence [dbo].[HopDongID]    Script Date: 9/23/2023 9:09:32 PM ******/
CREATE SEQUENCE [dbo].[HopDongID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[tbl_Chucvu]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Chucvu](
	[PK_sMaCV] [varchar](10) NOT NULL,
	[sTenCV] [nvarchar](20) NULL,
	[fHSL] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_sMaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Nhanvien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Nhanvien](
	[PK_sMaNV] [varchar](10) NOT NULL,
	[sTenNV] [nvarchar](30) NOT NULL,
	[dNgaysinh] [datetime] NULL,
	[sGioitinh] [nvarchar](3) NULL,
	[sCCCD] [varchar](12) NULL,
	[sDiachi] [nvarchar](50) NULL,
	[sSDT] [varchar](10) NULL,
	[sEmail] [varchar](20) NULL,
	[dNgayvaolam] [datetime] NULL,
	[FK_sMaCV] [varchar](10) NULL,
	[FK_sMaPB] [varchar](10) NULL,
	[fLuongcb] [float] NULL,
	[sTinhtrang] [nvarchar](20) NULL,
 CONSTRAINT [PK__tbl_Nhan__DF6FFB0172241664] PRIMARY KEY CLUSTERED 
(
	[PK_sMaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Phongban]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Phongban](
	[PK_sMaPB] [varchar](10) NOT NULL,
	[sTenPB] [nvarchar](20) NULL,
	[sMota] [nvarchar](50) NULL,
 CONSTRAINT [PK__tbl_Phon__DF6FEBD249DE29DF] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hopdong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hopdong](
	[PK_sMaHD] [varchar](10) NOT NULL,
	[dNgaykyhd] [datetime] NULL,
	[dNgayhethan] [datetime] NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[FK_sMaCV] [varchar](10) NULL,
	[FK_sMaPB] [varchar](10) NULL,
	[fLuongcb] [float] NULL,
 CONSTRAINT [PK_tbl_Hopdong] PRIMARY KEY CLUSTERED 
(
	[PK_sMaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_HopDong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_HopDong]
AS
	SELECT dbo.tbl_Hopdong.PK_sMaHD AS [Mã hợp đồng], 
			dbo.tbl_Hopdong.dNgaykyhd AS [Ngày ký], 
			dbo.tbl_Hopdong.dNgayhethan AS [Ngày hết hạn], 
			dbo.tbl_Hopdong.FK_sMaNV AS [Mã nhân viên],
			dbo.tbl_Nhanvien.sTenNV AS [Tên nhân viên],
			dbo.tbl_Chucvu.sTenCV AS [Tên chức vụ],
			dbo.tbl_Phongban.sTenPB AS [Tên phòng ban],
			dbo.tbl_Hopdong.fLuongcb AS [Lương cơ bản]
	FROM dbo.tbl_Hopdong, dbo.tbl_Nhanvien, dbo.tbl_Chucvu, dbo.tbl_Phongban
	WHERE dbo.tbl_Hopdong.FK_sMaNV = tbl_Nhanvien.PK_sMaNV 
			and dbo.tbl_Hopdong.FK_sMaCV = tbl_Chucvu.PK_sMaCV
			and dbo.tbl_Hopdong.FK_sMaPB = tbl_Phongban.PK_sMaPB
GO
/****** Object:  Table [dbo].[tbl_Bonhiem]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bonhiem](
	[PK_sMabonhiem] [varchar](30) NOT NULL,
	[dNgaylap] [datetime] NULL,
	[dNgaycohieuluc] [datetime] NULL,
	[FK_MaNV] [varchar](10) NULL,
	[FK_MaCV] [varchar](10) NULL,
	[FK_MaPB] [varchar](10) NULL,
	[fLuongmoi] [float] NULL,
	[sNoidung] [nvarchar](500) NULL,
 CONSTRAINT [PK__tbl_Bonh__ADD331085B5C6EFB] PRIMARY KEY CLUSTERED 
(
	[PK_sMabonhiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_BoNhiem]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_BoNhiem]
AS
	SELECT dbo.tbl_Bonhiem.PK_sMabonhiem AS [Mã bổ nhiệm], 
			dbo.tbl_Bonhiem.dNgaylap AS [Ngày lập], 
			dbo.tbl_Bonhiem.dNgaycohieuluc AS [Ngày hiêu lực], 
			dbo.tbl_Bonhiem.FK_MaNV AS [Mã nhân viên],
			dbo.tbl_Nhanvien.sTenNV AS [Tên nhân viên],
			dbo.tbl_Chucvu.sTenCV AS [Chức vụ mới],
			dbo.tbl_Phongban.sTenPB AS [Phòng ban mới],
			dbo.tbl_Bonhiem.fLuongmoi AS [Lương mới],
			dbo.tbl_Bonhiem.sNoidung AS [Nội dung]
	FROM dbo.tbl_Bonhiem, dbo.tbl_Nhanvien, dbo.tbl_Chucvu, dbo.tbl_Phongban
	WHERE dbo.tbl_Bonhiem.FK_MaNV = tbl_Nhanvien.PK_sMaNV 
			and dbo.tbl_Bonhiem.FK_MaCV = tbl_Chucvu.PK_sMaCV
			and dbo.tbl_Bonhiem.FK_MaPB = tbl_Phongban.PK_sMaPB
GO
/****** Object:  View [dbo].[vv_NhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_NhanVien]
AS
	SELECT PK_sMaNV AS [Mã nhân viên], 
			sTenNV AS [Họ tên], 
			sGioitinh AS [Giới tính], 
			dNgaysinh AS [Ngày sinh],
			sCCCD AS [CCCD],
			sDiachi AS [Địa chỉ],
			sSDT AS [Số điện thoại],
			sEmail AS [Email],
			dNgayvaolam AS [Ngày vào làm],
			sTinhtrang AS [Tình trạng]
	FROM dbo.tbl_Nhanvien
	where sTinhtrang != N'Nghỉ làm'
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[PK_sMaquyen] [varchar](10) NOT NULL,
	[sTenquyen] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_sMaquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Taikhoan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Taikhoan](
	[FK_sMaNV] [varchar](10) NOT NULL,
	[s_Taikhoan] [varchar](20) NULL,
	[s_Matkhau] [varchar](20) NULL,
	[s_Tinhtrang] [nvarchar](20) NULL,
	[PK_sMaTK] [nvarchar](20) NOT NULL,
	[FK_sMaquyen] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[PK_sMaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_TaiKhoan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_TaiKhoan]
AS
	SELECT dbo.tbl_Taikhoan.PK_sMaTK AS [Mã tài khoản], 
			dbo.tbl_Taikhoan.FK_sMaNV AS [Mã nhân viên],
			dbo.tbl_Nhanvien.sTenNV AS [Tên nhân viên], 
			dbo.tbl_Taikhoan.s_Taikhoan AS [Tên tài khoản], 
			dbo.tbl_Taikhoan.s_Matkhau AS [Mật khẩu],
			dbo.tbl_Quyen.sTenquyen AS [Quyền],
			dbo.tbl_Taikhoan.s_Tinhtrang AS [Trạng Thái]
		FROM dbo.tbl_Taikhoan, dbo.tbl_Nhanvien, dbo.tbl_Quyen
		WHERE dbo.tbl_Taikhoan.FK_sMaNV = dbo.tbl_Nhanvien.PK_sMaNV and dbo.tbl_Taikhoan.FK_sMaquyen = dbo.tbl_Quyen.PK_sMaquyen
GO
/****** Object:  View [dbo].[vv_TaiKhoanNhanVienQuyen]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_TaiKhoanNhanVienQuyen]
AS
	SELECT b.PK_sMaNV AS [Mã NV], b.sTenNV AS [Tên NV], b.dNgaysinh AS [Ngày sinh], b.sCCCD AS [CCCD],
			b.sSDT AS [SĐT], b.dNgayvaolam AS [Ngày vào làm], b.FK_sMaCV AS [Chức vụ], b.sTinhtrang AS [Trạng thái],
			a.PK_sMaTK AS [Mã TK], a.s_Taikhoan AS [Tên tài khoản], a.s_Matkhau AS [Mật khẩu], a.FK_sMaquyen AS [Mã quyền]
	FROM dbo.tbl_TaiKhoan a 
			JOIN dbo.tbl_Nhanvien b ON a.FK_sMaNV = b.PK_sMaNV
			JOIN dbo.tbl_Quyen c ON c.PK_sMaQuyen = a.FK_sMaQuyen
GO
/****** Object:  Table [dbo].[tbl_Khenthuong_Kyluat]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Khenthuong_Kyluat](
	[PK_sMaQD] [varchar](10) NULL,
	[dNgaylap] [datetime] NULL,
	[sLoaiquyetdinh] [nvarchar](20) NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[fMuckhenthuong] [float] NULL,
	[sLydo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_Khenthuong_Kyluat]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_Khenthuong_Kyluat]
AS
SELECT a.PK_sMaQD AS [Mã QD], a.dNgaylap AS [Ngày lập], a.sLoaiquyetdinh AS [Loại quyết định], b.PK_sMaNV AS [Mã NV], a.fMuckhenthuong AS [Mức khen thưởng], a.sLydo AS [Lý do]
FROM     dbo.tbl_Khenthuong_Kyluat AS a INNER JOIN
                  dbo.tbl_Nhanvien AS b ON a.FK_sMaNV = b.PK_sMaNV
GO
/****** Object:  View [dbo].[vv_getNhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vv_getNhanVien]
as
SELECT PK_sMaNV, sTenNV, CONCAT(PK_sMaNV,' - ', sTenNV) AS [nhanVien] FROM tbl_Nhanvien
where PK_sMaNV not in (select FK_sMaNV from tbl_Taikhoan)
GO
/****** Object:  Table [dbo].[tbl_Bienban]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bienban](
	[PK_sMabienban] [varchar](10) NOT NULL,
	[dNgaylap] [datetime] NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[FK_sMaCV] [varchar](10) NULL,
	[FK_sMaPB] [varchar](10) NULL,
	[sNddanhgia] [nvarchar](50) NULL,
 CONSTRAINT [PK__tbl_Bien__12CE2D7C9D23BE6F] PRIMARY KEY CLUSTERED 
(
	[PK_sMabienban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_Bienban]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_Bienban]
AS
	SELECT a.PK_sMabienban AS [Mã biên bản], a.dNgaylap AS [Ngày lập], b.PK_sMaNV AS [Mã nhân viên], 
			c.PK_sMaCV AS [Mã CV], d.PK_sMaPB as [Mã PB], a.sNddanhgia as [Ngày đánh giá]
	FROM dbo.tbl_Bienban a inner join dbo.tbl_Nhanvien b ON a.FK_sMaNV = b.PK_sMaNV
	inner join dbo.tbl_Chucvu c on a.FK_sMaPB = c.PK_sMaCV
	inner join dbo.tbl_Phongban d on a.FK_sMaPB = d.PK_sMaPB
GO
/****** Object:  Table [dbo].[tbl_Chamcong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Chamcong](
	[PK_sMachamcong] [varchar](10) NOT NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[dNgaychamcong] [datetime] NULL,
	[dGiovao] [datetime] NULL,
	[dGiora] [datetime] NULL,
	[iSogiolam] [int] NULL,
 CONSTRAINT [PK__tbl_Cham__723889C9F83E3894] PRIMARY KEY CLUSTERED 
(
	[PK_sMachamcong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Donxinnghi]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Donxinnghi](
	[PK_sMaDon] [varchar](10) NOT NULL,
	[dNgaylap] [datetime] NULL,
	[sLoaidon] [nvarchar](20) NULL,
	[dNgaybatdau] [datetime] NULL,
	[dNgayketthuc] [datetime] NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[FK_sMaCV] [varchar](10) NULL,
	[FK_sMaPB] [varchar](10) NULL,
	[sLydo] [varchar](50) NULL,
 CONSTRAINT [PK__tbl_Donx__7B479D04DFBB1E20] PRIMARY KEY CLUSTERED 
(
	[PK_sMaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Luong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Luong](
	[PK_sMaL] [varchar](10) NOT NULL,
	[FK_sMaNV] [varchar](10) NULL,
	[sThoigian] [varchar](10) NULL,
	[sThuong] [varchar](10) NULL,
	[sPhat] [varchar](10) NULL,
	[fTongthunhap] [float] NULL,
 CONSTRAINT [PK__tbl_Luon__8495069E0C26E7CE] PRIMARY KEY CLUSTERED 
(
	[PK_sMaL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Bienban] ([PK_sMabienban], [dNgaylap], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sNddanhgia]) VALUES (N'BB00001', CAST(N'2023-01-10T00:00:00.000' AS DateTime), N'NV00001', N'CV00001', N'PB00001', N'HThành công việc tốt')
INSERT [dbo].[tbl_Bienban] ([PK_sMabienban], [dNgaylap], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sNddanhgia]) VALUES (N'BB00002', CAST(N'2023-01-20T00:00:00.000' AS DateTime), N'NV00002', N'CV00002', N'PB00002', N'Chậm tiến độ công việc')
INSERT [dbo].[tbl_Bienban] ([PK_sMabienban], [dNgaylap], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sNddanhgia]) VALUES (N'BB00003', CAST(N'2023-01-30T00:00:00.000' AS DateTime), N'NV00003', N'CV00003', N'PB00003', N'HThành công việc tốt')
INSERT [dbo].[tbl_Bienban] ([PK_sMabienban], [dNgaylap], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sNddanhgia]) VALUES (N'BB00004', CAST(N'2023-02-10T00:00:00.000' AS DateTime), N'NV00004', N'CV00004', N'PB00004', N'HThành công việc tốt')
INSERT [dbo].[tbl_Bienban] ([PK_sMabienban], [dNgaylap], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sNddanhgia]) VALUES (N'BB00005', CAST(N'2023-02-20T00:00:00.000' AS DateTime), N'NV00005', N'CV00005', N'PB00005', N'Chưa HThành công việc')
GO
INSERT [dbo].[tbl_Chamcong] ([PK_sMachamcong], [FK_sMaNV], [dNgaychamcong], [dGiovao], [dGiora], [iSogiolam]) VALUES (N'CC00001', N'NV00001', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T08:00:00.000' AS DateTime), CAST(N'2023-03-01T17:00:00.000' AS DateTime), 8)
INSERT [dbo].[tbl_Chamcong] ([PK_sMachamcong], [FK_sMaNV], [dNgaychamcong], [dGiovao], [dGiora], [iSogiolam]) VALUES (N'CC00002', N'NV00002', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T08:00:00.000' AS DateTime), CAST(N'2023-03-01T17:00:00.000' AS DateTime), 8)
INSERT [dbo].[tbl_Chamcong] ([PK_sMachamcong], [FK_sMaNV], [dNgaychamcong], [dGiovao], [dGiora], [iSogiolam]) VALUES (N'CC00003', N'NV00003', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T08:00:00.000' AS DateTime), CAST(N'2023-03-01T17:00:00.000' AS DateTime), 8)
INSERT [dbo].[tbl_Chamcong] ([PK_sMachamcong], [FK_sMaNV], [dNgaychamcong], [dGiovao], [dGiora], [iSogiolam]) VALUES (N'CC00004', N'NV00004', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T08:00:00.000' AS DateTime), CAST(N'2023-03-01T17:00:00.000' AS DateTime), 8)
INSERT [dbo].[tbl_Chamcong] ([PK_sMachamcong], [FK_sMaNV], [dNgaychamcong], [dGiovao], [dGiora], [iSogiolam]) VALUES (N'CC00005', N'NV00005', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T08:00:00.000' AS DateTime), CAST(N'2023-03-01T17:00:00.000' AS DateTime), 8)
GO
INSERT [dbo].[tbl_Chucvu] ([PK_sMaCV], [sTenCV], [fHSL]) VALUES (N'CV00001', N'Giám đốc', 5)
INSERT [dbo].[tbl_Chucvu] ([PK_sMaCV], [sTenCV], [fHSL]) VALUES (N'CV00002', N'Phó giám đốc', 4.5)
INSERT [dbo].[tbl_Chucvu] ([PK_sMaCV], [sTenCV], [fHSL]) VALUES (N'CV00003', N'Trưởng phòng', 4)
INSERT [dbo].[tbl_Chucvu] ([PK_sMaCV], [sTenCV], [fHSL]) VALUES (N'CV00004', N'Phó phòng', 3.5)
INSERT [dbo].[tbl_Chucvu] ([PK_sMaCV], [sTenCV], [fHSL]) VALUES (N'CV00005', N'Nhân viên', 3)
GO
INSERT [dbo].[tbl_Donxinnghi] ([PK_sMaDon], [dNgaylap], [sLoaidon], [dNgaybatdau], [dNgayketthuc], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sLydo]) VALUES (N'DN00001', CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'Nghỉ phép', CAST(N'2023-01-20T00:00:00.000' AS DateTime), CAST(N'2023-01-22T00:00:00.000' AS DateTime), N'NV00001', N'CV00001', N'PB00001', N'Ngh? di du l?ch')
INSERT [dbo].[tbl_Donxinnghi] ([PK_sMaDon], [dNgaylap], [sLoaidon], [dNgaybatdau], [dNgayketthuc], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sLydo]) VALUES (N'DN00002', CAST(N'2023-01-20T00:00:00.000' AS DateTime), N'Nghỉ phép', CAST(N'2023-01-25T00:00:00.000' AS DateTime), CAST(N'2023-01-27T00:00:00.000' AS DateTime), N'NV00002', N'CV00002', N'PB00002', N'Ngh? cham sóc con')
INSERT [dbo].[tbl_Donxinnghi] ([PK_sMaDon], [dNgaylap], [sLoaidon], [dNgaybatdau], [dNgayketthuc], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sLydo]) VALUES (N'DN00003', CAST(N'2023-02-10T00:00:00.000' AS DateTime), N'Nghỉ phép', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-02-17T00:00:00.000' AS DateTime), N'NV00003', N'CV00003', N'PB00003', N'Ngh? dám cu?i')
INSERT [dbo].[tbl_Donxinnghi] ([PK_sMaDon], [dNgaylap], [sLoaidon], [dNgaybatdau], [dNgayketthuc], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sLydo]) VALUES (N'DN00004', CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'Nghỉ phép', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-03-03T00:00:00.000' AS DateTime), N'NV00004', N'CV00004', N'PB00004', N'Ngh? vì dau ?m')
INSERT [dbo].[tbl_Donxinnghi] ([PK_sMaDon], [dNgaylap], [sLoaidon], [dNgaybatdau], [dNgayketthuc], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [sLydo]) VALUES (N'DN00005', CAST(N'2023-03-05T00:00:00.000' AS DateTime), N'Nghỉ phép', CAST(N'2023-03-10T00:00:00.000' AS DateTime), CAST(N'2023-03-12T00:00:00.000' AS DateTime), N'NV00005', N'CV00005', N'PB00005', N'Ngh? vì công vi?c cá nhân')
GO
INSERT [dbo].[tbl_Hopdong] ([PK_sMaHD], [dNgaykyhd], [dNgayhethan], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [fLuongcb]) VALUES (N'HD00036', CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2024-03-21T00:00:00.000' AS DateTime), N'NV00003', N'CV00001', N'PB00004', 999999)
INSERT [dbo].[tbl_Hopdong] ([PK_sMaHD], [dNgaykyhd], [dNgayhethan], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [fLuongcb]) VALUES (N'HD00037', CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2024-03-21T00:00:00.000' AS DateTime), N'NV00004', N'CV00003', N'PB00001', 10000)
INSERT [dbo].[tbl_Hopdong] ([PK_sMaHD], [dNgaykyhd], [dNgayhethan], [FK_sMaNV], [FK_sMaCV], [FK_sMaPB], [fLuongcb]) VALUES (N'HD00038', CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2026-03-21T00:00:00.000' AS DateTime), N'NV00005', N'CV00004', N'PB00002', 88888)
GO
INSERT [dbo].[tbl_Luong] ([PK_sMaL], [FK_sMaNV], [sThoigian], [sThuong], [sPhat], [fTongthunhap]) VALUES (N'L00001', N'NV00001', N'2023-01', N'500000', N'0', 10500000)
INSERT [dbo].[tbl_Luong] ([PK_sMaL], [FK_sMaNV], [sThoigian], [sThuong], [sPhat], [fTongthunhap]) VALUES (N'L00002', N'NV00002', N'2023-01', N'600000', N'0', 12600000)
INSERT [dbo].[tbl_Luong] ([PK_sMaL], [FK_sMaNV], [sThoigian], [sThuong], [sPhat], [fTongthunhap]) VALUES (N'L00003', N'NV00003', N'2023-01', N'700000', N'0', 14700000)
INSERT [dbo].[tbl_Luong] ([PK_sMaL], [FK_sMaNV], [sThoigian], [sThuong], [sPhat], [fTongthunhap]) VALUES (N'L00004', N'NV00004', N'2023-01', N'800000', N'0', 16800000)
INSERT [dbo].[tbl_Luong] ([PK_sMaL], [FK_sMaNV], [sThoigian], [sThuong], [sPhat], [fTongthunhap]) VALUES (N'L00005', N'NV00005', N'2023-01', N'900000', N'0', 18900000)
GO
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'a', N'a', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nữ', N'a', N'a', N'a', N'a', CAST(N'2023-03-21T16:46:24.347' AS DateTime), NULL, NULL, NULL, N'Nghỉ làm')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00001', N'Nguyen Van Manh', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Nam', N'001201325412', N'Ha Noi', N'0952678451', N'manhnv@gmail.com', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'CV00001', N'PB00001', 10000000, N'Đang làm việc')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00002', N'Trần Thị B', CAST(N'1990-07-20T00:00:00.000' AS DateTime), N'Nữ', N'234567890123', N'456 Đường 2, Quận 2', N'0987654321', N'ttb@gmail.com', CAST(N'2022-02-01T00:00:00.000' AS DateTime), N'CV00002', N'PB00002', 12000000, N'Đang làm việc')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00003', N'Lê Văn C', CAST(N'1985-08-25T00:00:00.000' AS DateTime), N'Nam', N'345678901234', N'789 Đường 3, Quận 3', N'0901234567', N'lvc@gmail.com', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'CV00003', N'PB00003', 14000000, N'Đang làm việc')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00004', N'Phạm Thị D', CAST(N'1995-09-30T00:00:00.000' AS DateTime), N'Nữ', N'456789012345', N'321 Đường 4, Quận 4', N'0998765432', N'ptd@gmail.com', CAST(N'2022-04-01T00:00:00.000' AS DateTime), N'CV00004', N'PB00004', 16000000, N'Nghỉ làm')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00005', N'Huỳnh Văn E', CAST(N'1992-10-05T00:00:00.000' AS DateTime), N'Nam', N'567890123456', N'654 Đường 5, Quận 5', N'0912345678', N'hve@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'CV00005', N'PB00005', 18000000, N'Đang làm việc')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00006', N'Nguyễn Thị Q', CAST(N'1993-07-14T00:00:00.000' AS DateTime), N'Nữ', N'243546872536', N'45 Đường 4, Quận 4', N'0967543218', N'ntq@gmail.com', CAST(N'2021-05-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'Đang làm việc')
INSERT [dbo].[tbl_Nhanvien] ([PK_sMaNV], [sTenNV], [dNgaysinh], [sGioitinh], [sCCCD], [sDiachi], [sSDT], [sEmail], [dNgayvaolam], [FK_sMaCV], [FK_sMaPB], [fLuongcb], [sTinhtrang]) VALUES (N'NV00007', N'Phạm Văn H', CAST(N'1999-12-20T20:53:23.000' AS DateTime), N'Nam', N'230134565432', N'654 Đường 7, Quận 7', N'0785432164', N'pvh@gmail.com', CAST(N'2019-05-20T20:53:23.000' AS DateTime), NULL, NULL, NULL, N'Đang làm việc')
GO
INSERT [dbo].[tbl_Phongban] ([PK_sMaPB], [sTenPB], [sMota]) VALUES (N'PB00001', N'Phòng Hành chính', N'QL hành chính công ty')
INSERT [dbo].[tbl_Phongban] ([PK_sMaPB], [sTenPB], [sMota]) VALUES (N'PB00002', N'Phòng Kế toán', N'QL tài chính, kế toán công ty')
INSERT [dbo].[tbl_Phongban] ([PK_sMaPB], [sTenPB], [sMota]) VALUES (N'PB00003', N'Phòng Kỹ thuật', N'Phát triển sản phẩm,dịch vụ')
INSERT [dbo].[tbl_Phongban] ([PK_sMaPB], [sTenPB], [sMota]) VALUES (N'PB00004', N'Phòng Kinh doanh', N'Phát triển thị trường,kinh doanh')
INSERT [dbo].[tbl_Phongban] ([PK_sMaPB], [sTenPB], [sMota]) VALUES (N'PB00005', N'Phòng Nhân sự', N'Quản lý nhân viên,đào tạo')
GO
INSERT [dbo].[tbl_Quyen] ([PK_sMaquyen], [sTenquyen]) VALUES (N'Q00001', N'Admin')
INSERT [dbo].[tbl_Quyen] ([PK_sMaquyen], [sTenquyen]) VALUES (N'Q00002', N'Nhân sự')
INSERT [dbo].[tbl_Quyen] ([PK_sMaquyen], [sTenquyen]) VALUES (N'Q00003', N'Nhân viên')
INSERT [dbo].[tbl_Quyen] ([PK_sMaquyen], [sTenquyen]) VALUES (N'Q00004', N'Kế toán')
GO
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'NV00003', N'nv3', N'nv3', N'Dùng', N'TK1680615674102', N'Q00003')
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'NV00004', N'nv4', N'nv4', N'Dùng', N'TK1680615729183', N'Q00003')
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'NV00005', N'ns', N'ns', N'Dùng', N'TK1680615754206', N'Q00002')
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'a', N'admin', N'admin', N'Dùng', N'TK1680615777085', N'Q00001')
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'NV00002', N'kt', N'kt', N'Dùng', N'TK1680616055232', N'Q00004')
INSERT [dbo].[tbl_Taikhoan] ([FK_sMaNV], [s_Taikhoan], [s_Matkhau], [s_Tinhtrang], [PK_sMaTK], [FK_sMaquyen]) VALUES (N'NV00001', N'nv1', N'nv100000', N'Dùng', N'TK1680619592921', N'Q00002')
GO
ALTER TABLE [dbo].[tbl_Hopdong] ADD  CONSTRAINT [Custom_HopDong_ID]  DEFAULT (format(NEXT VALUE FOR [HopDongID],'HD0000#')) FOR [PK_sMaHD]
GO
ALTER TABLE [dbo].[tbl_Bienban]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Bienb__FK_sM__34C8D9D1] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Bienban] CHECK CONSTRAINT [FK__tbl_Bienb__FK_sM__34C8D9D1]
GO
ALTER TABLE [dbo].[tbl_Bonhiem]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Bonhi__FK_Ma__3E52440B] FOREIGN KEY([FK_MaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Bonhiem] CHECK CONSTRAINT [FK__tbl_Bonhi__FK_Ma__3E52440B]
GO
ALTER TABLE [dbo].[tbl_Bonhiem]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Bonhi__FK_Ma__3F466844] FOREIGN KEY([FK_MaCV])
REFERENCES [dbo].[tbl_Chucvu] ([PK_sMaCV])
GO
ALTER TABLE [dbo].[tbl_Bonhiem] CHECK CONSTRAINT [FK__tbl_Bonhi__FK_Ma__3F466844]
GO
ALTER TABLE [dbo].[tbl_Bonhiem]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Bonhi__FK_Ma__403A8C7D] FOREIGN KEY([FK_MaPB])
REFERENCES [dbo].[tbl_Phongban] ([PK_sMaPB])
GO
ALTER TABLE [dbo].[tbl_Bonhiem] CHECK CONSTRAINT [FK__tbl_Bonhi__FK_Ma__403A8C7D]
GO
ALTER TABLE [dbo].[tbl_Chamcong]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Chamc__FK_sM__31EC6D26] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Chamcong] CHECK CONSTRAINT [FK__tbl_Chamc__FK_sM__31EC6D26]
GO
ALTER TABLE [dbo].[tbl_Donxinnghi]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Donxi__FK_sM__4316F928] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Donxinnghi] CHECK CONSTRAINT [FK__tbl_Donxi__FK_sM__4316F928]
GO
ALTER TABLE [dbo].[tbl_Hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hopdong_tbl_Chucvu] FOREIGN KEY([FK_sMaCV])
REFERENCES [dbo].[tbl_Chucvu] ([PK_sMaCV])
GO
ALTER TABLE [dbo].[tbl_Hopdong] CHECK CONSTRAINT [FK_tbl_Hopdong_tbl_Chucvu]
GO
ALTER TABLE [dbo].[tbl_Hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hopdong_tbl_Nhanvien] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Hopdong] CHECK CONSTRAINT [FK_tbl_Hopdong_tbl_Nhanvien]
GO
ALTER TABLE [dbo].[tbl_Hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hopdong_tbl_Phongban] FOREIGN KEY([FK_sMaPB])
REFERENCES [dbo].[tbl_Phongban] ([PK_sMaPB])
GO
ALTER TABLE [dbo].[tbl_Hopdong] CHECK CONSTRAINT [FK_tbl_Hopdong_tbl_Phongban]
GO
ALTER TABLE [dbo].[tbl_Khenthuong_Kyluat]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Khenthuong_Kyluat_tbl_Nhanvien] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Khenthuong_Kyluat] CHECK CONSTRAINT [FK_tbl_Khenthuong_Kyluat_tbl_Nhanvien]
GO
ALTER TABLE [dbo].[tbl_Luong]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Luong__FK_sM__2F10007B] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Luong] CHECK CONSTRAINT [FK__tbl_Luong__FK_sM__2F10007B]
GO
ALTER TABLE [dbo].[tbl_Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Nhanvien_tbl_Chucvu] FOREIGN KEY([FK_sMaCV])
REFERENCES [dbo].[tbl_Chucvu] ([PK_sMaCV])
GO
ALTER TABLE [dbo].[tbl_Nhanvien] CHECK CONSTRAINT [FK_tbl_Nhanvien_tbl_Chucvu]
GO
ALTER TABLE [dbo].[tbl_Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Nhanvien_tbl_Phongban] FOREIGN KEY([FK_sMaPB])
REFERENCES [dbo].[tbl_Phongban] ([PK_sMaPB])
GO
ALTER TABLE [dbo].[tbl_Nhanvien] CHECK CONSTRAINT [FK_tbl_Nhanvien_tbl_Phongban]
GO
ALTER TABLE [dbo].[tbl_Taikhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Taikhoan_tbl_Nhanvien] FOREIGN KEY([FK_sMaNV])
REFERENCES [dbo].[tbl_Nhanvien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_Taikhoan] CHECK CONSTRAINT [FK_tbl_Taikhoan_tbl_Nhanvien]
GO
ALTER TABLE [dbo].[tbl_Taikhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Taikhoan_tbl_Quyen] FOREIGN KEY([FK_sMaquyen])
REFERENCES [dbo].[tbl_Quyen] ([PK_sMaquyen])
GO
ALTER TABLE [dbo].[tbl_Taikhoan] CHECK CONSTRAINT [FK_tbl_Taikhoan_tbl_Quyen]
GO
/****** Object:  StoredProcedure [dbo].[getTaiKhoanTheoTen]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaiKhoanTheoTen]
    @TenTK VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.tbl_Taikhoan WHERE s_Taikhoan = @TenTK;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChucVuPhongBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ChucVuPhongBan]
@PK_sMaNV varchar(10),@FK_sMaCV varchar(10), @FK_sMaPB varchar(10), @fLuongcb float
as
BEGIN
	 UPDATE tbl_Nhanvien
	 SET FK_sMaCV = @FK_sMaCV, FK_sMaPB = @FK_sMaPB, fLuongcb= @fLuongcb
	 Where PK_sMaNV = @PK_sMaNV
end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DoiMatKhau] 
     @s_Taikhoan varchar(20), @s_Matkhau varchar(20)
AS
BEGIN
     UPDATE dbo.tbl_Taikhoan SET s_Matkhau = @s_Matkhau WHERE s_Taikhoan = @s_Taikhoan;     
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaBoNhiem]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaBoNhiem]
 @PK_sMabonhiem varchar(30), @dNgaylap datetime,  @dNgaycohieuluc datetime,  @FK_sMaNV varchar(10),  @FK_sMaCV varchar(10),  @FK_sMaPB varchar(10),  @fLuongmoi float, @sNoidung nvarchar(500)
as
BEGIN
	 UPDATE tbl_Bonhiem
	 SET 
	 dNgaylap = @dNgaylap, dNgaycohieuluc = @dNgaycohieuluc, FK_MaNV = @FK_sMaNV, FK_MaCV = @FK_sMaCV, FK_MaPB = @FK_sMaPB, fLuongmoi= @fLuongmoi, sNoidung= @sNoidung
	 Where PK_sMabonhiem = @PK_sMabonhiem
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaChucVu]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SuaChucVu]
 @PK_sMaCV varchar(30), @sTenCV varchar(30),@fHSL nvarchar(30)
as
BEGIN
	 UPDATE tbl_Chucvu
	 SET 
	 PK_sMaCV = @PK_sMaCV ,sTenCV = @sTenCV,fHSL=@fHSL
	 Where PK_sMaCV = @PK_sMaCV
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaHopDong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SuaHopDong]
 @PK_sMaHD varchar(10), @dNgaykyhd datetime,  @dNgayhethan datetime,  @FK_sMaNV varchar(10),  @FK_sMaCV varchar(10),  @FK_sMaPB varchar(10),  @fLuongcb float
as
BEGIN
	 UPDATE tbl_Hopdong
	 SET 
	 dNgaykyhd = @dNgaykyhd, dNgayhethan = @dNgayhethan, FK_sMaNV = @FK_sMaNV, FK_sMaCV = @FK_sMaCV, FK_sMaPB = @FK_sMaPB, fLuongcb= @fLuongcb 
	 Where PK_sMaHD = @PK_sMaHD
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SuaNhanVien]
@PK_sMaNV varchar(10),@sTenNV nvarchar(30),@dNgaysinh datetime ,@sGioitinh nvarchar(3),@sCCCD varchar(12),@sDiachi nvarchar(50),@sSDT varchar(10),@sEmail varchar(20), @dNgayvaolam datetime, @sTinhtrang nvarchar(20)
as
BEGIN
	 UPDATE tbl_Nhanvien
	 SET 
	 sTenNV = @sTenNV, dNgaysinh = @dNgaysinh, sGioitinh = @sGioitinh, sCCCD = @sCCCD, sDiachi = @sDiachi, sSDT= @sSDT, sEmail = @sEmail, dNgayvaolam = @dNgayvaolam, sTinhtrang = @sTinhtrang
	 Where PK_sMaNV = @PK_sMaNV
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhongBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SuaPhongBan]
 @PK_sMaPB varchar(30), @sTenPB varchar(30),@sMota nvarchar(30)
as
BEGIN
	 UPDATE tbl_Phongban
	 SET 
	 PK_sMaPB = @PK_sMaPB ,sTenPB = @sTenPB,sMota=@sMota
	 Where PK_sMaPB = @PK_sMaPB
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiKhoan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaTaiKhoan]
(   @s_Taikhoan varchar(20), @s_Matkhau varchar(20), @FK_sMaquyen varchar(10), @s_Tinhtrang varchar(20)
)
AS
BEGIN
    UPDATE dbo.tbl_Taikhoan 
    SET s_Matkhau = @s_Matkhau , FK_sMaquyen = @FK_sMaquyen , s_Tinhtrang = @s_Tinhtrang
    WHERE s_Taikhoan = @s_Taikhoan
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Them]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Them] (@PK_sMaTK varchar(10), @FK_sMaNV varchar(10),  @s_Taikhoan varchar(20), @s_Matkhau varchar(20), @FK_sMaquyen varchar(10), @s_Tinhtrang nvarchar(20))
as
begin
insert into tbl_Taikhoan(PK_sMaTK, FK_sMaNV, s_Taikhoan, s_Matkhau, FK_sMaquyen, s_Tinhtrang)
	values (@PK_sMaTK, @FK_sMaNV, @s_Taikhoan, @s_Matkhau, @FK_sMaquyen, @s_Tinhtrang)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemBoNhiem]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemBoNhiem] (@PK_sMabonhiem varchar(30), @dNgaylap datetime,  @dNgaycohieuluc datetime,  @FK_sMaNV varchar(10),  
			@FK_sMaCV varchar(10),  @FK_sMaPB varchar(10),  @fLuongmoi float, @sNoidung nvarchar(500))
as
begin
insert into tbl_Bonhiem (PK_sMabonhiem,dNgaylap,dNgaycohieuluc,FK_MaNV,FK_MaCV,FK_MaPB,fLuongmoi,sNoidung)
	values (@PK_sMabonhiem, @dNgaylap, @dNgaycohieuluc, @FK_sMaNV, @FK_sMaCV, @FK_sMaPB, @fLuongmoi,@sNoidung)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChucVu]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemChucVu] (@PK_sMaCV varchar(30), @sTenCV varchar(30),@fHSL nvarchar(30))
as
begin
insert into tbl_Chucvu(PK_sMaCV,sTenCV,fHSL)
	values (@PK_sMaCV , @sTenCV ,@fHSL)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemHopDong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemHopDong] (@dNgaykyhd datetime,  @dNgayhethan datetime,  @FK_sMaNV varchar(10),  @FK_sMaCV varchar(10),  @FK_sMaPB varchar(10),  @fLuongcb float)
as
begin
insert into tbl_Hopdong (dNgaykyhd,dNgayhethan,FK_sMaNV,FK_sMaCV,FK_sMaPB,fLuongcb)
	values (@dNgaykyhd, @dNgayhethan, @FK_sMaNV, @FK_sMaCV, @FK_sMaPB, @fLuongcb)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemNhanVien] (@PK_sMaNV varchar(10),@sTenNV nvarchar(30),@dNgaysinh datetime ,@sGioitinh nvarchar(3),@sCCCD varchar(12),@sDiachi nvarchar(50),@sSDT varchar(10),@sEmail varchar(20), @dNgayvaolam datetime, @sTinhtrang nvarchar(20))
as
begin
insert into tbl_Nhanvien(PK_sMaNV,sTenNV,dNgaysinh,sGioitinh,sCCCD,sDiachi,sSDT,sEmail, dNgayvaolam, sTinhtrang)
	values (@PK_sMaNV,@sTenNV,@dNgaysinh,@sGioitinh,@sCCCD,@sDiachi,@sSDT,@sEmail, @dNgayvaolam, @sTinhtrang)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhongBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemPhongBan] (@PK_sMaPB varchar(30), @sTenPB varchar(30),@sMota nvarchar(30))
as
begin
insert into tbl_Phongban(PK_sMaPB,sTenPB,sMota)
	values (@PK_sMaPB , @sTenPB ,@sMota )
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemTaiKhoan] (@PK_sMaTK varchar(20), @FK_sMaNV varchar(10),  @s_Taikhoan varchar(20), @s_Matkhau varchar(20), @FK_sMaquyen varchar(10), @s_Tinhtrang nvarchar(20))
AS
BEGIN
INSERT INTO tbl_Taikhoan(PK_sMaTK, FK_sMaNV, s_Taikhoan, s_Matkhau, FK_sMaquyen, s_Tinhtrang)
	VALUES (@PK_sMaTK, @FK_sMaNV, @s_Taikhoan, @s_Matkhau, @FK_sMaquyen, @s_Tinhtrang)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTinhTrang]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateTinhTrang](@PK_sMaTK nvarchar(20))
AS
BEGIN
    --DELETE FROM dbo.tbl_Taikhoan WHERE PK_sMaTK = @PK_sMaTK;
    UPDATE dbo.tbl_Taikhoan SET s_Tinhtrang = 'Không hoạt động' WHERE PK_sMaTK = @PK_sMaTK;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaBoNhiem]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaBoNhiem]
@PK_sMabonhiem VARCHAR(30)
AS 
	BEGIN
	DELETE tbl_Bonhiem WHERE PK_sMabonhiem = @PK_sMabonhiem
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaChucVu]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_XoaChucVu]
@PK_sMaCV VARCHAR(10)
AS 
	BEGIN
	DELETE tbl_Chucvu WHERE PK_sMaCV = @PK_sMaCV
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaHopDong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaHopDong]
@PK_sMaHD VARCHAR(10)
AS 
	BEGIN
	DELETE tbl_Hopdong WHERE PK_sMaHD = @PK_sMaHD
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNhanVien]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaNhanVien]
@PK_sMaNV VARCHAR(10)
AS 
	BEGIN
		UPDATE tbl_Nhanvien
		SET sTinhtrang = N'Nghỉ làm'
		Where PK_sMaNV = @PK_sMaNV
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaPhongBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_XoaPhongBan]
@PK_sMaPB VARCHAR(10)
AS 
	BEGIN
	DELETE tbl_Phongban WHERE PK_sMaPB = @PK_sMaPB
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaTaiKhoan] 
     @s_Taikhoan nvarchar(20)
AS
BEGIN
     --UPDATE dbo.tbl_Taikhoan SET FK_sMaNV = NULL WHERE PK_sMaTK = @PK_sMaTK;
     DELETE FROM dbo.tbl_Taikhoan WHERE s_Taikhoan = @s_Taikhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[suaBienBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaBienBan](
    @Mabienban VARCHAR(12),
	@Ngaylap DATE,
	@MaNV NVARCHAR(12),
	@MaCV NVARCHAR(12),
	@MaPB NVARCHAR(12),
	@NoiDungDG NVARCHAR(30))
AS
UPDATE tbl_Bienban

SET dNgaylap = @Ngaylap,FK_sMaNV = @MaNV,FK_sMaCV = @MaCV,FK_sMaPB = @MaPB,sNddanhgia = @NoiDungDG
WHERE PK_sMabienban = @Mabienban
GO
/****** Object:  StoredProcedure [dbo].[suaKhenThuong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[suaKhenThuong](
    @MaQD VARCHAR(12),
	@Ngaylap DATE,
	@Loaiquyetdinh VARCHAR(15),
	@MaNV NVARCHAR(12),
	@Muckhenthuong VARCHAR(30),
	@Lydo DATE)
AS
UPDATE tbl_Khenthuong_Kyluat
SET dNgaylap = @Ngaylap,sLoaiquyetdinh = @Loaiquyetdinh,FK_sMaNV = @MaNV,fMuckhenthuong = @Muckhenthuong,sLydo = @Lydo
WHERE PK_sMaQD = @MaQD
GO
/****** Object:  StoredProcedure [dbo].[themBienBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themBienBan](
	@Mabienban VARCHAR(12),
	@Ngaylap DATE,
	@MaNV NVARCHAR(12),
	@MaCV NVARCHAR(12),
	@MaPB NVARCHAR(12),
	@NoiDungDG VARCHAR(30))
AS 
INSERT INTO tbl_Bienban(PK_sMabienban,dNgaylap,FK_sMaNV,FK_sMaCV,FK_sMaPB,sNddanhgia)
VALUES(@Mabienban, @Ngaylap, @MaNV,@MaCV, @MaPB, @NoiDungDG)
GO
/****** Object:  StoredProcedure [dbo].[themKhenThuong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[themKhenThuong](
	@MaQD VARCHAR(12),
	@Ngaylap DATE,
	@Loaiquyetdinh VARCHAR(15),
	@MaNV NVARCHAR(12),
	@Muckhenthuong VARCHAR(30),
	@Lydo DATE)
AS 
INSERT INTO tbl_Khenthuong_Kyluat(PK_sMaQD,dNgaylap,sLoaiquyetdinh,FK_sMaNV,fMuckhenthuong,sLydo)
VALUES(@MaQD, @Ngaylap, @Loaiquyetdinh, @MaNV,@Muckhenthuong,@Lydo)
GO
/****** Object:  StoredProcedure [dbo].[timBienBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[timBienBan]
@Mabienban NVARCHAR(20)
AS
BEGIN
	SELECT PK_sMabienban,dNgaylap,FK_sMaNV,FK_sMaCV,FK_sMaPB,sNddanhgia FROM tbl_Bienban
	WHERE PK_sMabienban = @Mabienban
END
GO
/****** Object:  StoredProcedure [dbo].[timKhenThuong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[timKhenThuong]
@MaQD NVARCHAR(20)
AS
BEGIN
	SELECT PK_sMaQD,dNgaylap,sLoaiquyetdinh,FK_sMaNV,fMuckhenthuong,sLydo FROM tbl_Khenthuong_Kyluat
	WHERE PK_sMaQD = @MaQD
END
GO
/****** Object:  StoredProcedure [dbo].[xoaBienBan]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaBienBan]
@Mabienban VARCHAR(12)
AS DELETE FROM tbl_Bienban
WHERE PK_sMabienban = @Mabienban
GO
/****** Object:  StoredProcedure [dbo].[xoaKhenThuong]    Script Date: 9/23/2023 9:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[xoaKhenThuong]
@MaQD NVARCHAR(12)
AS DELETE FROM tbl_Khenthuong_Kyluat
WHERE @MaQD = PK_sMaQD
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -120
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 338
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_Khenthuong_Kyluat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_Khenthuong_Kyluat'
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhanVien] SET  READ_WRITE 
GO
