/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF]    Script Date: 3/9/2018 3:58:05 PM ******/
CREATE DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechStore', FILENAME = N'C:\Bitbucket\ProjectX\ProjectX\App_Data\TechStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechStore_log', FILENAME = N'C:\Bitbucket\ProjectX\ProjectX\App_Data\TechStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET QUERY_STORE = OFF
GO
USE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/9/2018 3:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 3/9/2018 3:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/9/2018 3:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [smallint] NULL,
	[ImageLink] [nvarchar](max) NULL,
	[ManufacturerId] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/9/2018 3:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/9/2018 3:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Phone')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Tablet')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Laptop')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (1, N'Asus', N'AsusTek Computer Inc. (/ˈeɪsuːs/;[3] stylised as ASUSTeK or ΛSUS) is a Taiwanese multinational computer and phone hardware and electronics company headquartered in Beitou District, Taipei, Taiwan. Its products include desktops, laptops, netbooks, mobile phones, networking equipment, monitors, WIFI routers, projectors, motherboards, graphics cards, optical storage, multimedia products, peripherals, wearables, servers, workstations, and tablet PCs. The company is also an original equipment manufacturer (OEM).')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (2, N'Samsung', N'Samsung (Hangul: 삼성; Hanja: 三星; Korean pronunciation: [samsʌŋ]) is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul.[1] It comprises numerous affiliated businesses,[1] most of them united under the Samsung brand, and is the largest South Korean chaebol (business conglomerate).')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (3, N'Apple', N'Apple Inc. is an American multinational technology company headquartered in Cupertino, California that designs, develops, and sells consumer electronics, computer software, and online services. The company''s hardware products include the iPhone smartphone, the iPad tablet computer, the Mac personal computer, the iPod portable media player, the Apple Watch smartwatch, the Apple TV digital media player, and the HomePod smart speaker.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (4, N'Nokia', N'Nokia (Finnish pronunciation: [ˈnokiɑ], UK: /ˈnɒkiə/, US: /ˈnoʊkiə/) is a Finnish multinational communications, information technology and consumer electronics company, founded in 1865. Nokia''s headquarters are in Espoo, in the greater Helsinki metropolitan area.[1] In 2017, Nokia employed approximately 102,000 people across over 100 countries, did business in more than 130 countries, and reported annual revenues of around €23 billion.[2]')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (5, N'Dell', N'Dell (stylized as DELL) is a multinational computer technology company based in Round Rock, Texas, United States, that develops, sells, repairs, and supports computers and related products and services. Eponymously named after its founder, Michael Dell, the company is one of the largest technological corporations in the world, employing more than 103,300 people worldwide.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (6, N'Lenovo', N'Lenovo Group Ltd. or Lenovo PC International, often shortened to Lenovo (/lɛnˈoʊvoʊ/ lehn-OH-voh; formerly stylized as lenovo), is a Chinese multinational technology company with headquarters in Beijing, China and Morrisville, North Carolina.[4] It designs, develops, manufactures and sells personal computers, tablet computers, smartphones, workstations, servers, electronic storage devices, IT management software, and smart televisions.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (7, N'Huawei', N'Huawei Technologies Co., Ltd. (/ˈhwɑːˌweɪ/; Chinese: 华为; pinyin: About this sound Huáwéi) is a Chinese multinational networking and telecommunications equipment and services company headquartered in Shenzhen, Guangdong.[3] It is the largest telecommunications equipment manufacturer in the world, having overtaken Ericsson in 2012.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (8, N'OPPO', N'OPPO Electronics Corp. (commonly referred to as OPPO) is a Indian consumer electronics owned by Suresh Bandi and his firm based in Hyderabad. OPPO''s major product lines include smartphones, Blu-ray players and other electronic devices. The brand name OPPO was registered in China in 2001 and launched in 2004.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (9, N'Acer', N'Acer Inc. (/ˈeɪsər/ AY-sər; Chinese: 宏碁股份有限公司; pinyin: Hóngqí Gǔfèn Yǒuxiàn Gōngsī, lit. Hongqi Corporation Ltd.) is a Taiwanese multinational hardware and electronics corporation specializing in advanced electronics technology and is headquartered in Xizhi, New Taipei City, Taiwan.')
INSERT [dbo].[Manufacturers] ([ManufacturerId], [ManufacturerName], [Description]) VALUES (10, N'HP', N'The Hewlett-Packard Company 1-877-929-3373 (commonly referred to as HP) or shortened to Hewlett-Packard (/ˈhjuːlɪt ˈpækərd/ HEW-lit PAK-erd) was an American multinational information technology company headquartered in Palo Alto, California. It developed and provided a wide variety of hardware components as well as software and related services to consumers, small- and medium-sized businesses (SMBs) and large enterprises, including customers in the government, health and education sectors.')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (1, N'iPhone X 64GB', 30000000.0000, N'iPhone X ("X" pronounced "ten" /tɛn/)[9] is a smartphone designed, developed, and marketed by Apple Inc. It was announced on September 12, 2017, alongside the iPhone 8 and iPhone 8 Plus at the Steve Jobs Theater in the Apple Park campus. The phone was released on November 3, 2017. This device marks the iPhone series'' tenth anniversary, with "X" being the symbol for "ten" in Roman numerals.

The iPhone X is intended to showcase what Apple thinks is technology of the future, specifically adopting OLED screen technology for the first time in iPhone history, as well as using a glass and stainless-steel form factor, offering wireless charging, and removing the home button in favor of introducing Face ID, a new authentication method using advanced technologies to scan the user''s face to unlock the device, as well as for the use of animated emojis called Animoji. The new, nearly bezel-less form factor marks a significant change to the iPhone user interaction, involving swipe-based gestures to navigate around the operating system rather than the typical home button used in every previous iteration of the iPhone lineup. At the time of its November 2017 launch, its price tag of US$999 also made it the most expensive iPhone ever, with even higher prices internationally due to additional local sales and import taxes.', 5, NULL, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (2, N'Galaxy S9', 20000000.0000, N'The Samsung Galaxy S9 is a great phone, but one that hasn''t really kicked on from the Galaxy S8, bringing a very similar design and screen to 2017''s version. The improved biometrics were sorely needed, and the camera is a leap forward, but the amazing low light capabilities have resulted in sacrifices elsewhere. A top, top phone, but the S9 Plus outshines it.', 5, NULL, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (3, N'OPPO F5', 6990000.0000, N'"Trendy" tends to get thrown around on today''s mobile scene quite a lot. It is just one of those loose-fitting adjectives that, through overuse, has practically lost all meaning. Still, looking at the Oppo F5, we can''t really think of any better way to describe the company''s new "selfie expert".', 4, NULL, 8, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (4, N'Dell Inspiron N3567', 13990000.0000, N'The Dell Inspiron 3567 offers a sleek design and has a great set of standard features which makes the laptop easy to use, easy to own and built for the long haul. The 6th Generation processors from Intel® handle today’s software easily and provide zippy, responsive performance whether you’re surfing the web, writing a term paper, editing videos or doing web chats.
HD resolution (1366x768) display provides crisp, bright images on-screen and is easy to position for clear viewing.
The Intel® Core i3 processor provides zippy, responsive performance whether you’re surfing the web, writing a term paper, editing videos or doing web chats.', 4, NULL, 5, 3)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (5, N'iPad Wi-Fi 32GB', 8999000.0000, N'That''s really it, but of course there are details to consider within each of those bullet points. I will go through them point-by-point since I just spent a week with the new iPad. After I do, you will discover that those are the main points and go on with your life until you need to buy an iPad to do iPad things, at which point you will buy this iPad.', 5, NULL, 3, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Rating], [ImageLink], [ManufacturerId], [CategoryId]) VALUES (6, N'Huawei MediaPad T3 7.0 Prestige', 2090000.0000, N'Phablet – More than a phone

    Better A/V experience 7″ IPS, multi-touch Narrow bezel, 73% display ratio
    Prolonged battery life
    Honor 7 A!

    High-speed mode, leveraging Huawei’s 28 years of experience in communications
        GSM/WCDMA / HUAWEI communication Tech
        Decreased rate of calls being cut with enhanced basic communication capability
        Increased Internet access time
', 3, NULL, 7, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'Editor')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (3, N'User')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (4, N'VIP')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (5, N'Member')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password], [RoleId]) VALUES (1, N'Admin', N'Cvbnm123@', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Manufacturers] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturers] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Manufacturers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_ToRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_ToRoles]
GO
USE [master]
GO
ALTER DATABASE [C:\BITBUCKET\PROJECTX\PROJECTX\APP_DATA\TECHSTORE.MDF] SET  READ_WRITE 
GO
