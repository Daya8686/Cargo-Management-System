USE [master]
GO
/****** Object:  Database [MyProjectFirstTry]    Script Date: 18-06-2023 16:04:07 ******/
CREATE DATABASE [MyProjectFirstTry]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyProjectFirstTry', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MyProjectFirstTry.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyProjectFirstTry_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MyProjectFirstTry_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyProjectFirstTry] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyProjectFirstTry].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyProjectFirstTry] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MyProjectFirstTry] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyProjectFirstTry] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyProjectFirstTry] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyProjectFirstTry] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyProjectFirstTry] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MyProjectFirstTry] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyProjectFirstTry] SET  MULTI_USER 
GO
ALTER DATABASE [MyProjectFirstTry] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyProjectFirstTry] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyProjectFirstTry] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyProjectFirstTry] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyProjectFirstTry] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyProjectFirstTry] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MyProjectFirstTry] SET QUERY_STORE = OFF
GO
USE [MyProjectFirstTry]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[IsApprove] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoCategories]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoCategories](
	[CargoCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CargoCategoryType] [nvarchar](max) NOT NULL,
	[CargoPrice] [int] NULL,
 CONSTRAINT [PK_CargoCategories] PRIMARY KEY CLUSTERED 
(
	[CargoCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoOderDetails]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoOderDetails](
	[CargoorderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[CargoorderDate] [datetime2](7) NOT NULL,
	[Amount] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[ToCity] [nvarchar](max) NOT NULL,
	[FromCity] [nvarchar](max) NOT NULL,
	[CargoWeight] [int] NULL,
	[CargoorderId] [int] NULL,
 CONSTRAINT [PK_CargoOderDetails] PRIMARY KEY CLUSTERED 
(
	[CargoorderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoOrders]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoOrders](
	[CargoorderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CargoCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_CargoOrders] PRIMARY KEY CLUSTERED 
(
	[CargoorderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CustomerEmail] [nvarchar](max) NOT NULL,
	[CustomerPhone] [nvarchar](max) NOT NULL,
	[CustomerAddress] [nvarchar](60) NOT NULL,
	[CustomerZip] [int] NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeFName] [nvarchar](max) NOT NULL,
	[EmployeeLName] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[EmployeeEmail] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[JoiningDate] [datetime2](7) NOT NULL,
	[DateOfResign] [datetime2](7) NULL,
	[IsAdmin] [bit] NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 18-06-2023 16:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'28f52d34-0754-44dc-b55a-13db38a7dbb5', N'Perform Employee operations.', N'EmployeeUser', N'EMPLOYEEUSER', N'b55f910b-3f29-4c7f-9196-95bfe15b24b5')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5d247cda-5260-4979-8f04-c99f96b82ab3', N'Perform normal operations.', N'NormalUser', N'NORMALUSER', N'37f4ecc3-bf93-40df-8675-5b5c3a0c371f')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'919eb766-524a-4a4f-ba1c-56bcd9c9f0c8', N'Perform Customer operations.', N'Customer', N'CUSTOMER', N'460e6b22-1267-489c-9bce-31280e7be427')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f83e3d97-ff3e-4cbe-8901-5e3d674d6fe4', N'Perform Admin operations.', N'AdminUser', N'ADMINUSER', N'e9f93b6a-7635-4707-99c5-ed8ab6682a9a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1c5b6465-4a8b-40a7-b38e-c4488e326496', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d35af45-060b-42ad-8c1f-2469ea3e6f32', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5b4ca2fb-5b67-4e75-98cf-897ab1a93b88', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'724b7aa8-82bd-4eb7-be91-bfe11f3f3476', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c63bf41-c633-4455-ba3a-bcc4077f84b7', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e7136bdc-e817-44b5-876a-770194970552', N'28f52d34-0754-44dc-b55a-13db38a7dbb5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7110f232-f9da-4824-9a2c-c23c316ed707', N'919eb766-524a-4a4f-ba1c-56bcd9c9f0c8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8991df86-5611-45a8-8911-d82c1d3c0d92', N'919eb766-524a-4a4f-ba1c-56bcd9c9f0c8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'243dfa39-f806-45d1-9e61-b6d9442f2d87', N'f83e3d97-ff3e-4cbe-8901-5e3d674d6fe4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'797f2155-164b-4317-8db5-439dd7c8ec66', N'f83e3d97-ff3e-4cbe-8901-5e3d674d6fe4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e7136bdc-e817-44b5-876a-770194970552', N'f83e3d97-ff3e-4cbe-8901-5e3d674d6fe4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'08ef0280-184d-4848-89b0-c631e8413814', N'Naresh', N'NARESH', N'Naresh@example.com', N'NARESH@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEIpNa8+ODe2XabMZVqrKrP861ryDWZnztXbeIIQlGnRckpdu2jeWgVjtnLgxxfCOxg==', N'DSZ2MHMJXJXTGSMNTXJTVXHZOVV4AP43', N'0c1a482a-318e-4d5a-9090-281817ddb62e', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'16a5a747-a0ef-4e61-a5c7-d8a97c1c379e', N'Pandu', N'PANDU', N'Pandu@gmail.com', N'PANDU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDwIReryQXUYDwiJ0A+sZlEkU69JNzn/+TQ/GbCBtf4cx0htDz0888sZcOw8IVdKvQ==', N'UV2PQMIUVPGKGKRZBRRFAEVZALTPC6UR', N'bce7be4a-49fa-474b-90a8-34063c2c240e', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'1c5b6465-4a8b-40a7-b38e-c4488e326496', N'Bhem', N'BHEM', N'Bhem@gmail.com', N'BHEM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBLh5AADB0bE4ieZilb2sWL7TDDeIWIEFEsWAqSLUBXTrjL+OwD6/GZc0FL9pswKyA==', N'HFJBGVICMFJA7P7B6XLC6ICNHLY6LZHO', N'81063b49-dfca-4766-8226-c01795cf34ce', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'243dfa39-f806-45d1-9e61-b6d9442f2d87', N'Balaji', N'BALAJI', N'balaji@example.com', N'BALAJI@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEMfaPrehh+NrKejjfJ26Cewdw10KaimgEdM+blHd3NaN8D6mBo4i8wXV4dK3Ia94Iw==', N'PLMP4JXK4CLYB635T7UJE7ENL4UYRF3K', N'41451dc5-3a33-4a1f-9fd7-628751427da5', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'4426827a-2a72-4a13-8b7a-0bebd70afe86', N'Narayan', N'NARAYAN', N'Narayan@gmail.com', N'NARAYAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGE1Vhb9bWrMeREceqKw1cwoW3xx2hcbcZDnPo6ebptth7d3zpcMaN9t+6eCQz32AQ==', N'TJYC2BXQFBSAYOY4S3KI77UNNZ75E4M7', N'39cddc15-d41d-4167-8e5a-40f364ada35f', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'4d35af45-060b-42ad-8c1f-2469ea3e6f32', N'Arjun', N'ARJUN', N'Arjun@gmail.com', N'ARJUN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGDttIeCYLUi424dzIV3Wn64dN9UOX/KMLi7ZqL3jnhTS+v6DjXBflxQ9JCVxOvnhg==', N'2UBORE4ZRB37SSYJWQXFMGVFIUYW2YON', N'cd32b2e8-c9d5-49c6-8d1c-0848b03edfea', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'51961e10-8fea-4543-9ec8-b68e4ae323c8', N'KumarAlok', N'KUMARALOK', N'KumarAlok@example.com', N'KUMARALOK@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEJ1g4K3SPGK/V8uewcWliJyi0dq0Hz65Iz0vS63Zbx9pHs//DW6Zy8IVXWHGMfOIpg==', N'5U3ZKYUX47AZAAMQ5SKOFHFJAKQRRZMY', N'e8b821a5-fc02-44a7-8df7-41abbcde641f', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'5b4ca2fb-5b67-4e75-98cf-897ab1a93b88', N'Daya', N'DAYA', N'Daya@example.com', N'DAYA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEJnxe14kKFpJn++Cb9wpdStH138vFGfl85f1q9x73Hej4dBOBOqoO8j4KANqlVtvWw==', N'DQONPPSPCSECZIJLNQHTBPGOH36PRA7H', N'648c2f36-3ebc-4e3c-82eb-91b3e4797dbe', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'7110f232-f9da-4824-9a2c-c23c316ed707', N'Krishna', N'KRISHNA', N'krishna@example.com', N'KRISHNA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEFTUueQ54smY/G1a4tk2cm7cXfBm/eKVSgvNhPgD6d1UtTpWglAQ0k86cc2e1ZzPsA==', N'FNUAOZVMIR7DU235WI3PBBTQ7IMEZDFD', N'1a4f6fc4-00b3-4fc4-b820-e808c6634e26', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'724b7aa8-82bd-4eb7-be91-bfe11f3f3476', N'Rolex', N'ROLEX', N'Rolex@gmail.com', N'ROLEX@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAXyB5aTEhZrohg2wae0o6OH4/1nndiRawthOHVbFvi7Wrj32t35ZAs8CYkLAjM4hQ==', N'E5QOUPTQQPCM2JVFPTQG5GGAOIKYGKJH', N'2025d7f3-68fc-4a64-86d9-e10a244ca068', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'797f2155-164b-4317-8db5-439dd7c8ec66', N'Ganesh', N'GANESH', N'ganesh@example.com', N'GANESH@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEOHgT2playjl8JOO1hEh4RSt6W8pEhalOBBdTI+5SR2BhoC+ONYeaPV0DlWgscEqPw==', N'37PAML4MSFM4KGFE5KPA75G2B6A7LKSE', N'418e62a6-40db-4d2b-889b-dd2707216228', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'7c63bf41-c633-4455-ba3a-bcc4077f84b7', N'Ramsai', N'RAMSAI', N'Ram@example.com', N'RAM@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEM0Xq7ha6ohIyW42KKmHZigWNUAApCaL511sD2jWNqL6HVK5nd4JTuXPMsG71CiT2A==', N'7P72D56GGLK3CL6SSQ7ZARPFBCOJSE7G', N'b699abce-cfe0-4ae1-8bb4-5caa30f380a0', NULL, 0, 0, NULL, 1, 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'8991df86-5611-45a8-8911-d82c1d3c0d92', N'Alok', N'ALOK', N'Alok@example.com', N'ALOK@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEF9XtR+38/kRiIjA8OLdA7Eob7yvkEHbJCiQ/nGTtnfWAF+OzF21NDKMqCacCFeIsw==', N'RLYVHUXICEHPTVE5E7FTJZP6UEOPMPGU', N'fb54edbe-009f-4faa-a12b-24f0358b7e28', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'd62f552f-3be7-4771-b6f8-85d39b1b2210', N'Anil', N'ANIL', N'Anil@example.com', N'ANIL@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAENW+zZEo67L+qMGt8m4R3sr9BgSWoB4Vp7oYOawHnpBFd3jAWqTChCng/lEx6+KUgQ==', N'F3FRT2YFNXH5LQEOVRMYCKHRZBETRQCT', N'421bd3bc-4367-4683-a936-d8d4f4f53dbb', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'e131e873-f746-4a58-94a7-f9c1b855d87e', N'Pavan', N'PAVAN', N'Pavan@example.com', N'PAVAN@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEAVI+C3y9TMyKt36wJlRrw3mrYft2M+Fy3yrM1IxB0diN5Zh82a4kPhSwxVUfZzC5w==', N'RSVLYVG4AZYG77WFWYE3CLZ7SBWERGLC', N'c7f58aaa-96e1-43dd-99f2-5e84ca0f12d6', NULL, 0, 0, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsApprove]) VALUES (N'e7136bdc-e817-44b5-876a-770194970552', N'Emp1', N'EMP1', N'Emp1@example.com', N'EMP1@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEMH4iOv7vFGhCzGH3tMq5f33vE9uPRhkRh35zDiS40G1MWoI1AfbUiaD6WLXLnApUA==', N'QCNJWIVCALTU6H6SA75KGZQF7O57IVVI', N'434fbb3d-8b16-44ec-879d-ea66ec3b5987', NULL, 0, 0, NULL, 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[CargoCategories] ON 

INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (1, N'OIL', 23000)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (2, N'Coal', 1000)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (3, N'esrdfg', 344)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (4, N'ONE', 56000)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (5, N'Mobiles', 56000)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (10, N'staaaring', 200)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (11, N'Silk', 2000)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (12, N'hjbsd', 543)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (13, N'qqqqqqqqqqq', 33333333)
INSERT [dbo].[CargoCategories] ([CargoCategoryId], [CargoCategoryType], [CargoPrice]) VALUES (14, N'njd', 345)
SET IDENTITY_INSERT [dbo].[CargoCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[CargoOderDetails] ON 

INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (5, CAST(N'2023-06-14T16:21:21.5090000' AS DateTime2), 1000, 1000, N'pending', N'Nizambad', N'Warangal', 5, 1)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (6, CAST(N'2023-06-14T16:21:21.5090000' AS DateTime2), 12200, 1000, N'pending', N'Nizambad', N'Warangal', 5, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (7, CAST(N'2023-06-14T16:21:21.5090000' AS DateTime2), 10, 100, N'pending', N'Nizambad', N'Warangal', 6, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (9, CAST(N'2023-06-15T18:26:23.0520000' AS DateTime2), 2000, 2, N's', N'Guntur', N'Nizamabad', 2, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (14, CAST(N'2023-06-24T00:00:00.0000000' AS DateTime2), 504000, 3, N'pending', N'8', N'5', 9, 3)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (16, CAST(N'2023-06-17T00:00:00.0000000' AS DateTime2), 336, 3, N'pending', N'6', N'7', 0, 4)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (17, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2), 112000, 2, N'pending', N'4', N'5', 0, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (18, CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), 20000, 4, N'pending', N'1', N'2', 0, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (19, CAST(N'2023-06-17T00:00:00.0000000' AS DateTime2), 4000, 2, N'pending', N'7', N'9', 0, 3)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (20, CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), 92000, 2, N'pending', N'3', N'4', 0, 3)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (21, CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), 138000, 2, N'pending', N'7', N'8', 0, 1)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (22, CAST(N'2023-06-17T00:00:00.0000000' AS DateTime2), 6000, 2, N'pending', N'7', N'3', 0, 2)
INSERT [dbo].[CargoOderDetails] ([CargoorderDetailsId], [CargoorderDate], [Amount], [Quantity], [status], [ToCity], [FromCity], [CargoWeight], [CargoorderId]) VALUES (23, CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), 112000, 1, N'pending', N'7', N'1', 0, 7)
SET IDENTITY_INSERT [dbo].[CargoOderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[CargoOrders] ON 

INSERT [dbo].[CargoOrders] ([CargoorderId], [CustomerId], [CargoCategoryId]) VALUES (2, 1, 1)
INSERT [dbo].[CargoOrders] ([CargoorderId], [CustomerId], [CargoCategoryId]) VALUES (4, 3, 2)
SET IDENTITY_INSERT [dbo].[CargoOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (1, N'Hyderabad', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (2, N'Vishakapatnam', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (3, N'Nizamabad', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (4, N'Medak', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (5, N'Warangal', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (6, N'Guntur', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (7, N'Bangalore', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (8, N'Mysoure', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (9, N'Chennai', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (10, N'Rameshwar', 4)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (1, N'Krishna2', N'Krishna@example.com', N'222222222', N'H.no-1-1,sri Ramnagar,', 0, 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (2, N'Ram', N'ram@example.com', N'999999000', N'H.no-1-1,sri Ramnagar,', 0, 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (3, N'Alok', N'alok@example.com', N'999996769', N'H.no-45454,sri KRpuram,', 567676, 6)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (4, N'Pavan', N'Pavan@example.com', N'9090909090', N'RR nagar , Nizamabad', 503445, 6)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (5, N'Pandu', N'Pandu@gmail.com', N'8686808070', N'R nagar , Nizamabad', 503224, 3)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (6, N'Arjun', N'Arjun@gmail.com', N'9911991199', N'R nagar , Nizamabad', 509898, 3)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerZip], [CityId]) VALUES (7, N'Narayan', N'Narayan@gmail.com', N'9191919191', N'Hyderabad,Kompally', 5088801, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (4, N'Hari', N'Krishna', CAST(N'1000-06-10T12:41:13.3720000' AS DateTime2), N'user@example.com', N'Hari nagar', N'9898765432', CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (6, N'Ravi', N'Ravi', CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), N'a@a.com', N'fda', N'0909090990', CAST(N'2023-06-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-15T14:05:11.3230000' AS DateTime2), 1, 7)
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (7, N'Rolex', N'Rolex', CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), N'Rolex@gmail.com', N'Main colony', N'9999990000', CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), 0, 5)
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (8, N'Daya', N'Sagar', CAST(N'2000-10-28T00:00:00.0000000' AS DateTime2), N'Daya@example.com', N'R nagar , Nizamabad', N'7989408444', CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), 0, 3)
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (9, N'Arjun', N'Kumar', CAST(N'2000-01-08T00:00:00.0000000' AS DateTime2), N'Arjun@gmail.com', N'R nagar , Nizamabad', N'8787123456', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), 0, 5)
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeFName], [EmployeeLName], [BirthDate], [EmployeeEmail], [Street], [Phone], [JoiningDate], [DateOfResign], [IsAdmin], [CityId]) VALUES (10, N'Veru', N'Yadav', CAST(N'1996-02-16T00:00:00.0000000' AS DateTime2), N'Veru@gmail.com', N'Main Colony', N'6767676767', CAST(N'2022-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-18T09:50:35.6710000' AS DateTime2), 1, 8)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1, N'Telangana')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (2, N'Andhra Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (3, N'Karnataka')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (4, N'Tamilnadu')
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18-06-2023 16:04:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 18-06-2023 16:04:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CargoOrders_CargoCategoryId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_CargoOrders_CargoCategoryId] ON [dbo].[CargoOrders]
(
	[CargoCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CargoOrders_CustomerId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_CargoOrders_CustomerId] ON [dbo].[CargoOrders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cities_StateId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_Cities_StateId] ON [dbo].[Cities]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Customers_CityId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_Customers_CityId] ON [dbo].[Customers]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_CityId]    Script Date: 18-06-2023 16:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_Employees_CityId] ON [dbo].[Employees]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CargoOderDetails]  WITH CHECK ADD  CONSTRAINT [FK_CargoOderDetails_CargoOderDetails] FOREIGN KEY([CargoorderDetailsId])
REFERENCES [dbo].[CargoOderDetails] ([CargoorderDetailsId])
GO
ALTER TABLE [dbo].[CargoOderDetails] CHECK CONSTRAINT [FK_CargoOderDetails_CargoOderDetails]
GO
ALTER TABLE [dbo].[CargoOrders]  WITH CHECK ADD  CONSTRAINT [FK_CargoOrders_CargoCategories_CargoCategoryId] FOREIGN KEY([CargoCategoryId])
REFERENCES [dbo].[CargoCategories] ([CargoCategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CargoOrders] CHECK CONSTRAINT [FK_CargoOrders_CargoCategories_CargoCategoryId]
GO
ALTER TABLE [dbo].[CargoOrders]  WITH CHECK ADD  CONSTRAINT [FK_CargoOrders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CargoOrders] CHECK CONSTRAINT [FK_CargoOrders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_States_StateId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Cities_CityId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Customers]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Cities_CityId]
GO
USE [master]
GO
ALTER DATABASE [MyProjectFirstTry] SET  READ_WRITE 
GO
