USE [master]
GO
/****** Object:  Database [DUANTN]    Script Date: 7/29/2021 11:53:50 AM ******/
CREATE DATABASE [DUANTN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DUANTN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DUANTN.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DUANTN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DUANTN_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DUANTN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DUANTN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DUANTN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DUANTN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DUANTN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DUANTN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DUANTN] SET ARITHABORT OFF 
GO
ALTER DATABASE [DUANTN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DUANTN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DUANTN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DUANTN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DUANTN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DUANTN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DUANTN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DUANTN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DUANTN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DUANTN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DUANTN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DUANTN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DUANTN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DUANTN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DUANTN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DUANTN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DUANTN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DUANTN] SET RECOVERY FULL 
GO
ALTER DATABASE [DUANTN] SET  MULTI_USER 
GO
ALTER DATABASE [DUANTN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DUANTN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DUANTN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DUANTN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DUANTN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DUANTN', N'ON'
GO
USE [DUANTN]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/29/2021 11:53:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [nvarchar](30) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[fullname] [nvarchar](30) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
	[actived] [bit] NULL,
	[role] [bit] NULL,
	[mhpw] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/29/2021 11:53:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orderdetails]    Script Date: 7/29/2021 11:53:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__OderDeta__3213E83FAE34D967] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/29/2021 11:53:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](30) NOT NULL,
	[createDate] [date] NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/29/2021 11:53:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[available] [bit] NULL,
	[categoryid] [int] NULL,
	[image] [varchar](50) NULL,
	[hinh1] [varchar](50) NULL,
	[hinh2] [varchar](50) NULL,
	[dicription] [nvarchar](max) NULL,
 CONSTRAINT [PK__Products__3213E83FC3025DDE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [actived], [role], [mhpw]) VALUES (N'ThienTX', N'111', N'Tran Xuan Thien', N'thien@gmail.com', 1, 0, NULL)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [actived], [role], [mhpw]) VALUES (N'tuan', N'456', N'Phạm Minh Tuấn', N'tuan@gmail.com', 1, 0, NULL)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [actived], [role], [mhpw]) VALUES (N'valne', N'123', N'Lê Văn Cường', N'cuongg121101@gmail.com', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Điện Thoại')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Máy Tính')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Trang bị phụ kiện')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Orderdetails] ON 

INSERT [dbo].[Orderdetails] ([id], [orderid], [productid], [price], [quantity]) VALUES (3, 6, 2, 24000, 1)
INSERT [dbo].[Orderdetails] ([id], [orderid], [productid], [price], [quantity]) VALUES (4, 7, 11, 10500, 1)
INSERT [dbo].[Orderdetails] ([id], [orderid], [productid], [price], [quantity]) VALUES (7, 8, 20, 32900, 1)
INSERT [dbo].[Orderdetails] ([id], [orderid], [productid], [price], [quantity]) VALUES (8, 8, 8, 16790, 1)
INSERT [dbo].[Orderdetails] ([id], [orderid], [productid], [price], [quantity]) VALUES (9, 8, 13, 27990, 1)
SET IDENTITY_INSERT [dbo].[Orderdetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [createDate], [address], [phone], [active]) VALUES (1, N'tuan', CAST(N'2021-06-30' AS Date), N'', 373865153, 0)
INSERT [dbo].[Orders] ([id], [username], [createDate], [address], [phone], [active]) VALUES (2, N'tuan', CAST(N'2021-06-30' AS Date), N'233/28, QL 13 cũ, Hiệp Bình Phước, Thủ Đức', 373865153, 0)
INSERT [dbo].[Orders] ([id], [username], [createDate], [address], [phone], [active]) VALUES (6, N'tuan', CAST(N'2021-06-30' AS Date), N'van cuong', 1234556778, 0)
INSERT [dbo].[Orders] ([id], [username], [createDate], [address], [phone], [active]) VALUES (7, N'tuan', CAST(N'2021-07-01' AS Date), N'van cuong', 1234556778, 0)
INSERT [dbo].[Orders] ([id], [username], [createDate], [address], [phone], [active]) VALUES (8, N'valne', CAST(N'2021-07-02' AS Date), N'Ấp4, xã Phú Ngọc, huyện Định Quán, tỉnh Đồng Nai', 123456789, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (1, N'iPhone 12 Pro Max', 32000, CAST(N'2021-07-03' AS Date), 1, 1, N'iphone-12-1.jpg', NULL, NULL, N'iPhone 12 Giảm lớn 3 triệu + Tặng 50GB icloud miễn phí + Bảo hành 2 năm chính hãng. Mua hàng Online - Giao hàng miễn phí tận nhà. Bảo Hành Chính Hãng. Cam Kết 100% Hàng Chính. Giá Thành Tốt Nhât. Miễn Phí Giao Hàng. Hỗ Trợ Trả Góp.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (2, N'iPhone 11', 24000, CAST(N'2021-06-12' AS Date), 1, 1, N'iphone-11-1.jpg', N'ip11-1.jpg', N'ip11-2.jpg', N'Mỏng hơn, nhẹ hơn
Màu sắc sống động, rõ ràng từ mọi góc độ
Vật liệu và công nghệ đồng nhất
Cảm ứng mượt mà do 3D Touch mang lại')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (3, N'Oppo A74', 80000, CAST(N'2021-05-23' AS Date), 1, 1, N'oppo-1.jpg', N'oppo1.jpg', N'oppo2.jpg', N'Mua online điện thoại OPPO A74 5G chính hãng, giá rẻ giảm ngay 600.000đ ... Giá và khuyến mãi dự kiến áp dụng đến 23:00 30/06 , không áp dụng trả góp lãi suất đặc biệt (0%, 0.5%, 1 ... Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI ... ')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (4, N'Realme i6', 46900, CAST(N'2021-06-26' AS Date), 1, 1, N'realme-1.jpg', N'realme1.jpg', N'realme2.jpg', N'Realme 6i có thiết kế màn hình giọt nước 6.5 inch, tràn viền hợp xu hướng, công nghệ IPS LCD, độ phân giải HD+ và tỷ lệ khung hình 20:9 cho trải nghiệm tương đối thoải mái, mọi thông tin và hình ảnh đều được hiển thị rõ ràng, màu sắc chính xác.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (5, N'SamSung A31', 55900, CAST(N'2021-05-31' AS Date), 1, 1, N'samsung.jpg', N'samsung1.jpg', N'samsung2.jpg', N'Tổng thể thiết kế của Galaxy A31 mang nhiều nét tương đồng với hai người anh em Galaxy A51 và A71. Mặt lưng của thiết bị vẫn được tạo điểm nhấn với cụm camera lớn và các vân kim cương đẹp mắt.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (6, N'iPhone X', 99000, CAST(N'2021-06-12' AS Date), 1, 1, N'iphonex1.jpg', N'ipx.jpg', N'ipx1.jpg', N'Công nghệ màn hình OLED
Độ phân giải 1125 x 2436 pixel
Kích thước màn hình 5.8”
Mặt cảm ứng được trang bị kính cường lực oleophobic')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (7, N'SamSung M51', 84900, CAST(N'2021-04-15' AS Date), 1, 1, N'samsung-2.jpg', N'm51.jpg', N'm512.jpg', N'Ấn tượng ban đầu với màn hình của Galaxy M51 là kiểu màn hình Infinity-O rộng 6.7 inch. Kiểu thiết kế này đưa camera selfie thu gọn hơn chỉ bằng một hình tròn nhỏ cùng thiết kế màn hình tràn viền làm tăng khả năng hiển thị hình ảnh hơn.

Ngoài ra, máy còn sở hữu công nghệ màn hình Super AMOLED Plus mang đến chất lượng hiển thị sắc nét, hình ảnh tươi tắn cho bạn tận hưởng các chương trình giải trí hấp dẫn, thưởng thức các bộ phim bom tấn, chơi những tựa game yêu thích vô cùng bắt mắt.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (8, N'SamSung Note 20 Ultra', 16790, CAST(N'2021-06-25' AS Date), 1, 1, N'samsung-3.jpg', N'samsung-4.jpg', N'samsung-5.jpg', N'Note 20 Ultra chắc chắn là mẫu smartphone có màn hình đẹp bậc nhất thế giới hiện nay. Trước mắt bạn là một màn hình cực lớn 6,9 inch tràn cạnh Infinity-O, độ phân giải QHD+ siêu nét, hỗ trợ HDR10+ và công nghệ màn hình Dynamic AMOLED 2X. Mọi thứ đều hiển thị lớn, sống động, đẹp rực rỡ và độ chi tiết hoàn hảo. Không chỉ đẹp, màn hình này còn có độ mượt mà vượt trội với tần số quét 120Hz, cho những thao tác vuốt chạm của bạn phản hồi ngay lập tức, đưa hiệu quả công việc và giải trí lên tối đa.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (9, N'ViVo Y51', 57900, CAST(N'2021-05-25' AS Date), 1, 1, N'vivo.jpg', N'vivo1.jpg', N'vivo2.jpg', N'Y51 2020 sở hữu màn hình 6.58 inch độ phân giải 1080 x 2408 Pixels, có độ tương phản cao đem đến cho người dùng những trải nghiệm hình ảnh chân thực, màu sắc rực rỡ giúp việc sử dụng ứng dụng giải trí trên điện thoại trở nên cuốn hút hơn. ')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (10, N'Laptop Dell Latidute 3420', 14190, CAST(N'2021-03-21' AS Date), 1, 2, N'Dell.jpg', N'dell1.jpg', N'dell2.jpg', N'- Bộ VXL: Core i3 1115G4 3.0Ghz up to 4.1Ghz-6Mb
- Cạc đồ họa: Intel® Iris® Xe Graphics
- Bộ nhớ: 4Gb
- Ổ cứng/ Ổ đĩa quang: M.2 256GB PCIe NVMe Class 35 SSD
- Màn hình: 14.0Inch
- Hệ điều hành: DOS')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (11, N'Laptop HP Pavilion', 10500, CAST(N'2021-04-28' AS Date), 1, 2, N'Hp.jpg', N'hp1.jpg', N'hp2.jpg', N'Hãng sản xuất: HP, Độ lớn màn hình: 15.6 inch. Dung lượng HDD: 1TB, Loại CPU: Intel Core i3. Dung lượng Memory: 4GB, Dung lượng SSD')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (12, N'Laptop Lenovo IdeaPad 5', 15699, CAST(N'2021-05-31' AS Date), 1, 2, N'Lenovo.png', N'lenovo1.png', N'lenovo2.jpg', N'CPU: AMD Ryzen 5 5500U
RAM: 8GB
Ổ cứng: 512GB SSD
VGA: Onboard
Màn hình: 14 inch FHD
HĐH: Win 10
')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (13, N'Laptop Macbook Air', 27990, CAST(N'2021-06-26' AS Date), 1, 2, N'Macbook.jpg', N'macbook1.png', N'macbook2.jpg', N'Chiếc MacBook Air có hiệu năng đột phá nhất từ trước đến nay đã xuất hiện. Bộ vi xử lý Apple M1 hoàn toàn mới đưa sức mạnh của MacBook Air M1 13 inch vượt xa khỏi mong đợi người dùng, có thể chạy được những tác vụ nặng và thời lượng pin đáng kinh ngạc.')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (14, N'LAPTOP GAMING MSI ', 23990, CAST(N'2021-06-21' AS Date), 1, 2, N'MSI.png', N'msi1.png', N'msi2.jpg', N'CPU	
Intel Core i7 8750H

Màn hình	
15.6" FHD (1920×1080), IPS 45%NTSC color Anti-glare

Hệ điều hành	
Windows 10 64Bit Home

RAM	
DDR4 8GB (1 x 8GB) 2666MHz; 2 slots, up to 32GB

GPU	
GeForce GTX 1050Ti 4GB

Ổ cứng SSD	
SSD M.2 128GB

Ổ cứng HDD	
1TB HDD 5400 rpm')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (15, N'Chuột có dây', 1390, CAST(N'2021-07-03' AS Date), 1, 3, N'chuot.jpg', NULL, NULL, N'A Mouse')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (16, N'Bàn Phím', 9900, CAST(N'2021-06-23' AS Date), 1, 3, N'banphim.jpg', N'banphim.jpg', N'banphim.jpg', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (17, N'Loa', 1590, CAST(N'2021-05-01' AS Date), 1, 3, N'loa.jpg', N'loa2.jpg', N'loa.jpg', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (18, N'Sạc dự phòng', 3500, CAST(N'2021-06-01' AS Date), 1, 3, N'pinsac.jpg', N'pinsac2.jpg', N'pinsac.jpg', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (19, N'Dây sạc', 590, CAST(N'2021-05-01' AS Date), 1, 3, N'sac.jpg', N'sac2.jpg', N'sac2.jpg', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [categoryid], [image], [hinh1], [hinh2], [dicription]) VALUES (20, N'Tai nghe', 32900, CAST(N'2021-02-01' AS Date), 1, 3, N'tai-nghe.jpg', N'tai-nghe-2.jpg', N'tai-nghe-3.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD  CONSTRAINT [FK__OderDetai__oderi__1A14E395] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orderdetails] CHECK CONSTRAINT [FK__OderDetai__oderi__1A14E395]
GO
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD  CONSTRAINT [FK__OderDetai__produ__1B0907CE] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orderdetails] CHECK CONSTRAINT [FK__OderDetai__produ__1B0907CE]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Oders__username__173876EA] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Oders__username__173876EA]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__catego__145C0A3F] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Categories] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__catego__145C0A3F]
GO
USE [master]
GO
ALTER DATABASE [DUANTN] SET  READ_WRITE 
GO
