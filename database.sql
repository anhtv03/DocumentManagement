USE [Docs]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/6/2024 9:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phone] [char](10) NULL,
	[password] [varchar](30) NOT NULL,
	[role] [int] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/6/2024 9:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/6/2024 9:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[commentTitle] [varchar](150) NOT NULL,
	[userID] [int] NULL,
	[documentID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 3/6/2024 9:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[documentID] [int] IDENTITY(1,1) NOT NULL,
	[docName] [varchar](150) NULL,
	[tilte] [varchar](255) NOT NULL,
	[path] [varchar](max) NOT NULL,
	[imgDoc] [varchar](max) NULL,
	[view] [int] NULL,
	[dateCreated] [date] NULL,
	[statusDoc] [varchar](50) NULL,
	[categoryID] [int] NULL,
	[userID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[documentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/6/2024 9:24:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[avatar] [varchar](max) NULL,
	[email] [varchar](max) NOT NULL,
	[phone] [char](10) NULL,
	[address] [nvarchar](max) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [email], [name], [phone], [password], [role], [status]) VALUES (1, N'admin1@gmail.com', N'admin', N'0983748392', N'1', 1, 1)
INSERT [dbo].[Account] ([id], [email], [name], [phone], [password], [role], [status]) VALUES (2, N'admin2@gmail.com', N'admin2', N'0873684736', N'admin123', 1, 1)
INSERT [dbo].[Account] ([id], [email], [name], [phone], [password], [role], [status]) VALUES (3, N'user1@gmail.com', N'Huynh Cau', N'0333333   ', N'1', 2, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (1, N'Language', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (2, N'Soft Skills', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (3, N'Business - Marketing', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (4, N'Economic Management', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (5, N'Finance - Banking', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (6, N'Educations', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (7, N'Technology', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (8, N'Information Technology', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (9, N'Natural Sciences', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (10, N'Medical - Health', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (11, N'Agriculture - Forestry - Fishery', 1)
INSERT [dbo].[Category] ([categoryID], [categoryName], [status]) VALUES (12, N'Another Type', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([commentID], [commentTitle], [userID], [documentID], [status]) VALUES (1, N'very good', 3, 53, 1)
INSERT [dbo].[Comment] ([commentID], [commentTitle], [userID], [documentID], [status]) VALUES (2, N'very good', 3, 53, 1)
INSERT [dbo].[Comment] ([commentID], [commentTitle], [userID], [documentID], [status]) VALUES (3, N'very good', 3, 53, 1)
INSERT [dbo].[Comment] ([commentID], [commentTitle], [userID], [documentID], [status]) VALUES (4, N'I very like this doc', 3, 53, 1)
INSERT [dbo].[Comment] ([commentID], [commentTitle], [userID], [documentID], [status]) VALUES (5, N'wwow', 3, 63, 1)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Documents] ON 

INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (53, N'JOB.txt', N'JOB.txt', N'D:\Java\PRJ\DocumentManagement\file\JOB.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 81, CAST(N'2024-03-04' AS Date), N'approved', 1, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (54, N'this is the job tranning', N'JOB.txt', N'D:\Java\PRJ\DocumentManagement\file\JOB.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 33, CAST(N'2024-03-04' AS Date), N'approved', 2, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (55, N'JOB.txt', N'JOB.txt', N'D:\Java\PRJ\DocumentManagement\file\JOB.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 23, CAST(N'2024-03-04' AS Date), N'approved', 7, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (56, N'JOB.txt', N'JOB.txt', N'D:\Java\PRJ\DocumentManagement\file\JOB.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 30, CAST(N'2024-03-04' AS Date), N'approved', 10, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (57, N'K?ch-b?n-vào-l?p.docx', N'K?ch-b?n-vào-l?p.docx', N'D:\Java\PRJ\DocumentManagement\file\K?ch-b?n-vào-l?p.docx', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 14, CAST(N'2024-03-05' AS Date), N'approved', 6, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (58, N'Meeting-minutes.docx', N'Meeting-minutes.docx', N'D:\Java\PRJ\DocumentManagement\file\Meeting-minutes.docx', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 22, CAST(N'2024-03-05' AS Date), N'approved', 7, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (59, N'readme.txt', N'readme.txt', N'D:\Java\PRJ\DocumentManagement\file\readme.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 24, CAST(N'2024-03-05' AS Date), N'approved', 10, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (60, N'Template2_RDS Document.docx', N'Template2_RDS Document.docx', N'D:\Java\PRJ\DocumentManagement\file\Template2_RDS Document.docx', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 34, CAST(N'2024-03-05' AS Date), N'approved', 9, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (61, N'Template1_Project Tracking.xlsx', N'Template1_Project Tracking.xlsx', N'D:\Java\PRJ\DocumentManagement\file\Template1_Project Tracking.xlsx', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg/1200px-Microsoft_Office_Excel_%282019%E2%80%93present%29.svg.png', 22, CAST(N'2024-03-05' AS Date), N'approved', 6, 3, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (62, N'adminsitecoloradjust.txt', N'adminsitecoloradjust.txt', N'D:\Java\PRJ\DocumentManagement\file\adminsitecoloradjust.txt', N'https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png', 29, CAST(N'2024-03-05' AS Date), N'approved', 3, 1, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (63, N'Student Guides Document.pdf', N'Student Guides Document.pdf', N'D:\Java\PRJ\DocumentManagement\file\Student Guides Document.pdf', N'https://is1-ssl.mzstatic.com/image/thumb/Purple122/v4/dd/84/33/dd8433c7-e3f5-d654-1b61-809f25cf9540/FoxitReader.png/246x0w.webp', 50, CAST(N'2024-03-05' AS Date), N'approved', 5, 1, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (64, N'Template4_Issues Report.xlsx', N'Template4_Issues Report.xlsx', N'D:\Java\PRJ\DocumentManagement\file\Template4_Issues Report.xlsx', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg/1200px-Microsoft_Office_Excel_%282019%E2%80%93present%29.svg.png', 24, CAST(N'2024-03-05' AS Date), N'approved', 2, 1, 1)
INSERT [dbo].[Documents] ([documentID], [docName], [tilte], [path], [imgDoc], [view], [dateCreated], [statusDoc], [categoryID], [userID], [status]) VALUES (65, N'Template4_Issues Report.xlsx', N'Template4_Issues Report.xlsx', N'D:\Java\PRJ\DocumentManagement\file\Template4_Issues Report.xlsx', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg/1200px-Microsoft_Office_Excel_%282019%E2%80%93present%29.svg.png', 27, CAST(N'2024-03-05' AS Date), N'approved', 10, 3, 1)
SET IDENTITY_INSERT [dbo].[Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [name], [avatar], [email], [phone], [address], [status]) VALUES (1, N'admin', N'', N'admin1@gmail.com', N'0983748392', N'Viet Nam - Ha Noi', 1)
INSERT [dbo].[User] ([userID], [name], [avatar], [email], [phone], [address], [status]) VALUES (2, N'admin2', N'', N'admin2@gmail.com', N'0873684736', N'Viet Nam - Sai Gon', 1)
INSERT [dbo].[User] ([userID], [name], [avatar], [email], [phone], [address], [status]) VALUES (3, N'Huynh Cau', N'asets\img\avatar-generations_prsz.jpg', N'user1@gmail.com', N'0333333   ', N'Viet Nam - Tuyen Quang', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Documents] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([documentID])
REFERENCES [dbo].[Documents] ([documentID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
