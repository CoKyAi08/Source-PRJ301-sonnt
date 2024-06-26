USE [PRJ301_FALL2022_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attandance]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attandance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attandance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attanded] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/19/2022 10:43:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mra', N'mra', N'Mr A')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'mrb', N'mrb', N'Mr B')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'Superman')
GO
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 1, 1, N'no probelm', CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 2, 0, N' ', CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 3, 1, N' ', CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 4, 0, N'Test', CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 1, 1, N'', CAST(N'2022-10-16T15:41:54.110' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 2, 0, N'', CAST(N'2022-10-16T15:41:54.110' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 3, 1, N'X', CAST(N'2022-10-16T15:41:54.110' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 4, 1, N'X', CAST(N'2022-10-16T15:41:54.110' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 1, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 2, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 3, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 4, 0, N'', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Add Student', N'/student/add')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Edit Student ', N'/student/edit')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Delete Student', N'/student/delete')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'PRJ301-01', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'PRJ301-02', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'PRJ301-03', 1, 2, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'PRO192-01', 2, 1, N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'Sonnt5')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'Lecturer 2')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (3, N'Lecturer 3')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'IT')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Accounting')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'mra')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 3)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 1)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'Room 1')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'Room 2')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'Room 3')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'Room 4')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (1, 1, 1, CAST(N'2022-10-10' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (2, 1, 1, CAST(N'2022-10-12' AS Date), 1, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (3, 1, 1, CAST(N'2022-10-14' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (4, 1, 1, CAST(N'2022-10-17' AS Date), 1, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (5, 1, 1, CAST(N'2022-10-19' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (6, 2, 1, CAST(N'2022-10-10' AS Date), 2, 1, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (7, 2, 1, CAST(N'2022-10-12' AS Date), 2, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (8, 2, 1, CAST(N'2022-10-14' AS Date), 2, 3, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (9, 2, 1, CAST(N'2022-10-17' AS Date), 2, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (10, 2, 1, CAST(N'2022-10-19' AS Date), 2, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (11, 3, 2, CAST(N'2022-10-10' AS Date), 1, 1, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (12, 3, 2, CAST(N'2022-10-12' AS Date), 1, 2, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (13, 3, 2, CAST(N'2022-10-14' AS Date), 1, 3, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (14, 3, 2, CAST(N'2022-10-17' AS Date), 1, 4, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (15, 3, 2, CAST(N'2022-10-19' AS Date), 1, 5, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (16, 4, 1, CAST(N'2022-10-10' AS Date), 3, 1, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (17, 4, 1, CAST(N'2022-10-12' AS Date), 3, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (18, 4, 1, CAST(N'2022-10-14' AS Date), 3, 3, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (19, 4, 1, CAST(N'2022-10-17' AS Date), 3, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (20, 4, 1, CAST(N'2022-10-19' AS Date), 3, 5, 1, 0)
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (1, N'Student 1')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (2, N'Student 2')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (3, N'Student 3')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (4, N'Student 4')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (5, N'Student 5')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (6, N'Student 6')
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (7, N'Student 7')
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 3)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'PRO192')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7h30 -9h')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'9h10 - 10h40')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'10h50 - 12h20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'12h50 - 14h20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (5, N'14h30 - 16h')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (6, N'16h10 - 17h40')
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Session]
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
