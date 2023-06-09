USE [master]
GO
/****** Object:  Database [PRJ301_SP23_BL5_E1]    Script Date: 26/04/2023 4:39:12 CH ******/
CREATE DATABASE [PRJ301_SP23_BL5_E1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SP23_BL5_E1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\PRJ301_SP23_BL5_E1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SP23_BL5_E1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\PRJ301_SP23_BL5_E1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SP23_BL5_E1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_SP23_BL5_E1', N'ON'
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET QUERY_STORE = OFF
GO
USE [PRJ301_SP23_BL5_E1]
GO
/****** Object:  Table [dbo].[Account_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE163447](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_HE163447](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE163447](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE163447](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_HE163447](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_HE163447](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_HE163447]    Script Date: 26/04/2023 4:39:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_HE163447](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE163447] ON 

INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'q ', N'123456', 1, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (45, N'admin', N'123456', 0, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (46, N'quan', N'1', 0, 0, 1)
INSERT [dbo].[Account_HE163447] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (47, N'   ', N'   ', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Account_HE163447] OFF
GO
SET IDENTITY_INSERT [dbo].[Category_HE163447] ON 

INSERT [dbo].[Category_HE163447] ([cid], [cname]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Category_HE163447] ([cid], [cname]) VALUES (2, N'GUCCI')
INSERT [dbo].[Category_HE163447] ([cid], [cname]) VALUES (3, N'BURBERRY')
INSERT [dbo].[Category_HE163447] ([cid], [cname]) VALUES (4, N'DOLCE & GABBANA')
SET IDENTITY_INSERT [dbo].[Category_HE163447] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail_HE163447] ON 

INSERT [dbo].[OrderDetail_HE163447] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Áo Polo Gucci Jacquard Striped', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/ao-polo-gucci-jacquard-striped-polo-shirt-phoi-mau-size-s-6230070b491da-15032022102459.jpg', 140, 1)
INSERT [dbo].[OrderDetail_HE163447] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Áo Polo Adidas Tennis ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/10/ao-polo-adidas-tennis-club-gl5437-mau-den-size-m-617a24517e93f-28102021111721.jpg', 150, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail_HE163447] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_HE163447] ON 

INSERT [dbo].[Orders_HE163447] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders_HE163447] OFF
GO
SET IDENTITY_INSERT [dbo].[product_HE163447] ON 

INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Áo Polo Gucci Jacquard Striped', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/ao-polo-gucci-jacquard-striped-polo-shirt-phoi-mau-size-s-6230070b491da-15032022102459.jpg', 140.0000, N'Áo Polo Gucci Jacquard Striped Polo Shirt Phối Màu Size S', N'Áo Polo Gucci Jacquard Striped Polo Shirt Phối Màu được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu. Họa tiết kẻ ngang tren áo nhiều màu tạo điểm nhấn vô cùng độc đáo.', 2, 1)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Áo Polo Adidas Tennis ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/10/ao-polo-adidas-tennis-club-gl5437-mau-den-size-m-617a24517e93f-28102021111721.jpg', 150.0000, N'Áo Polo Adidas Tennis Club GL5437 Màu Đen Size M', N'Áo Polo Adidas Tennis Club GL5437 được làm từ chất liệu 100% polyester, mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Đây chính là chiếc áo đá bóng hay hoạt động thể thao, tenis hay đi làm mà các bạn nam không thể bỏ lỡ.', 1, 6)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Áo Polo Gucci Logo-Patch Shirt', N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-logo-patch-shirt-mau-xanh-la-620c9736470e6-16022022131830.jpg', 160.0000, N'Áo Polo Gucci Logo-Patch Shirt Màu Xanh Lá', N'Áo Polo Gucci Logo-Patch Shirt Màu Xanh Lá được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu. Họa tiết logo thương hiệu Gucici phía ngực áo tạo điểm nhấn vô cùng độc đáo.', 2, 7)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Áo Khoác Lông Vũ Adidas', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/01/ao-khoac-long-vu-adidas-essentials-midweight-down-hooded-jacket-black-gt9141-mau-den-size-m-61d42312128a1-04012022173602.jpg', 170.0000, N'Áo Khoác Lông Vũ Adidas Essentials Midweight Down Hooded Jacket Black GT9141 Màu Đen Size M', N'Áo Khoác Adidas Essentials Midweight Down Hooded Jacket Black GT9141 được làm từ chất liệu vải cao cấp, mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Bạn vừa có thể mặc đi chơi, dạo phố, du lịch... Đây là một mẫu áo dành cho những bạn yêu thích sự đơn giản nhưng không kém phần nổi bật và cuốn hút.', 1, 14)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Áo Polo Gucci Cotton Polo', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-cotton-polo-with-bee-mau-xanh-navy-size-m-620b379a70dee-15022022121818.jpg', 120.0000, N'Áo Polo Gucci Cotton Polo With Bee Màu Xanh Navy Size M', N'Áo Gucci Cotton Polo With Bee Màu Xanh Navy được làm từ chất vải Cotton thoáng mát mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết. Áo mềm mịn, không nhăn, không xù, không phai màu.Áo thiết kế cổ bẻ, tay dài mang lại cảm giác năng động, trẻ trung. Với chiếc áo thời trang này bạn có thể mặc trong nhiều hoàn cảnh khác nhau từ công sở lịch lãm đến thời trang mặc thường nhật hàng ngày...', 2, 6)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Áo Phông Adidas Graphic Foil', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/11/ao-phong-adidas-graphic-foil-logo-gl3704-mau-xanh-navy-size-m-61a49d4b1dcb4-29112021162843.jpg', 130.0000, N'Áo Phông Adidas Graphic Foil Logo GL3704 Màu Xanh Navy Size M', N'Áo Adidas Graphic Foil Logo GL3704 được làm từ chất liệu 100% cotton mang lại sự thoải mái, thoáng mát cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Áo mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Đây chính là chiếc áo đá bóng hay hoạt động thể thao, tenis hay đi làm mà các bạn nam không thể bỏ lỡ.', 1, 7)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Quần Thể Thao Adidas Word Woven Pants', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/11/quan-the-thao-adidas-word-woven-pants-gl8679-mau-den-size-s-61922f87b2a54-15112021165935.jpg', 100.0000, N'Quần Thể Thao Adidas Word Woven Pants GL8679 Màu Đen Size S', N'Quần Adidas Word Woven Pants GL8679 được làm từ chất liệu vải cao cấp, mang lại sự thoải mái, thoáng mát cho người mặc. Form quần chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.

Quần mềm mịn, không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Bạn vừa có thể mặc đi chơi, dạo phố, du lịch... Đây là một mẫu quần dành cho những chàng trai yêu thích sự đơn giản nhưng không kém phần nổi bật và cuốn hút.', 1, 1)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Quần Short Burberry Guildes', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-guildes-check-swim-shorts-5e6f2d4d4e467-16032020143957.jpg', 180.0000, N'Quần Short Burberry Guildes Check Swim Shorts', N'- Quần được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc.

- Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

- Quần họa tiết trang trí sọc ô vuông tạo điểm nhấn. 

Với chiếc quần thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu quần dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 14)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Áo Thun Dolce & Gabbana Short', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-thun-dolce-gabbana-short-sleeve-t-shirt-mau-xam-den-62062ac681f6f-11022022162214.jpg', 100.0000, N'Áo Thun Dolce & Gabbana Short Sleeve T-Shirt Màu Xám Đen', N'Áo Thun Dolce & Gabbana Short Sleeve T-Shirt Màu Xám Đen được làm từ chất vải cotton, polyester thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

Áo cổ tròn, tay ngắn với họa tiết trang trí viền kẻ đỏ-vàng tạo điểm nhấn độc đáo. Màu sắc áo đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 6)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Áo Sơ Mi Burberry Check Cotton ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-so-mi-burberry-check-cotton-poplin-shirt-size-m-620713a007892-12022022085544.jpg', 100.0000, N'Áo Sơ Mi Burberry Check Cotton Poplin Shirt Size M', N'Áo Sơ Mi Burberry Check Cotton được may từ chất liệu vải Cotton cao cấp với nhiều ưu điểm nổi trội như bề mặt vải mịn, nhẹ, không xù, không co khi giặt, thoáng khí, đem đến cho phái mạnh sự thoải mái tối đa. Sản phẩm có đường chỉ may tỉ mỉ, tinh tế.Bạn có thể kết hợp áo với nhiều trang phục và phụ kiện khác nhau để diện trong những đi chơi, dạo phố cùng bạn bè hoặc có thể mặc đi làm.', 3, 1)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Áo Sơ Mi Burberry Brit Short', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2019/07/ao-so-mi-burberry-brit-short-sleeve-check-cotton-shirt-size-m-5d1d6b0e7b334-04072019095718.jpg', 120.0000, N'Áo Sơ Mi Burberry Brit Short Sleeve Check Cotton Shirt Size M', N'Burberry là một hãng thời trang sang trọng của Anh, phân phối quần áo thể thao độc đáo sang trọng, phụ kiện thời trang, nước hoa, kính mát, và mỹ phẩm.

Thương hiệu Burberry là 1 trong những tượng đài của thời trang thế giới, với phong cách hiện đại, lịch lãm và mang đậm bản sắc tinh thần của vương quốc Anh. Đặc trưng của Burberry từ ban đầu đến nay vẫn là phong cách lịch lãm, đơn giản và toát lên một vẻ lạnh lùng độc đáo.', 3, 7)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Quần Shorts Dolce & Gabbana Embroidered ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/03/quan-shorts-dolce-gabbana-embroidered-logo-swimming-trunks-mau-den-62300ee13023f-15032022105825.jpg', 120.0000, N'Quần Shorts Dolce & Gabbana Embroidered Logo Swimming Trunks Màu Đen', N'Quần Shorts Dolce & Gabbana Embroidered Logo Swimming Trunks Màu Đen được làm từ chất liệu vải polyester cao cấp, mang lại sử thoải mái, thoáng mát cho người mặc. 

Kiểu dáng: theo form chuẩn mới nhất, Kiểu dáng trên gối, ôm nhẹ tạo cảm giác thoải mái khi sử dụng.
Thiết kế tiện lợi, lưng thun, dây rút co giãn, tự điều chỉnh phù hợp
Mặc đi tập gym, café, du lịch, mặc nhà, mặc nhóm đều ổn
Màu sắc: ĐEN cực dễ phối đồ,
Chất liệu cao cấp, co giãn tối đa thoải mái vận động
Đặc biệt: chống nhăn tuyệt đối, không sợ gây nóng bức, khó chịu và thoáng khí.', 4, 7)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Áo Khoác Burberry Band Collar', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-khoac-burberry-band-collar-track-jacket-mau-den-size-m-620a18ab6a1a8-14022022155403.jpg', 165.0000, N'Áo Khoác Burberry Band Collar Track Jacket Màu Đen Size M', N'Áo Khoác Burberry Band Collar Track Jacket được làm từ chất liệu vải cao cấp mang lại sự thoải mái cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.Áo không nhăn, không xù, không phai màu. Màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau theo sở thích của bản thân.

Với chiếc áo thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu áo dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 19)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-so-mi-dolce-gabbana-long-sleeve-shirt-hoa-tiet-size-39-62105ede64747-19022022100710.jpg', 150.0000, N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt Họa Tiết Size 39', N'Áo Sơ Mi Dolce & Gabbana Long Sleeve Shirt Họa Tiết được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form áo chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.Áo cổ bẻ, tay dài với điểm nhấn độc đáo ở phần cổ áo. Màu sắc áo đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 15)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Quần Short Burberry', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-new-ss-mau-do-5e69eb0c16cc8-12032020145556.jpg', 185.0000, N'Quần Short Burberry New SS Màu Đỏ', N'Quần được làm từ chất vải cotton thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc.

- Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.

- Quần họa tiết trang trí sọc ô vuông tạo điểm nhấn. 

Với chiếc quần thời trang này bạn có thể kết hợp với nhiều phong cách khác nhau từ lịch lãm, công sở đến phong cách thể thao, dạo phố... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.

Đây là một mẫu quần dành cho các chàng trai yêu thích sự đơn giản nhưng không kém phần tinh tế và nổi bật.', 3, 18)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Quần Short Burberry New SS ', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/quan-short-burberry-new-ss-mau-soc-xanh-vang-5e6f37d361bcd-16032020152451.jpg', 150.0000, N'Quần Short Burberry New SS Màu Sọc Xanh Vàng', N'Burberry là một hãng thời trang sang trọng của Anh, phân phối quần áo thể thao độc đáo sang trọng, phụ kiện thời trang, nước hoa, kính mát, và mỹ phẩm.

Thương hiệu Burberry là 1 trong những tượng đài của thời trang thế giới, với phong cách hiện đại, lịch lãm và mang đậm bản sắc tinh thần của vương quốc Anh. Đặc trưng của Burberry từ ban đầu đến nay vẫn là phong cách lịch lãm, đơn giản và toát lên một vẻ lạnh lùng độc đáo.', 3, 17)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Quần Bò Shorts Dolce & Gabbana Stretch', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2021/08/quan-bo-shorts-dolce-gabbana-stretch-denim-bermuda-shorts-610787debf6b6-02082021125126.jpeg', 180.0000, N'Quần Bò Shorts Dolce & Gabbana Stretch Denim Bermuda Shorts', N'Quần Dolce & Gabbana Stretch Denim Bermuda Shorts được làm từ chất vải bò thoáng mát, thấm hút mồ hôi tốt mang lại cảm giác thoải mái cho người mặc. Form quần chuẩn đẹp, đường may tinh tế, tỉ mỉ từng chi tiết làm hài lòng ngay cả với khách hàng khó tính.Quần dáng suông thoải mái dễ mặc. Màu sắc quần đơn giản bạn có thể kết hợp với nhiều phong cách khác nhau... Khéo léo kết hợp những bộ trang phục với nhau chắc chắn bạn sẽ có những sét đồ thời trang ưng ý khi xuống phố.', 4, 15)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (37, N'quần jean', N'data:image/jpeg;base64,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', 120.0000, N'quần jean', N'quần jean', 1, 1)
INSERT [dbo].[product_HE163447] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (38, N'áo phông', N'data:image/jpeg;base64,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', 110.0000, N'áo phông', N'áo phông', 2, 1)
SET IDENTITY_INSERT [dbo].[product_HE163447] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping_HE163447] ON 

INSERT [dbo].[Shipping_HE163447] ([id], [name], [phone], [address]) VALUES (19, N'quan', N'12345678', N'hanoi')
SET IDENTITY_INSERT [dbo].[Shipping_HE163447] OFF
GO
ALTER TABLE [dbo].[Orders_HE163447] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account_HE163447] ([uID])
GO
ALTER TABLE [dbo].[Cart_HE163447] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product_HE163447] ([id])
GO
ALTER TABLE [dbo].[Cart_HE163447] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders_HE163447] ([id])
GO
ALTER TABLE [dbo].[OrderDetail_HE163447] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE163447] ([uID])
GO
ALTER TABLE [dbo].[Orders_HE163447] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping_HE163447] ([id])
GO
ALTER TABLE [dbo].[Orders_HE163447] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product_HE163447]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category_HE163447] ([cid])
GO
ALTER TABLE [dbo].[product_HE163447] CHECK CONSTRAINT [FK_product_Category]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SP23_BL5_E1] SET  READ_WRITE 
GO
