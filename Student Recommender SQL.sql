USE [master]
GO
/****** Object:  Database [student_reco]    Script Date: 24/08/2018 11:28:27 AM ******/
CREATE DATABASE [student_reco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'student_reco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\student_reco.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'student_reco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\student_reco_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [student_reco] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student_reco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student_reco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [student_reco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [student_reco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [student_reco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [student_reco] SET ARITHABORT OFF 
GO
ALTER DATABASE [student_reco] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [student_reco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [student_reco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [student_reco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [student_reco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [student_reco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [student_reco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [student_reco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [student_reco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [student_reco] SET  DISABLE_BROKER 
GO
ALTER DATABASE [student_reco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [student_reco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [student_reco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [student_reco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [student_reco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [student_reco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [student_reco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [student_reco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [student_reco] SET  MULTI_USER 
GO
ALTER DATABASE [student_reco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [student_reco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [student_reco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [student_reco] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [student_reco] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [student_reco] SET QUERY_STORE = OFF
GO
USE [student_reco]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [student_reco]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[adminUsername] [varchar](100) NULL,
	[adminPassword] [varchar](100) NULL,
	[adminFirst] [varchar](100) NULL,
	[adminMiddle] [varchar](100) NULL,
	[adminLast] [varchar](100) NULL,
	[adminContact] [varchar](100) NULL,
	[adminEmail] [varchar](100) NULL,
	[courseCode] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdvice]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdvice](
	[adviceName] [varchar](50) NOT NULL,
	[adviceType] [varchar](20) NULL,
	[adviceDesc] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[adviceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdviceList]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdviceList](
	[advListID] [int] IDENTITY(1,1) NOT NULL,
	[studNo] [varchar](16) NULL,
	[advType] [varchar](100) NULL,
	[advParam] [varchar](100) NULL,
	[advCheck] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdviceListSteps]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdviceListSteps](
	[studNo] [varchar](16) NULL,
	[adviceName] [varchar](50) NULL,
	[adviceStepOrder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdviceSteps]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdviceSteps](
	[adviceName] [varchar](50) NOT NULL,
	[adviceStepOrder] [int] NOT NULL,
	[adviceStepDesc] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[adviceName] ASC,
	[adviceStepOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCoReq]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCoReq](
	[coReq] [varchar](100) NULL,
	[subjID] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourse](
	[courseCode] [varchar](15) NOT NULL,
	[courseName] [varchar](100) NULL,
	[courseRegCode] [varchar](60) NULL,
	[courseStatus] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[courseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCurr]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCurr](
	[currCode] [varchar](20) NOT NULL,
	[currName] [varchar](200) NULL,
	[currYear] [int] NULL,
	[courseCode] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[currCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvent]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvent](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventName] [varchar](100) NULL,
	[eventStart] [date] NULL,
	[eventEnd] [date] NULL,
	[courseCode] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGrades]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGrades](
	[studNo] [varchar](16) NULL,
	[subjID] [varchar](100) NULL,
	[gradesGrade] [varchar](20) NULL,
	[gradesStatus] [varchar](5) NULL,
	[gradesYear] [varchar](10) NULL,
	[gradesSem] [varchar](25) NULL,
	[gradesSec] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNotes]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotes](
	[adviceName] [varchar](50) NULL,
	[courseCode] [varchar](15) NULL,
	[adviceNotes] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPet]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPet](
	[petSubjID] [varchar](100) NOT NULL,
	[petCourse] [varchar](15) NULL,
	[petAY] [varchar](20) NULL,
	[petSem] [varchar](20) NULL,
	[petApp] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[petSubjID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPetStud]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPetStud](
	[petStudCode] [int] IDENTITY(1,1) NOT NULL,
	[studNo] [varchar](16) NULL,
	[petSubjID] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[petStudCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPreReq]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPreReq](
	[preReq] [varchar](100) NULL,
	[subjID] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSched]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSched](
	[schedCode] [int] IDENTITY(1,1) NOT NULL,
	[schedAY] [varchar](20) NULL,
	[schedYear] [varchar](20) NULL,
	[schedSem] [varchar](20) NULL,
	[courseCode] [varchar](15) NULL,
	[subjID] [varchar](100) NULL,
	[schedSection] [varchar](30) NULL,
	[schedRoom] [varchar](20) NULL,
	[schedProf] [varchar](100) NULL,
	[schedDesc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[schedCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSchoolYear]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSchoolYear](
	[currentYear] [int] NOT NULL,
	[currentSem] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStud]    Script Date: 24/08/2018 11:28:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStud](
	[studNo] [varchar](16) NOT NULL,
	[studPass] [varchar](100) NULL,
	[courseCode] [varchar](15) NULL,
	[studFirst] [varchar](100) NULL,
	[studMiddle] [varchar](100) NULL,
	[studLast] [varchar](100) NULL,
	[studBirth] [varchar](10) NULL,
	[studEmail] [varchar](100) NULL,
	[studContact] [varchar](45) NULL,
	[studGender] [varchar](10) NULL,
	[studCurr] [varchar](20) NULL,
	[studYear] [varchar](50) NULL,
	[studPic] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[studNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubj]    Script Date: 24/08/2018 11:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubj](
	[subjID] [varchar](100) NOT NULL,
	[subjCode] [varchar](20) NULL,
	[currCode] [varchar](20) NULL,
	[subjName] [varchar](200) NULL,
	[subjYear] [varchar](10) NULL,
	[subjSem] [varchar](10) NULL,
	[subjUnits] [int] NULL,
	[subjStat] [varchar](10) NULL,
	[subjClassi] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[subjID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSuperAdmin]    Script Date: 24/08/2018 11:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSuperAdmin](
	[username] [varchar](100) NOT NULL,
	[passcode] [varchar](100) NULL,
	[firstName] [varchar](200) NULL,
	[middleName] [varchar](200) NULL,
	[lastName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAdviceList] ADD  DEFAULT ((0)) FOR [advCheck]
GO
ALTER TABLE [dbo].[tblSubj] ADD  DEFAULT ('ACTIVE') FOR [subjStat]
GO
ALTER TABLE [dbo].[tblAdmin]  WITH CHECK ADD FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblAdviceList]  WITH CHECK ADD FOREIGN KEY([studNo])
REFERENCES [dbo].[tblStud] ([studNo])
GO
ALTER TABLE [dbo].[tblAdviceListSteps]  WITH CHECK ADD FOREIGN KEY([adviceName], [adviceStepOrder])
REFERENCES [dbo].[tblAdviceSteps] ([adviceName], [adviceStepOrder])
GO
ALTER TABLE [dbo].[tblAdviceSteps]  WITH CHECK ADD FOREIGN KEY([adviceName])
REFERENCES [dbo].[tblAdvice] ([adviceName])
GO
ALTER TABLE [dbo].[tblAdviceSteps]  WITH CHECK ADD  CONSTRAINT [fk_advStep] FOREIGN KEY([adviceName])
REFERENCES [dbo].[tblAdvice] ([adviceName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblAdviceSteps] CHECK CONSTRAINT [fk_advStep]
GO
ALTER TABLE [dbo].[tblCoReq]  WITH CHECK ADD FOREIGN KEY([subjID])
REFERENCES [dbo].[tblSubj] ([subjID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblCurr]  WITH CHECK ADD  CONSTRAINT [FK_tblCurr_courseCode] FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblCurr] CHECK CONSTRAINT [FK_tblCurr_courseCode]
GO
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblNotes]  WITH CHECK ADD FOREIGN KEY([adviceName])
REFERENCES [dbo].[tblAdvice] ([adviceName])
GO
ALTER TABLE [dbo].[tblNotes]  WITH CHECK ADD FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblNotes]  WITH CHECK ADD  CONSTRAINT [fk_advNotes] FOREIGN KEY([adviceName])
REFERENCES [dbo].[tblAdvice] ([adviceName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblNotes] CHECK CONSTRAINT [fk_advNotes]
GO
ALTER TABLE [dbo].[tblPet]  WITH CHECK ADD FOREIGN KEY([petCourse])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblPet]  WITH CHECK ADD FOREIGN KEY([petSubjID])
REFERENCES [dbo].[tblSubj] ([subjID])
GO
ALTER TABLE [dbo].[tblPetStud]  WITH CHECK ADD FOREIGN KEY([petSubjID])
REFERENCES [dbo].[tblPet] ([petSubjID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPetStud]  WITH CHECK ADD FOREIGN KEY([studNo])
REFERENCES [dbo].[tblStud] ([studNo])
GO
ALTER TABLE [dbo].[tblPreReq]  WITH CHECK ADD FOREIGN KEY([subjID])
REFERENCES [dbo].[tblSubj] ([subjID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSched]  WITH CHECK ADD FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSched]  WITH CHECK ADD FOREIGN KEY([subjID])
REFERENCES [dbo].[tblSubj] ([subjID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblStud]  WITH CHECK ADD FOREIGN KEY([courseCode])
REFERENCES [dbo].[tblCourse] ([courseCode])
GO
ALTER TABLE [dbo].[tblStud]  WITH CHECK ADD FOREIGN KEY([studCurr])
REFERENCES [dbo].[tblCurr] ([currCode])
GO
ALTER TABLE [dbo].[tblSubj]  WITH CHECK ADD FOREIGN KEY([currCode])
REFERENCES [dbo].[tblCurr] ([currCode])
GO
ALTER TABLE [dbo].[tblSubj]  WITH CHECK ADD  CONSTRAINT [FK_tblSubj_currCode] FOREIGN KEY([currCode])
REFERENCES [dbo].[tblCurr] ([currCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSubj] CHECK CONSTRAINT [FK_tblSubj_currCode]
GO
USE [master]
GO
ALTER DATABASE [student_reco] SET  READ_WRITE 
GO
