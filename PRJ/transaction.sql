
USE [PRJ301_Slot2Day246]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/12/2022 10:21:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[did] [int] NOT NULL,
	[dname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 10/12/2022 10:21:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[skid] [int] NOT NULL,
	[skname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[skid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill_Student]    Script Date: 10/12/2022 10:21:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Student](
	[skid] [int] NOT NULL,
	[sid] [int] NOT NULL,
 CONSTRAINT [PK_Skill_Student] PRIMARY KEY CLUSTERED 
(
	[skid] ASC,
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/12/2022 10:21:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[did] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([did], [dname]) VALUES (1, N'Information System')
INSERT [dbo].[Department] ([did], [dname]) VALUES (2, N'Accounting')
INSERT [dbo].[Department] ([did], [dname]) VALUES (3, N'Graphic Design')
GO
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (1, N'Java')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (2, N'Lieing')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (3, N'Eating')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (4, N'Sleeping')
GO
INSERT [dbo].[Skill_Student] ([skid], [sid]) VALUES (2, 2005)
INSERT [dbo].[Skill_Student] ([skid], [sid]) VALUES (3, 2005)
INSERT [dbo].[Skill_Student] ([skid], [sid]) VALUES (4, 2005)
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (2, N'BBBBB', 1, CAST(N'2001-12-25' AS Date), CAST(N'2022-09-30T09:39:00.000' AS DateTime), 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (3, N'CCCC', 0, CAST(N'2001-01-01' AS Date), CAST(N'2001-10-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (4, N'DDDD', 0, CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01T09:30:00.000' AS DateTime), 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (5, N'Ngo Tung SOn', 1, CAST(N'1997-12-11' AS Date), CAST(N'2022-10-03T10:25:34.997' AS DateTime), 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (1005, N'XXXXX', 0, CAST(N'2022-10-14' AS Date), CAST(N'2022-10-07T09:45:44.150' AS DateTime), 3)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (2005, N'YYYYYY', 0, CAST(N'2022-10-14' AS Date), CAST(N'2022-10-12T09:54:28.640' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Skill_Student]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Student_Skill] FOREIGN KEY([skid])
REFERENCES [dbo].[Skill] ([skid])
GO
ALTER TABLE [dbo].[Skill_Student] CHECK CONSTRAINT [FK_Skill_Student_Skill]
GO
ALTER TABLE [dbo].[Skill_Student]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Student_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Skill_Student] CHECK CONSTRAINT [FK_Skill_Student_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([did])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
