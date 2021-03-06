USE [master]
GO
/****** Object:  Database [yyCms]    Script Date: 06/08/2020 13:50:05 ******/
CREATE DATABASE [yyCms] ON  PRIMARY 
( NAME = N'yyCms', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\yyCms.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yyCms_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\yyCms_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yyCms] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yyCms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yyCms] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [yyCms] SET ANSI_NULLS OFF
GO
ALTER DATABASE [yyCms] SET ANSI_PADDING OFF
GO
ALTER DATABASE [yyCms] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [yyCms] SET ARITHABORT OFF
GO
ALTER DATABASE [yyCms] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [yyCms] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [yyCms] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [yyCms] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [yyCms] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [yyCms] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [yyCms] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [yyCms] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [yyCms] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [yyCms] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [yyCms] SET  DISABLE_BROKER
GO
ALTER DATABASE [yyCms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [yyCms] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [yyCms] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [yyCms] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [yyCms] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [yyCms] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [yyCms] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [yyCms] SET  READ_WRITE
GO
ALTER DATABASE [yyCms] SET RECOVERY SIMPLE
GO
ALTER DATABASE [yyCms] SET  MULTI_USER
GO
ALTER DATABASE [yyCms] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [yyCms] SET DB_CHAINING OFF
GO
USE [yyCms]
GO
/****** Object:  Table [dbo].[yy_Video_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Video_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Video_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Video_Type] ON
INSERT [dbo].[yy_Video_Type] ([ID], [Name], [Summary], [Image], [PID], [IsShow], [ShowIndex], [CreateDate]) VALUES (1, N'v1', N'555555555', N'', 0, 1, 0, CAST(0x0000ABCF00599C0C AS DateTime))
INSERT [dbo].[yy_Video_Type] ([ID], [Name], [Summary], [Image], [PID], [IsShow], [ShowIndex], [CreateDate]) VALUES (2, N'v2', N'666666666666', N'', 0, 1, 0, CAST(0x0000ABCF0059B312 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_Video_Type] OFF
/****** Object:  Table [dbo].[yy_Video]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Video](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](1000) NOT NULL,
	[TypeIDs] [nvarchar](200) NOT NULL,
	[SourceUrl] [nvarchar](500) NOT NULL,
	[Recommend] [int] NOT NULL,
	[TargetPlatforms] [nvarchar](500) NOT NULL,
	[CanReply] [int] NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_User_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_User_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Permission] [nvarchar](500) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_User_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_User_Type] ON
INSERT [dbo].[yy_User_Type] ([ID], [Name], [Summary], [Permission], [PID], [IsShow], [ShowIndex], [CreateTime]) VALUES (1, N'admin', N'1', N'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,', 1, 1, 1, CAST(0x0000AB3500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_User_Type] OFF
/****** Object:  Table [dbo].[yy_User]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HeadImgUrl] [nvarchar](500) NOT NULL,
	[Mobile] [nvarchar](200) NOT NULL,
	[Mail] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPwd] [nvarchar](100) NOT NULL,
	[Gender] [int] NOT NULL,
	[Role] [int] NOT NULL,
	[Permission] [nvarchar](max) NOT NULL,
	[CountryID] [int] NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[DistrictID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[LockFlag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_User] ON
INSERT [dbo].[yy_User] ([ID], [HeadImgUrl], [Mobile], [Mail], [UserName], [UserPwd], [Gender], [Role], [Permission], [CountryID], [ProvinceID], [DistrictID], [CityID], [Address], [LockFlag], [CreateDate]) VALUES (5, N'/images/users.jpg', N'2332233223', N'361790599@qq.com', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1, 1, N'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53', 1, 310000, 310112, 310100, N'122121', 1, CAST(0x0000A47300A41E10 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_User] OFF
/****** Object:  Table [dbo].[yy_SysError]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_SysError](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LogKey] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Source] [nvarchar](max) NOT NULL,
	[StackTrace] [nvarchar](max) NOT NULL,
	[HelpLink] [nvarchar](max) NOT NULL,
	[TargetSite] [nvarchar](200) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_SysError] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_SynchronousTask]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_SynchronousTask](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Platform] [int] NOT NULL,
	[BusinessType] [int] NOT NULL,
	[RelationID] [bigint] NOT NULL,
	[OperationType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[MaxTry] [int] NOT NULL,
	[TriedCount] [int] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_SynchronousTask] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Statistics]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Statistics](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PID] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Statistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Spider_News]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Spider_News](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Identifer] [bigint] NOT NULL,
	[SpiderID] [bigint] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[SourceUrl] [nvarchar](500) NOT NULL,
	[DefaultImage] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[IsSync] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Spider_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Spider_Log]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Spider_Log](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SpiderID] [bigint] NOT NULL,
	[TotalUrl] [bigint] NOT NULL,
	[SuccessUrl] [bigint] NOT NULL,
 CONSTRAINT [PK_yy_Spider_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Spider]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Spider](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[KeyWords] [nvarchar](max) NOT NULL,
	[TypeIDs] [nvarchar](200) NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
	[Quality] [decimal](18, 2) NOT NULL,
	[SourceUrls] [nvarchar](max) NOT NULL,
	[RuleConfig] [nvarchar](max) NOT NULL,
	[IsShow] [int] NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[SpiderMode] [int] NOT NULL,
	[TargetPlatforms] [nvarchar](500) NOT NULL,
	[ExecutionInterval] [bigint] NOT NULL,
	[LastStartTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Spider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_SiteSetting]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_SiteSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SiteAddress] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Watermark] [nvarchar](500) NOT NULL,
	[EnabelWatermark] [int] NOT NULL,
	[MailServer] [nvarchar](200) NOT NULL,
	[MailPort] [int] NOT NULL,
	[MailAccount] [nvarchar](500) NOT NULL,
	[MailPassword] [nvarchar](500) NOT NULL,
	[SystemTopBar] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_SiteSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_SiteSetting] ON
INSERT [dbo].[yy_SiteSetting] ([ID], [SiteAddress], [Email], [Watermark], [EnabelWatermark], [MailServer], [MailPort], [MailAccount], [MailPassword], [SystemTopBar], [CreateDate]) VALUES (11, N'localhost', N'test@163.com', N'0', 0, N'pop3.163.com', 22, N'test2@163.com', N'123', N'[{"ID":1591581636776,"PID":0,"Name":"模板管理","Url":"/page/types","Target":"_self"}]', CAST(0x0000ABD40026DECC AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_SiteSetting] OFF
/****** Object:  Table [dbo].[yy_SinglePage]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_SinglePage](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[IsShow] [int] NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_SinglePage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_SinglePage] ON
INSERT [dbo].[yy_SinglePage] ([ID], [UserID], [Title], [KeyWords], [Summary], [Info], [IsShow], [LookCount], [CreateDate]) VALUES (1, 5, N'index', N'shouye', N'test 444444444444444', N'<p>hello world!</p>', 1, 0, CAST(0x0000ABCD00765969 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_SinglePage] OFF
/****** Object:  Table [dbo].[yy_RedPack_Order]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_RedPack_Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[red_packID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[MechantID] [bigint] NOT NULL,
	[AgencyID] [bigint] NOT NULL,
	[re_openid] [nvarchar](100) NOT NULL,
	[mch_billno] [nvarchar](50) NOT NULL,
	[detail_id] [nvarchar](50) NOT NULL,
	[red_money] [bigint] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_RedPack_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_RedPack]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_RedPack](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[MerchantID] [bigint] NOT NULL,
	[AgencyID] [bigint] NOT NULL,
	[hb_type] [nvarchar](50) NOT NULL,
	[nick_name] [nvarchar](50) NOT NULL,
	[send_name] [nvarchar](50) NOT NULL,
	[current_amount] [bigint] NOT NULL,
	[total_amount] [bigint] NOT NULL,
	[min_value] [bigint] NOT NULL,
	[max_value] [bigint] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[total_num] [int] NOT NULL,
	[wishing] [nvarchar](500) NOT NULL,
	[act_name] [nvarchar](500) NOT NULL,
	[remark] [nvarchar](500) NOT NULL,
	[logo_imgurl] [nvarchar](500) NOT NULL,
	[share_content] [nvarchar](500) NOT NULL,
	[share_url] [nvarchar](500) NOT NULL,
	[share_imgurl] [nvarchar](500) NOT NULL,
	[GetLimit] [bigint] NOT NULL,
	[GetEmptyLimit] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_RedPack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Product_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Product_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Product_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Product]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[TypeIDs] [nvarchar](500) NOT NULL,
	[TargetPlatforms] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](200) NOT NULL,
	[Specifications] [nvarchar](max) NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[Summary] [nvarchar](1000) NOT NULL,
	[DefaultImg] [nvarchar](500) NOT NULL,
	[ImgList] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[Recommend] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CanReply] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Platforms]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Platforms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Link] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Code] [int] NOT NULL,
	[APPKey] [nvarchar](50) NULL,
	[APPSecret] [nvarchar](500) NULL,
	[APPAdminID] [nvarchar](500) NULL,
	[Access_token] [nvarchar](500) NULL,
	[Access_token_Expires_in] [datetime] NOT NULL,
	[Refresh_token] [nvarchar](500) NULL,
	[APPPayID] [nvarchar](50) NULL,
	[APPPayKey] [nvarchar](50) NULL,
	[APPPayCert] [nvarchar](500) NULL,
	[APPID] [nvarchar](50) NULL,
	[APPName] [nvarchar](50) NULL,
	[APPNumber] [nvarchar](50) NULL,
	[jsapi_ticket] [nvarchar](500) NULL,
	[jsapi_ticket_Expires_in] [datetime] NOT NULL,
	[api_ticket] [nvarchar](500) NULL,
	[api_ticket_Expires_in] [datetime] NOT NULL,
	[PlatformConfig] [nvarchar](500) NULL,
	[RecallUrl] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[JSSDK] [nvarchar](max) NULL,
	[QRCode] [nvarchar](500) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Platforms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Photo_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Photo_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Photo_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Photo_Item]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Photo_Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhotoID] [bigint] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[ImgUrl] [nvarchar](500) NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
 CONSTRAINT [PK_yy_Photo_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Photo]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Photo](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](1000) NOT NULL,
	[TypeIDs] [nvarchar](200) NOT NULL,
	[Recommend] [int] NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[TargetPlatforms] [nvarchar](500) NOT NULL,
	[CanReply] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Photo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Permission_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Permission_Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Icon] [nvarchar](100) NOT NULL,
	[ShowIndex] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
 CONSTRAINT [PK_yy_Permission_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Permission_Type] ON
INSERT [dbo].[yy_Permission_Type] ([ID], [Name], [Icon], [ShowIndex], [IsShow]) VALUES (1, N'常规管理', N'1', 1, 1)
INSERT [dbo].[yy_Permission_Type] ([ID], [Name], [Icon], [ShowIndex], [IsShow]) VALUES (2, N'用户管理', N'4', 1, 1)
INSERT [dbo].[yy_Permission_Type] ([ID], [Name], [Icon], [ShowIndex], [IsShow]) VALUES (3, N'内容管理', N'3', 1, 1)
INSERT [dbo].[yy_Permission_Type] ([ID], [Name], [Icon], [ShowIndex], [IsShow]) VALUES (4, N'蜘蛛管理', N'2', 1, 1)
INSERT [dbo].[yy_Permission_Type] ([ID], [Name], [Icon], [ShowIndex], [IsShow]) VALUES (5, N'模板管理', N'4', 1, 1)
SET IDENTITY_INSERT [dbo].[yy_Permission_Type] OFF
/****** Object:  Table [dbo].[yy_Permission]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Permission](
	[ID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[MenuName] [nvarchar](10) NOT NULL,
	[MenuLink] [nvarchar](500) NOT NULL,
	[PageName] [nvarchar](200) NOT NULL,
	[ShowIndex] [nchar](10) NOT NULL,
	[Icon] [nchar](10) NOT NULL,
	[IsShow] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (1, 1, N'index', N'index', N'首页', N'index', N'/admin/index', N'1         ', N'1         ', 1, CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (2, 1, N'setting', N'setting', N'基本设置', N'setting', N'/admin/setting', N'2         ', N'1         ', 1, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (3, 1, N'Message', N'Message', N'消息列表', N'Message', N'/message/index', N'3         ', N'1         ', 1, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (4, 1, N'FriendLink', N'FriendLink', N'友链列表', N'FriendLink', N'/friendlink/index', N'4         ', N'1         ', 1, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (5, 1, N'add', N'add', N'添加友链', N'add', N'/friendlink/add', N'5         ', N'2         ', 0, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (6, 1, N'edit', N'FriendLink', N'编辑友链', N'edit', N'/friendlink/edit', N'6         ', N'2         ', 0, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (7, 1, N'Keywords', N'Keywords', N'关键字', N'Keywords', N'/keywords/index', N'7         ', N'1         ', 1, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (8, 1, N'add', N'add', N'添加关键字', N'add', N'/keywords/add', N'8         ', N'2         ', 0, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (9, 1, N'edit', N'edit', N'编辑关键字', N'edit', N'/keywords/edit', N'9         ', N'2         ', 0, CAST(0x0000AB06010E0634 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (10, 2, N'index', N'index', N'用户列表', N'add', N'/user/index', N'1         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (11, 2, N'add', N'add', N'新增用户', N'add', N'/user/add', N'2         ', N'1         ', 1, CAST(0x0000AB06010CFAFE AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (12, 2, N'edit', N'edit', N'修改用户', N'add', N'/user/edit', N'3         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (13, 2, N'Types', N'Types', N'用户分类', N'types', N'/user/types', N'4         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (14, 3, N'Banner', N'Banner', N'广告列表', N'Banner', N'/banner/index', N'1         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (15, 3, N'add', N'add', N'新增广告', N'add', N'/banner/add', N'2         ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (16, 3, N'edit', N'edit', N'编辑广告', N'add', N'/banner/edit', N'3         ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (17, 3, N'Types', N'Types', N'广告分类', N'types', N'/banner/types', N'4         ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (18, 3, N'News', N'News', N'新闻列表', N'News', N'/news/index', N'5         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (19, 3, N'add', N'add', N'新增新闻', N'add', N'/news/add', N'6         ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (20, 3, N'edit', N'edit', N'编辑新闻', N'add', N'/news/edit', N'7         ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (21, 3, N'Types', N'Types', N'新闻分类', N'types', N'/news/types', N'8         ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (22, 3, N'product', N'product', N'产品列表', N'product', N'/product/index', N'9         ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (23, 3, N'add', N'add', N'新增产品', N'add', N'/product/add', N'10        ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (24, 3, N'edit', N'edit', N'编辑产品', N'add', N'/product/edit', N'11        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (25, 3, N'Types', N'Types', N'产品分类', N'types', N'/product/types', N'12        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (26, 3, N'photo', N'photo', N'相册列表', N'photo', N'/photo/index', N'13        ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (27, 3, N'add', N'add', N'新增相册', N'add', N'/photo/add', N'14        ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (28, 3, N'edit', N'edit', N'编辑相册', N'add', N'/photo/edit', N'15        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (29, 3, N'Types', N'Types', N'相册分类', N'types', N'/photo/types', N'16        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (30, 3, N'Video', N'Video', N'视频列表', N'Video', N'/video/index', N'17        ', N'1         ', 1, CAST(0x0000AB06010CCA24 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (31, 3, N'add', N'add', N'新增视频', N'add', N'/video/add', N'18        ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (32, 3, N'edit', N'edit', N'编辑视频', N'add', N'/video/edit', N'19        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (33, 3, N'Types', N'Types', N'视频分类', N'types', N'/video/types', N'20        ', N'2         ', 0, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (34, 3, N'singlepage', N'singlepage', N'单页列表', N'singlepage', N'/singlepage/index', N'21        ', N'1         ', 1, CAST(0x0000AB0600A34AFD AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (35, 3, N'add', N'add', N'发布单页', N'add', N'/singlepage/add', N'22        ', N'2         ', 0, CAST(0x0000AB06010CCA27 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (36, 3, N'edit', N'edit', N'编辑单页', N'add', N'/singlepage/edit', N'23        ', N'2         ', 0, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (37, 4, N'index', N'index', N'蜘蛛列表', N'index', N'/spider/index', N'1         ', N'1         ', 1, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (38, 4, N'add', N'add', N'发布蜘蛛', N'add', N'/spider/add', N'2         ', N'2         ', 1, CAST(0x0000AB06010CCA28 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (39, 4, N'edit', N'edit', N'新增蜘蛛', N'add', N'/spider/edit', N'3         ', N'2         ', 1, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (40, 4, N'news', N'news', N'新闻列表', N'news', N'/spider/news', N'4         ', N'2         ', 1, CAST(0x0000AB06010CCA29 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (41, 5, N'page', N'page', N'模板列表', N'page', N'/page/index', N'1         ', N'1         ', 1, CAST(0x0000AB0600A34AF9 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (42, 5, N'add', N'add', N'添加模板', N'add', N'/page/add', N'2         ', N'1         ', 1, CAST(0x0000AB06010CCA25 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (43, 5, N'edit', N'edit', N'编辑模板', N'edit', N'/page/edit', N'3         ', N'1         ', 1, CAST(0x0000AB06010CCA25 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (44, 5, N'Types', N'Types', N'模板分类', N'types', N'/page/types', N'4         ', N'1         ', 1, CAST(0x0000AB06010CCA27 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (45, 5, N'build', N'build', N'生成进度', N'build', N'/page/build', N'5         ', N'1         ', 0, CAST(0x0000AB06010CCA26 AS DateTime))
INSERT [dbo].[yy_Permission] ([ID], [TypeID], [Name], [Description], [MenuName], [MenuLink], [PageName], [ShowIndex], [Icon], [IsShow], [CreateDate]) VALUES (46, 5, N'Progress', N'Progress', N'生成记录', N'Progress', N'/page/progress', N'6         ', N'1         ', 0, CAST(0x0000AB06010CCA27 AS DateTime))
/****** Object:  Table [dbo].[yy_Page_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Page_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsMaster] [int] NOT NULL,
	[SupportPlatform] [bigint] NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](200) NOT NULL,
	[QQ] [nvarchar](15) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Name_En] [nvarchar](50) NOT NULL,
	[Images] [nvarchar](500) NOT NULL,
	[Version] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Page_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Page_Type] ON
INSERT [dbo].[yy_Page_Type] ([ID], [UserID], [IsMaster], [SupportPlatform], [Author], [Website], [QQ], [Mobile], [Email], [Summary], [Name], [Name_En], [Images], [Version], [CreateDate]) VALUES (22, 5, 0, 0, N'zhb', N'local', N'55555', N'555555555555', N'z@z.cn', N'66666', N'test', N'test2', N'test.jpg,test1.jpg,test2.jpg', 1, CAST(0x0000ABD400CAA1D4 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_Page_Type] OFF
/****** Object:  Table [dbo].[yy_Page_Build_Task]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Page_Build_Task](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](500) NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[PageID] [bigint] NOT NULL,
	[BuildEntity] [nvarchar](max) NOT NULL,
	[TotalCount] [bigint] NOT NULL,
	[BuildCount] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
	[BuildHistory] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Page_Build_Task] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Page_Build_Task] ON
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (103, N'内容页', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400CACA10 AS DateTime), CAST(0x0000ABD400CB88B1 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (104, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400CC68E8 AS DateTime), CAST(0x0000ABD400CCCB0B AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (105, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DA8824 AS DateTime), CAST(0x0000ABD400DAAEC3 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (106, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DAE134 AS DateTime), CAST(0x0000ABD400DAFD73 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (107, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DE966C AS DateTime), CAST(0x0000ABD400DEB393 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (108, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DED938 AS DateTime), CAST(0x0000ABD400DF013C AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (109, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DF1E5C AS DateTime), CAST(0x0000ABD400DF22F1 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (110, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400DFC398 AS DateTime), CAST(0x0000ABD400DFC8C2 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (111, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400E01924 AS DateTime), CAST(0x0000ABD400E01E95 AS DateTime))
INSERT [dbo].[yy_Page_Build_Task] ([ID], [FullName], [TypeID], [PageID], [BuildEntity], [TotalCount], [BuildCount], [Status], [BuildHistory], [CreateDate], [LastUpdateTime]) VALUES (112, N'内容页模板', 22, 75, N'[0]', 1, 1, 2, N'', CAST(0x0000ABD400E0B2A8 AS DateTime), CAST(0x0000ABD400E0B79B AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_Page_Build_Task] OFF
/****** Object:  Table [dbo].[yy_Page_Build_Config]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Page_Build_Config](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PageTypeID] [bigint] NOT NULL,
	[PageID] [bigint] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[BuildType] [int] NOT NULL,
	[DataTypeIDs] [nvarchar](500) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Page_Build_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Page_Build_Config] ON
INSERT [dbo].[yy_Page_Build_Config] ([ID], [PageTypeID], [PageID], [StartTime], [EndTime], [BuildType], [DataTypeIDs], [CreateTime]) VALUES (77, 22, 74, CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABD400C9DFB0 AS DateTime), 1, N'2,1', CAST(0x0000ABD40046EA1A AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_Page_Build_Config] OFF
/****** Object:  Table [dbo].[yy_Page]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Page](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](50) NOT NULL,
	[BuildType] [int] NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[PageKind] [int] NOT NULL,
	[SavePath] [nvarchar](500) NOT NULL,
	[ExtensionName] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](200) NOT NULL,
	[PageCode] [nvarchar](max) NOT NULL,
	[CanBuild] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Page] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_Page] ON
INSERT [dbo].[yy_Page] ([ID], [PageName], [BuildType], [TypeID], [PageKind], [SavePath], [ExtensionName], [Summary], [PageCode], [CanBuild], [CreateDate], [LastUpdateTime]) VALUES (71, N'头部组件', 0, 22, 1, N'page', N'head.cshtml', N'0', N'<div class="header">
  <div class="headbox">
    <h1 class="zjyy_logo"><a href="/" target="_blank">兆锦园艺</a></h1>
    <p class="naver">
    <a href="/" target="_blank" <%if (request.querystring["id"]==null&&request.querystring["articleid"]==null) {%> class="active" <% } %>>首页</a>
    <asp:repeater id="RepeaterNav" runat="server">
    <itemtemplate>
    <a href="<%#ToAspx.getCloumnUrl(Convert.ToInt32(Eval("classId")))%>" target="_blank" class="<%#ToAspx.getActive(Request.QueryString["id"],Request.QueryString["articleId"],Convert.ToInt32(Eval("classId")))%>"><%#Eval("className")%></a>
    </itemtemplate>
   </asp:repeater>
   
    </p>
  </div>
</div>
', 1, CAST(0x0000ABD400CAA1DD AS DateTime), CAST(0x0000ABD400CAA1DD AS DateTime))
INSERT [dbo].[yy_Page] ([ID], [PageName], [BuildType], [TypeID], [PageKind], [SavePath], [ExtensionName], [Summary], [PageCode], [CanBuild], [CreateDate], [LastUpdateTime]) VALUES (72, N'底部组件', 0, 22, 1, N'page', N'bottom.cshtml', N'0', N'<div class="footer">
  <div class="indmain footpd">
    <div class="fl-lt">
      <div class="footnav"><a href="/" target="_blank">主页</a><a href="html/page.aspx?id=93" target="_blank">关于我们</a><a href="html/product.aspx?id=42" target="_blank">产品系列</a><a href="html/product.aspx?id=103" target="_blank">成功案例</a><a href="html/page.aspx?id=116" target="_blank">联系我们</a></div>
      <div class="footinfo">版权所有：<%=Application["Copyright"]%></div>
    </div>
    <ul class="footrt">
      <li>
        <div class="footicon footi-1"></div>
        <p><%=Application["email"]%></p>
      </li>
      <li>
        <div class="footicon footi-2"></div>
        <p><%=Application["telphone"]%></p>
      </li>
      <li>
        <div class="footicon footi-3"></div>
        <p><%=Application["adress"]%></p>
      </li>
    </ul>
  </div>
</div>', 0, CAST(0x0000ABD400CAA1DD AS DateTime), CAST(0x0000ABD400CAA1DD AS DateTime))
INSERT [dbo].[yy_Page] ([ID], [PageName], [BuildType], [TypeID], [PageKind], [SavePath], [ExtensionName], [Summary], [PageCode], [CanBuild], [CreateDate], [LastUpdateTime]) VALUES (73, N'首页', 0, 22, 3, N'page', N'index.cshtml', N'0', N'
<!doctype html>
<html>
<head>
<!--清除页面缓存-->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
</head>
<body>
<div class="mb17_body"> 
  <!-- top -->
 <yytag id="71"></yytag>
 <yytag id="72"></yytag>
   <!-- nav#e -->
  <div class="x-content bg-fff clearfix">
  首页
  </div>
</div>
</body>
</html>
', 1, CAST(0x0000ABD400CAA1E7 AS DateTime), CAST(0x0000ABD400CAA1E7 AS DateTime))
INSERT [dbo].[yy_Page] ([ID], [PageName], [BuildType], [TypeID], [PageKind], [SavePath], [ExtensionName], [Summary], [PageCode], [CanBuild], [CreateDate], [LastUpdateTime]) VALUES (74, N'列表页', 1, 22, 2, N'page', N'list{0}.cshtml', N'0', N'
<!doctype html>
<html>
<head>
<!--清除页面缓存-->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
</head>
<body>
<div class="mb17_body"> 
  <!-- top -->
 <yytag id="71"></yytag>
 <yytag id="72"></yytag>
   <!-- nav#e -->
  <div class="x-content bg-fff clearfix">
  列表
  </div>
</div>
</body>
</html>
', 1, CAST(0x0000ABD400CAA1E7 AS DateTime), CAST(0x0000ABD400CAA1E7 AS DateTime))
INSERT [dbo].[yy_Page] ([ID], [PageName], [BuildType], [TypeID], [PageKind], [SavePath], [ExtensionName], [Summary], [PageCode], [CanBuild], [CreateDate], [LastUpdateTime]) VALUES (75, N'内容页模板', 1, 22, 3, N'page', N'context{0}.cshtml', N'000000000000000000', N'
<!doctype html>
<html>
<head>
<!--清除页面缓存-->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
</head>
<body>
<div class="mb17_body"> 
  <!-- top -->
 <yytag id="71"></yytag>
 <yytag id="72"></yytag>
   <!-- nav#e -->
  <div class="x-content bg-fff clearfix">
  内容
  <div id="view1">
    <ul>
        {@each Modal as it,index}
          <li>${it.Titel} (index:${index})</li>
          <div id="info${index}">$${it.Info}</div>
        {@/each}
    </ul>
</div>
  <yypager total="SELECT COUNT(ID) FROM [yyCms].[dbo].[yy_News]" modal="SELECT * FROM [yyCms].[dbo].[yy_News]" pagesize="10" view="view1"></yypager>
  </div>
</div>

</body>
</html>
', 1, CAST(0x0000ABD4005BE393 AS DateTime), CAST(0x0000ABD4005BE393 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_Page] OFF
/****** Object:  Table [dbo].[yy_News_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_News_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_News_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_News_Type] ON
INSERT [dbo].[yy_News_Type] ([ID], [Name], [Summary], [Image], [PID], [IsShow], [ShowIndex], [CreateTime]) VALUES (1, N'kjdt', N'最新科技动态', N'', 0, 1, 0, CAST(0x0000ABD30082BC22 AS DateTime))
INSERT [dbo].[yy_News_Type] ([ID], [Name], [Summary], [Image], [PID], [IsShow], [ShowIndex], [CreateTime]) VALUES (2, N'鞍山科技新闻', N'鞍山科技新闻', N'', 0, 1, 0, CAST(0x0000ABD300830693 AS DateTime))
SET IDENTITY_INSERT [dbo].[yy_News_Type] OFF
/****** Object:  Table [dbo].[yy_News_Schedule]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_News_Schedule](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[TypeIDs] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[KeyWords] [nvarchar](100) NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[Summary] [nvarchar](200) NOT NULL,
	[DefaultImg] [nvarchar](500) NOT NULL,
	[ImgList] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[Unions] [nvarchar](500) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_News_Schedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_News]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_News](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[TypeIDs] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[TargetPlatforms] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](200) NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[Summary] [nvarchar](1000) NOT NULL,
	[DefaultImg] [nvarchar](500) NOT NULL,
	[ImgList] [nvarchar](max) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[Recommend] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CanReply] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[WechatMediaID] [nvarchar](50) NOT NULL,
	[WechatNewsUrl] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_yy_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yy_News] ON
INSERT [dbo].[yy_News] ([ID], [UserID], [TypeIDs], [Title], [TargetPlatforms], [KeyWords], [LookCount], [Summary], [DefaultImg], [ImgList], [Info], [Recommend], [IsShow], [ShowIndex], [CanReply], [CreateDate], [WechatMediaID], [WechatNewsUrl]) VALUES (1, 5, N'1', N'test', N',1,', N'test', 0, N'基本vjlj科技就 空间链接链接；链接', N'/images/upload/2020-06-07/74766e63-0610-4d17-8b3c-aad5fb98d9b6.png', N'', N'<html>
 <head></head> 
 <body> 
  <p>你就把就看，吗pokljkj&nbsp;</p>  
 </body>
</html>', 1, 1, 0, 0, CAST(0x0000ABD300881E96 AS DateTime), N'', N'')
INSERT [dbo].[yy_News] ([ID], [UserID], [TypeIDs], [Title], [TargetPlatforms], [KeyWords], [LookCount], [Summary], [DefaultImg], [ImgList], [Info], [Recommend], [IsShow], [ShowIndex], [CanReply], [CreateDate], [WechatMediaID], [WechatNewsUrl]) VALUES (2, 5, N'1,2', N'test11', N'', N'test11', 0, N'666666666666666666666666666666', N'/images/upload/2020-06-07/4114aeca-2978-45fd-8e77-10af0285cdc4.png', N'', N'<html>
 <head></head> 
 <body> 
  <p>55555555555555555555555555555555555555555555555555555555555</p>  
 </body>
</html>', 1, 1, 0, 0, CAST(0x0000ABD30088EF29 AS DateTime), N'', N'')
INSERT [dbo].[yy_News] ([ID], [UserID], [TypeIDs], [Title], [TargetPlatforms], [KeyWords], [LookCount], [Summary], [DefaultImg], [ImgList], [Info], [Recommend], [IsShow], [ShowIndex], [CanReply], [CreateDate], [WechatMediaID], [WechatNewsUrl]) VALUES (3, 5, N'1,2', N'以后能够', N',1,', N'test11', 0, N'感到十分森岛帆高的双方各大概', N'/images/upload/2020-06-07/1255b942-ef64-4bef-8794-693df20b99f7.jpg', N'', N'<html>
 <head></head> 
 <body> 
  <p>大凯立<span style="font-size: 24px;">德圣诞节来</span>看大框架房<span style="font-size: 11px;">啥地</span>方了；打卡机</p>  
 </body>
</html>', 1, 1, 0, 0, CAST(0x0000ABD4005C3045 AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[yy_News] OFF
/****** Object:  Table [dbo].[yy_Message]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Message](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Platform] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](200) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Keywords]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Keywords](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[ApplyType] [int] NOT NULL,
	[TypeIDs] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[ReplaceContent] [nvarchar](1000) NOT NULL,
	[ReplaceCount] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Keywords] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_FriendLink]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_FriendLink](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](1000) NOT NULL,
	[Info] [nvarchar](max) NOT NULL,
	[Recommend] [int] NOT NULL,
	[SiteUrl] [nvarchar](500) NOT NULL,
	[DefaultImg] [nvarchar](500) NOT NULL,
	[Score] [decimal](18, 2) NOT NULL,
	[IsShow] [int] NOT NULL,
	[LookCount] [bigint] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CanReply] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_FriendLink] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Fans_Wechat]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Fans_Wechat](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[openid] [nvarchar](200) NOT NULL,
	[nickname] [nvarchar](200) NOT NULL,
	[language] [nvarchar](50) NOT NULL,
	[sex] [int] NOT NULL,
	[province] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[headimgurl] [nvarchar](500) NOT NULL,
	[Latitude] [nvarchar](50) NOT NULL,
	[Longitude] [nvarchar](50) NOT NULL,
	[Precision] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](500) NOT NULL,
	[unionid] [nvarchar](50) NOT NULL,
	[LOCATIONUpdateTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Fans_Wechat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Banner_Type]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Banner_Type](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[PID] [bigint] NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Banner_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yy_Banner]    Script Date: 06/08/2020 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yy_Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[TypeIDs] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[ImageUrl] [nvarchar](500) NOT NULL,
	[LinkUrl] [nvarchar](500) NOT NULL,
	[IsShow] [int] NOT NULL,
	[ShowIndex] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_yy_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
