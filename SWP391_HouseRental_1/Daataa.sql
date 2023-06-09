USE [master]
GO
/****** Object:  Database [SWP391_HouseRentalSystem]    Script Date: 6/1/2023 1:00:18 AM ******/
CREATE DATABASE [SWP391_HouseRentalSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_HouseRentalSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MAYAO\MSSQL\DATA\SWP391_HouseRentalSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_HouseRentalSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MAYAO\MSSQL\DATA\SWP391_HouseRentalSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_HouseRentalSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP391_HouseRentalSystem', N'ON'
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET QUERY_STORE = OFF
GO
USE [SWP391_HouseRentalSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nchar](16) NOT NULL,
	[Phone_Number] [nchar](10) NULL,
	[Role_ID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Secure_Question_ID] [int] NULL,
	[Secure_Answer_ID] [int] NULL,
	[Profile_Picture] [text] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Role]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Account_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Posts]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Poster_ID] [int] NOT NULL,
	[Post_Time] [date] NULL,
	[Topic] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[Like_Count] [int] NOT NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_Blog_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite_House]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite_House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
 CONSTRAINT [PK_Favourite_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
	[Feedback_Date] [date] NULL,
	[Content] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Price] [varchar](12) NULL,
	[District_ID] [int] NOT NULL,
	[Full_Address] [nvarchar](250) NOT NULL,
	[Description] [text] NOT NULL,
	[Rating] [float] NOT NULL,
	[Added_Date] [date] NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Category]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Category](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Details]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Details](
	[House_ID] [int] NOT NULL,
	[Number_Of_Bedrooms] [int] NOT NULL,
	[Number_Of_Bathrooms] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[Pool] [int] NOT NULL,
	[House_Direction_ID] [int] NULL,
 CONSTRAINT [PK_House_Details] PRIMARY KEY CLUSTERED 
(
	[House_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Directions]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Directions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Direction] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Directions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Images]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Images](
	[Id] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
	[Image] [text] NOT NULL,
 CONSTRAINT [PK_House_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Ratings]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Voter_ID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_House_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[Sent_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[Deleted_By_Sender] [bit] NOT NULL,
	[Deleted_By_Receiver] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Comments]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post_ID] [int] NOT NULL,
	[Commenter_ID] [int] NOT NULL,
	[Comment_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Post_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Answers]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Secure_Question_ID] [int] NOT NULL,
	[Answer] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Secure_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Questions]    Script Date: 6/1/2023 1:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Secure_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (7, N'NguyenTrungHieu', 1, N'HaNoi', N'TrungHieu@gmail.com', N'123             ', N'123456789 ', 1, 1, 1, 1, N'img8.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (8, N'Manh', 1, N'Ha Noi', N'manh@gmail.com', N'abc123          ', N'0987654322', 1, 1, 1, 1, NULL)
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (13, N'Manh1', 1, N'Ha Noi', N'manh@gmail.com', N'abc123          ', N'0987654322', 1, 1, 1, 1, NULL)
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (14, N'Thang', 1, N'Ha Noi', N'thang@gmail.com', N'abc123          ', N'9999999999', 1, 1, 1, 1, N'NULL')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (1, N'Admin')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (2, N'Viewer')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (3, N'Owner')
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [District]) VALUES (1, N'Ba Đình')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (2, N'Bắc Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (3, N'Cầu Giấy')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (4, N'Đống Đa')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (5, N'Gia Lâm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (6, N'Hà Đông')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (7, N'Hai Bà Trưng')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (8, N'Hoài Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (9, N'Hoàn Kiếm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (10, N'Hoàng Mai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (11, N'Long Biên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (12, N'Mê Linh')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (13, N'Mỹ Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (14, N'Nam Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (15, N'Phúc Thọ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (16, N'Phú Xuyên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (17, N'Quốc Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (18, N'Sóc Sơn')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (19, N'Sơn Tây')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (20, N'Tây Hồ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (21, N'Thạch Thất')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (22, N'Thanh Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (23, N'Thanh Trì')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (24, N'Thanh Xuân')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (25, N'Thường Tín')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (26, N'Ứng Hoà')
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (1, 1, N'2000000', 1, N'Ngõ 1', N'nice', 4.5, CAST(N'2023-05-30' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (2, 2, N'3000000', 2, N'Ngõ 3', N'nice', 3.5, CAST(N'2023-05-30' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (3, 3, N'4000000', 3, N'Ngõ 2', N'nice', 5, CAST(N'2023-05-30' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (4, 1, N'1300000', 18, N'Khu vực sân bay Quốc Tế Nội Bài', N'nice', 3.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (5, 1, N'800000', 18, N'Gần sân bay Nội Bài tại Đồng Quốc, Phú Minh, Sóc Sơn', N'nice', 4.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (6, 1, N'300000', 18, N'Huyện Sóc Sơn, Hà Nội', N'nice', 2.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (7, 1, N'5500000', 14, N'Mễ Trì, Nam Từ Liêm', N'nice', 3.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (8, 1, N'4000000', 14, N'Tây Mỗ, Nam Từ Liêm', N'nice', 4.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (9, 1, N'3300000', 14, N'Mễ Trì Thượng, Nam Từ Liêm', N'nice', 4.5, CAST(N'2023-05-31' AS Date))
INSERT [dbo].[House] ([Id], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date]) VALUES (10, 2, N'4150000', 14, N'Lương Thế Vinh', N'nice', 3.5, CAST(N'2023-05-31' AS Date))
GO
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (1, N'Phòng trọ')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (2, N'Chung cư')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (3, N'Biệt thự')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (4, N'Căn hộ')
GO
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (1, 2, 2, 25, 1, 1)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (2, 2, 1, 20, 0, 4)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (3, 1, 2, 30, 1, 2)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (4, 3, 3, 35, 0, 5)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (5, 1, 1, 15, 0, 7)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (6, 1, 1, 22, 0, 1)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (7, 1, 1, 35, 0, 3)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (8, 1, 1, 30, 0, 3)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (9, 1, 1, 25, 0, 3)
INSERT [dbo].[House_Details] ([House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (10, 1, 1, 25, 0, 3)
GO
SET IDENTITY_INSERT [dbo].[House_Directions] ON 

INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (1, N'Đông')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (2, N'Tây')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (3, N'Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (4, N'Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (5, N'Đông Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (6, N'Đông Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (7, N'Tây Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (8, N'Tây Nam')
SET IDENTITY_INSERT [dbo].[House_Directions] OFF
GO
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (1, 1, N'img1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (2, 2, N'img2.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (3, 3, N'img3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (4, 4, N'img4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (5, 5, N'img5.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (6, 6, N'img6.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (7, 7, N'img7.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (8, 8, N'img8.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (9, 9, N'img9.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (10, 10, N'img10.jpg')
GO
SET IDENTITY_INSERT [dbo].[Secure_Answers] ON 

INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (1, 2, N'Bóng đá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (3, 2, N'Cầu lông')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (4, 2, N'Bóng chuyền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (5, 2, N'Golf')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (6, 2, N'Tennis')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (7, 2, N'Bóng rổ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (8, 2, N'Bóng bàn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (9, 2, N'Bơi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (10, 2, N'Cờ vua')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (11, 2, N'Cờ tướng')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (12, 2, N'Võ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (13, 1, N'Chơi thể thao')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (14, 1, N'Nấu ăn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (21, 1, N'Xem phim')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (22, 1, N'Chơi game')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (23, 1, N'Đi du lịch')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (24, 1, N'Đi mua sắm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (25, 1, N'Nghe nhạc')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (26, 1, N'Đọc sách')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (27, 1, N'Thiền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (28, 1, N'Viết nhật ký')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (29, 3, N'Bố')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (30, 3, N'Mẹ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (31, 3, N'Anh trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (32, 3, N'Em trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (33, 3, N'Chị gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (34, 3, N'Em gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (35, 3, N'Ông ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (36, 3, N'Bà ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (37, 3, N'Ông nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (39, 3, N'Bà nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (40, 4, N'Bún chả')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (41, 4, N'Bánh cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (42, 4, N'Cơm bụi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (43, 4, N'Bún cá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (44, 4, N'Cơm tấm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (46, 4, N'Bún đậu')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (47, 4, N'Gỏi cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (48, 4, N'Cơm rang')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (49, 4, N'Chả lá lốt')
SET IDENTITY_INSERT [dbo].[Secure_Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Secure_Questions] ON 

INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (1, N'Sở thích của bạn là gì?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (2, N'Bạn thích môn thể thao nào?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (3, N'Người trong nhà bạn thích nhất là ai?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (4, N'Bạn thích món gì nhất?')
SET IDENTITY_INSERT [dbo].[Secure_Questions] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Account_Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Answers] FOREIGN KEY([Secure_Answer_ID])
REFERENCES [dbo].[Secure_Answers] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Answers]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Questions]
GO
ALTER TABLE [dbo].[Blog_Posts]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Posts_Account] FOREIGN KEY([Poster_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Blog_Posts] CHECK CONSTRAINT [FK_Blog_Posts_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_Account] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_House]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Receiver] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Receiver]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Sender] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Sender]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_House]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Districts] FOREIGN KEY([District_ID])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Districts]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_House_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[House_Category] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_House_Category]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_House_Details] FOREIGN KEY([Id])
REFERENCES [dbo].[House_Details] ([House_ID])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_House_Details]
GO
ALTER TABLE [dbo].[House_Details]  WITH CHECK ADD  CONSTRAINT [FK_House_Details_House_Directions] FOREIGN KEY([House_Direction_ID])
REFERENCES [dbo].[House_Directions] ([Id])
GO
ALTER TABLE [dbo].[House_Details] CHECK CONSTRAINT [FK_House_Details_House_Directions]
GO
ALTER TABLE [dbo].[House_Images]  WITH CHECK ADD  CONSTRAINT [FK_House_Images_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[House_Images] CHECK CONSTRAINT [FK_House_Images_House]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_Account] FOREIGN KEY([Voter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_Account]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_House]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account1] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account1]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Account3] FOREIGN KEY([Commenter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Account3]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Blog_Posts] FOREIGN KEY([Post_ID])
REFERENCES [dbo].[Blog_Posts] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Blog_Posts]
GO
ALTER TABLE [dbo].[Secure_Answers]  WITH CHECK ADD  CONSTRAINT [FK_Secure_Answers_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Secure_Answers] CHECK CONSTRAINT [FK_Secure_Answers_Secure_Questions]
GO
USE [master]
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  READ_WRITE 
GO
