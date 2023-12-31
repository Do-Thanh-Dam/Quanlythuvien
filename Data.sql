USE [SQL123]
GO
/****** Object:  Table [dbo].[DatMua]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatMua](
	[MaNCC] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](255) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[NgayGiao] [datetime] NULL,
	[DonGia] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [nvarchar](50) NOT NULL,
	[HoTenDG] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiDG] [nvarchar](255) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muon]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon](
	[MaPM] [nvarchar](50) NULL,
	[MaSach] [nvarchar](50) NULL,
	[NgayThucTra] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[SDT] [nvarchar](25) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [nvarchar](50) NOT NULL,
	[TenNXB] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPM] [nvarchar](50) NOT NULL,
	[MaThe] [nvarchar](50) NULL,
	[NgayMuon] [datetime] NULL,
	[NgayHenTra] [datetime] NULL,
 CONSTRAINT [PK_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[MaNXB] [nvarchar](50) NULL,
	[MaTL] [nvarchar](50) NULL,
	[MaTG] [nvarchar](50) NULL,
	[TenSach] [nvarchar](max) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[Tinhtrang] [nvarchar](50) NULL,
	[NgayXuatBan] [datetime] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [nvarchar](50) NOT NULL,
	[HoTenTG] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [nvarchar](50) NOT NULL,
	[TenTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 6/12/2022 10:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[MaThe] [nvarchar](50) NOT NULL,
	[MaDG] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayCap] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
 CONSTRAINT [PK_TheThuVien] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC01', N'NV03', N'Hơn cả khởi nghiệp', N'15', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'450.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC02', N'NV01', N'Những quy luật mới của bán hàng và dịch vụ', N'5', CAST(N'2022-06-20T00:00:00.000' AS DateTime), N'500.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC04', N'NV05', N'Thay đổi một suy nghĩ thay đổi cả cuộc đời', N'5', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'150.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC04', N'NV05', N'Ra bờ suối ngắm hoa kèn hồng', N'5', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'124.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC02', N'NV01', N'Xóm Cầu mới', N'2', CAST(N'2022-06-20T00:00:00.000' AS DateTime), N'290.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC05', N'NV03', N'Nơi chỉ người đọc sách mới có thể chạm tới', N'3', CAST(N'2022-07-02T00:00:00.000' AS DateTime), N'70.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC01', N'NV03', N'Những đứa trẻ đuổi theo tinh tú', N'1', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'40.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC05', N'NV04', N'Sống sót ở trường trung học', N'5', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'55.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC02', N'NV01', N'Những quy luật của bản chất con người', N'12', CAST(N'2022-06-27T00:00:00.000' AS DateTime), N'245.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC04', N'NV05', N'Xấu thế nào, Đẹp ra sao', N'6', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'133.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC05', N'NV02', N'Thế giới đầy khoảng trống', N'3', CAST(N'2022-06-25T00:00:00.000' AS DateTime), N'75.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC06', N'NV04', N'Thiên nga đen', N'1', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'210.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC01', N'NV01', N'Thế giới sẽ ra sao?', N'2', CAST(N'2022-06-20T00:00:00.000' AS DateTime), N'90.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC04', N'NV05', N'Đọc để trưởng thành', N'3', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'320.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC01', N'NV03', N'Ngỡ như lương thiện hóa ra mềm yếu', N'2', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'100.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC03', N'NV06', N'Thư viện nửa đêm', N'4', CAST(N'2022-06-30T00:00:00.000' AS DateTime), N'130.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC07', N'NV07', N'Thiên tài bên trái, kẻ điên bên phải', N'5', CAST(N'2022-06-24T00:00:00.000' AS DateTime), N'120.000')
INSERT [dbo].[DatMua] ([MaNCC], [MaNV], [TenSach], [SoLuong], [NgayGiao], [DonGia]) VALUES (N'NCC07', N'NV01', N'Tôi vẫn còn xa mới trưởng thành', N'2', CAST(N'2022-06-20T00:00:00.000' AS DateTime), N'75.000')
GO
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG01', N'Nguyễn Thúy An', CAST(N'2003-03-29T00:00:00.000' AS DateTime), N'06576245675', N'Số 1 Võ Văn Ngân')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG02', N'Nguyễn Mai Thảo', CAST(N'2004-02-12T00:00:00.000' AS DateTime), N'0987654321', N'Số 1 Hoàng Diệu 2')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG03', N'Lê Đan Tú', CAST(N'2000-01-30T00:00:00.000' AS DateTime), N'0987654456', N'36 Hoàng Diệu 2')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG04', N'Huỳnh Hoài An', CAST(N'2003-08-13T00:00:00.000' AS DateTime), N'0567568765', N'435 Lê Văn Việt')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG05', N'Lê Tuấn Anh', CAST(N'1999-04-23T00:00:00.000' AS DateTime), N'0456765123', N'23 Nguyễn Bá Luật')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG06', N'Trương Đức GIang', CAST(N'2002-12-31T00:00:00.000' AS DateTime), N'0987654345', N'22 Nguyễn Xuân Hợp')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG07', N'Trần Minh Đức', CAST(N'2003-03-23T00:00:00.000' AS DateTime), N'0876812324', N'23 Lê Thị Riêng')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG08', N'Nguyễn Văn Ý', CAST(N'1996-03-25T00:00:00.000' AS DateTime), N'0654354675', N'44 Đỗ Xuân Hợp')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG09', N'Nguyễn Thị Lệ', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'0987652138', N'26 Đồng Khởi')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG10', N'Mạc Thị Linh', CAST(N'2004-02-23T00:00:00.000' AS DateTime), N'0654126754', N'44 Nguyễn Thái Học')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG11', N'Ngô Đình Nam', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'0984321345', N'238 Hoàng Diệu 2')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG12', N'Lê Văn Bá', CAST(N'2000-05-25T00:00:00.000' AS DateTime), N'0976543217', N'333 Lê Đình Thám')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG13', N'Vũ Tuấn Đức', CAST(N'2002-02-12T00:00:00.000' AS DateTime), N'0987456345', N'200 Dương Thị Giang')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG14', N'Nguyễn Quốc Hương', CAST(N'1995-05-30T00:00:00.000' AS DateTime), N'0982345654', N'45 Minh Phụng')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG15', N'Đặng Thái Sơn', CAST(N'2004-03-15T00:00:00.000' AS DateTime), N'0975432123', N'34 Lê Văn Chí')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG16', N'Nguyễn Trà Giang', CAST(N'2003-03-13T00:00:00.000' AS DateTime), N'0912345654', N'1 Lê Văn Chí')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG17', N'Bùi Đình Hạc', CAST(N'2000-07-23T00:00:00.000' AS DateTime), N'0354654345', N'56 Minh Phụng')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG18', N'Phạm Văn Khoa', CAST(N'2001-08-21T00:00:00.000' AS DateTime), N'0367567432', N'26 Lê Thị Riêng')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG19', N'Nguyễn Hồng Sến', CAST(N'1998-09-19T00:00:00.000' AS DateTime), N'0367678897', N'45 Lê Văn Việt')
INSERT [dbo].[DocGia] ([MaDG], [HoTenDG], [NgaySinh], [SDT], [DiaChiDG]) VALUES (N'DG20', N'Phạm Chương', CAST(N'1997-05-04T00:00:00.000' AS DateTime), N'0334546765', N'66 Hoàng Hoa Thám')
GO
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM01', N'MS05', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM02', N'MS02', CAST(N'2021-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM03', N'MS07', CAST(N'2021-07-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM04', N'MS10', CAST(N'2021-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM05', N'MS01', CAST(N'2021-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM10', N'MS03', CAST(N'2022-07-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM16', N'MS05', CAST(N'2022-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM07', N'MS04', CAST(N'2022-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM08', N'MS07', CAST(N'2021-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM09', N'MS12', CAST(N'2019-12-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM10', N'MS12', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM11', N'MS19', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM12', N'MS09', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM13', N'MS19', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM14', N'MS10', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM15', N'MS12', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM16', N'MS11', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM17', N'MS14', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM18', N'MS19', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM19', N'MS09', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM06', N'MS06', NULL)
INSERT [dbo].[Muon] ([MaPM], [MaSach], [NgayThucTra]) VALUES (N'PM20', N'MS11', NULL)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC01', N'Công ty TNHH Thành Long', N'0987878654', N'01 Lê Văn Chí')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC02', N'Công ty cổ phần MCBooks', N'0979654321', N'484 Lê Văn Việt')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC03', N'Nha Sách trực tuyến bookbuys', N'0365234568', N'15 Lê Văn Chí')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC04', N'DanaBook', N'0988066120', N'244 Hoàng Diệu 2')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC05', N'Tigont', N'0345987654', N'324 Pasteur')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC06', N'Công ty sách Anh Thư', N'0976543216', N'41 Hoàng Diệu')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC07', N'Công ty Mai Phương', N'0985435678', N'04 Nguyễn Công Trứ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC08', N'Hello Book', N'0376456543', N'67 Nguyễn Văn Trỗi')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC09', N'Công ty sách Trí Tuệ', N'0333546765', N'56 Nguyễn Thái Học')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (N'NCC10', N'Công ty sách Đăng Nguyên', N'0336541239', N'432 Lạc Long Quân')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV01', N'Dương Thị Đào', N'Nữ', N'0365120064', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV02', N'Trần Cẩm Thi', N'Nữ', N'0965435456', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV03', N'Đỗ Thanh Đạm', N'Nam', N'0367554783', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV04', N'Phan Nguyễn Quỳnh Thư', N'Nữ', N'0986765454', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV05', N'Trần Huyền Linh', N'Nữ', N'0987654654', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV06', N'Đỗ Nguyễn Hiểu Đan', N'Nữ', N'0913654454', N'Thủ Thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV07', N'Võ Thị Minh Thực', N'Nữ', N'0356456765', N'Thủ thư')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV08', N'Hoàng Ngọc Chi', N'Nữ', N'0987453421', N'Chuyên viên xử lý thông tin')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV09', N'Trần Cao Thảo', N'Nam', N'0988765453', N'Chuyên viên dịch vụ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [SDT], [ChucVu]) VALUES (N'NV10', N'Trần Ánh Ngọc', N'Nữ', N'0336543256', N'Chuyên viên lập trình hệ thống')
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB01', N'Trẻ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB02', N'Kim Đồng')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB03', N'Tổng hợp thành phố Hồ Chí Minh')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB04', N'Giáo Dục')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB05', N'Lao Động')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB06', N'Đại học Quốc gia Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB07', N'Alphabooks')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB08', N'Nhã Nam')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB09', N'Đông Tây')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB10', N'Phương Nam Books')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB11', N'First News')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB12', N'Thái Hà Books')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB13', N'Alpha Books')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB14', N'Chính trị quốc gia')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB15', N'Hồng Đức')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB16', N'Phụ nữ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB17', N'Sân khấu')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB18', N'Tôn Giáo')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB19', N'Tài Chính')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'XB20', N'Giáo dục')
GO
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM01', N'TTV01', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2019-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM02', N'TTV02', CAST(N'2019-03-01T00:00:00.000' AS DateTime), CAST(N'2019-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM03', N'TTV02', CAST(N'2019-05-04T00:00:00.000' AS DateTime), CAST(N'2019-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM04', N'TTV04', CAST(N'2019-06-06T00:00:00.000' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM05', N'TTV05', CAST(N'2019-09-09T00:00:00.000' AS DateTime), CAST(N'2019-10-09T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM06', N'TTV06', CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM07', N'TTV07', CAST(N'2020-04-03T00:00:00.000' AS DateTime), CAST(N'2020-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM08', N'TTV08', CAST(N'2020-06-05T00:00:00.000' AS DateTime), CAST(N'2020-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM09', N'TTV09', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM10', N'TTV10', CAST(N'2021-04-22T00:00:00.000' AS DateTime), CAST(N'2021-05-22T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM11', N'TTV11', CAST(N'2021-06-26T00:00:00.000' AS DateTime), CAST(N'2021-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM12', N'TTV19', CAST(N'2021-06-26T00:00:00.000' AS DateTime), CAST(N'2021-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM13', N'TTV16', CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM14', N'TTV08', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM15', N'TTV09', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM16', N'TTV15', CAST(N'2022-03-28T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM17', N'TTV15', CAST(N'2022-04-14T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM18', N'TTV12', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-06-17T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM19', N'TTV15', CAST(N'2022-06-12T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuon] ([MaPM], [MaThe], [NgayMuon], [NgayHenTra]) VALUES (N'PM20', N'TTV19', CAST(N'2022-06-12T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS01', N'XB02', N'TL09', N'TG01', N'Tôi tài giỏi, bạn cũng thế', N'5', N'Còn', CAST(N'2012-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS02', N'XB05', N'TL09', N'TG02', N'Đắc Nhân Tâm', N'2', N'Hết', CAST(N'2017-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS03', N'XB04', N'TL02', N'TG03', N'Tội ác và giả tưởng', N'2', N'Còn', CAST(N'2019-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS04', N'XB02', N'TL02', N'TG04', N'Nhà Giả Kim', N'1', N'Còn', CAST(N'2020-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS05', N'XB01', N'TL01', N'TG05', N'Bắt trẻ đồng xanh', N'2', N'Còn', CAST(N'2012-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS06', N'XB10', N'TL19', N'TG06', N'Xách ba lô lên và đi', N'1', N'Hết', CAST(N'2010-12-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS07', N'XB12', N'TL12', N'TG07', N'Cứ đi rồi sẽ đến', N'7', N'Còn', CAST(N'2008-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS08', N'XB05', N'TL11', N'TG08', N'7 Thói quen để thành đạt', N'2', N'Hết', CAST(N'2012-01-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS09', N'XB02', N'TL01', N'TG09', N'Thép đã tôi thế đấy', N'14', N'Còn', CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS10', N'XB06', N'TL03', N'TG10', N'Đọc vị bất kỳ ai', N'1', N'Hết', CAST(N'2028-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS11', N'XB02', N'TL12', N'TG11', N'Cuộc đời của Pi', N'3', N'Còn', CAST(N'2019-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS12', N'XB07', N'TL15', N'TG12', N'Code Dạo Ký Sự', N'30', N'Còn', CAST(N'2019-12-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS13', N'XB06', N'TL05', N'TG13', N'Giáo trình Kỹ thuật lập trình C căn Bản', N'30', N'Hết', CAST(N'2018-06-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS14', N'XB03', N'TL08', N'TG14', N'Hacker Lược Sử', N'13', N'hết', CAST(N'2020-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS15', N'XB04', N'TL10', N'TG03', N'Sức mạnh của thói quen', N'3', N'Hết', CAST(N'2018-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS16', N'XB02', N'TL02', N'TG05', N'Tư duy nhanh và chậm', N'6', N'Còn', CAST(N'2021-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS17', N'XB04', N'TL01', N'TG02', N'Điểm bùng phát', N'1', N'Hết', CAST(N'2015-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS18', N'XB01', N'TL01', N'TG05', N'Im lặng', N'2', N'Còn', CAST(N'2008-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS19', N'XB02', N'TL04', N'TG03', N'Dám Nghĩ Lơn', N'3', N'Còn', CAST(N'2012-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [MaNXB], [MaTL], [MaTG], [TenSach], [SoLuong], [Tinhtrang], [NgayXuatBan]) VALUES (N'MS20', N'XB02', N'TL09', N'TG05', N'Bí quyết thay đổi khi trở lên khó khăn', N'5', N'Hết', CAST(N'2013-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG01', N'Adam Khoo')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG02', N'Dale Carnegie')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG03', N'Dostoevsky')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG04', N'Paulo Coelho')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG05', N'J.D.Salinger')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG06', N'Huyền Chip')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG07', N'Minh DeltaViet')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG08', N'Stephen R.Covey')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG09', N'Pavel Korchagin')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG10', N'David J.Lieberman')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG11', N'Yann Martel')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG12', N'Phạm Huy Hoàng')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG13', N'Phạm Hoàng Cao A')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG14', N'Steven Levy')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG15', N'Nguyễn Khắc Nhật')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG16', N'Susan Cain')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG17', N'Chip')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG18', N'Dan Heath')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG19', N'Gustave Le Bon')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG20', N'Robert Cialdini')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG21', N'Dan Ariely')
INSERT [dbo].[TacGia] ([MaTG], [HoTenTG]) VALUES (N'TG22', N'Daniel Goleman')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL01', N'Trinh thám')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL02', N'Tâm Lý')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL03', N'Thiếu Nhi')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL04', N'Chính trị')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL05', N'Giáo Trình')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL07', N'Khoa học công nghệ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL08', N'Kinh dị')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL09', N'Kỹ năng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL10', N'Nấu ăn')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL11', N'Lịch sử')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL12', N'Giả tưởng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL13', N'Tình cảm')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL14', N'Kinh tế')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL15', N'Lập Trình')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL16', N'Tham khảo')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL17', N'Ôn Thi')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL18', N'Bài Tập')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL19', N'Du Lịch')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL20', N'Làm đẹp')
GO
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV01', N'DG01', N'NV01', CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2019-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV02', N'DG02', N'NV01', CAST(N'2019-02-01T00:00:00.000' AS DateTime), CAST(N'2019-08-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV03', N'DG03', N'NV02', CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-09-04T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV04', N'DG04', N'NV03', CAST(N'2019-03-06T00:00:00.000' AS DateTime), CAST(N'2019-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV05', N'DG05', N'NV01', CAST(N'2019-07-03T00:00:00.000' AS DateTime), CAST(N'2020-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV06', N'DG06', N'NV04', CAST(N'2020-01-15T00:00:00.000' AS DateTime), CAST(N'2020-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV07', N'DG07', N'NV05', CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2020-09-02T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV08', N'DG08', N'NV06', CAST(N'2020-04-05T00:00:00.000' AS DateTime), CAST(N'2020-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV09', N'DG09', N'NV01', CAST(N'2020-10-10T00:00:00.000' AS DateTime), CAST(N'2021-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV10', N'DG10', N'NV04', CAST(N'2021-02-22T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV11', N'DG11', N'NV07', CAST(N'2021-02-25T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV12', N'DG12', N'NV01', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-07-17T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV13', N'DG13', N'NV01', CAST(N'2022-02-02T00:00:00.000' AS DateTime), CAST(N'2022-08-02T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV14', N'DG14', N'NV02', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV15', N'DG15', N'NV04', CAST(N'2022-03-15T00:00:00.000' AS DateTime), CAST(N'2022-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV16', N'DG16', N'NV05', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-10-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV17', N'DG17', N'NV02', CAST(N'2022-04-18T00:00:00.000' AS DateTime), CAST(N'2022-10-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV18', N'DG18', N'NV01', CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV19', N'DG19', N'NV05', CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TheThuVien] ([MaThe], [MaDG], [MaNV], [NgayCap], [NgayHetHan]) VALUES (N'TTV20', N'DG20', N'NV04', CAST(N'2022-06-05T00:00:00.000' AS DateTime), CAST(N'2022-12-05T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[DatMua]  WITH CHECK ADD  CONSTRAINT [FK_DatMua_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[DatMua] CHECK CONSTRAINT [FK_DatMua_NhaCungCap]
GO
ALTER TABLE [dbo].[DatMua]  WITH CHECK ADD  CONSTRAINT [FK_DatMua_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DatMua] CHECK CONSTRAINT [FK_DatMua_NhanVien]
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_PhieuMuon] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PhieuMuon] ([MaPM])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_PhieuMuon]
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_Sach]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_TheThuVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThuVien_DocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[TheThuVien] CHECK CONSTRAINT [FK_TheThuVien_DocGia]
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThuVien_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TheThuVien] CHECK CONSTRAINT [FK_TheThuVien_NhanVien]
GO
