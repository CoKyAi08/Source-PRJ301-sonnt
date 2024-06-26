USE [PRJ301_Slot3Day246]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/12/2022 12:01:17 PM ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 10/12/2022 12:01:17 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 10/12/2022 12:01:17 PM ******/
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
/****** Object:  Table [dbo].[Student_Skill]    Script Date: 10/12/2022 12:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Skill](
	[skid] [int] NOT NULL,
	[sid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Skill] PRIMARY KEY CLUSTERED 
(
	[skid] ASC,
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([did], [dname]) VALUES (1, N'Infromation System')
INSERT [dbo].[Department] ([did], [dname]) VALUES (2, N'Accounting')
INSERT [dbo].[Department] ([did], [dname]) VALUES (3, N'Graphic Design')
GO
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (1, N'Java Web')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (2, N'Leing')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (3, N'Cheating')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (4, N'Sleeping')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (5, N'Eating')
INSERT [dbo].[Skill] ([skid], [skname]) VALUES (6, N'Phucking')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (2, N'BBBB', 0, CAST(N'2000-08-25' AS Date), CAST(N'2022-09-30T11:12:00.000' AS DateTime), 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (1002, N'Ngo Tung Son', 1, CAST(N'1997-12-13' AS Date), CAST(N'2022-10-03T11:57:12.430' AS DateTime), 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (2002, N'YYYY', 0, CAST(N'2022-09-28' AS Date), CAST(N'2022-10-12T11:20:01.060' AS DateTime), 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [created_time], [did]) VALUES (2003, N'my Student', 1, CAST(N'2022-10-13' AS Date), CAST(N'2022-10-12T11:35:15.993' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[Student_Skill] ([skid], [sid]) VALUES (3, 2003)
INSERT [dbo].[Student_Skill] ([skid], [sid]) VALUES (5, 2003)
INSERT [dbo].[Student_Skill] ([skid], [sid]) VALUES (6, 2003)
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([did])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[Student_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Student_Skill_Skill] FOREIGN KEY([skid])
REFERENCES [dbo].[Skill] ([skid])
GO
ALTER TABLE [dbo].[Student_Skill] CHECK CONSTRAINT [FK_Student_Skill_Skill]
GO
ALTER TABLE [dbo].[Student_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Student_Skill_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Student_Skill] CHECK CONSTRAINT [FK_Student_Skill_Student]
GO
