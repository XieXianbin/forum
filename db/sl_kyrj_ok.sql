USE [KYRJ.MDF]
GO
/****** Object:  Table [dbo].[users]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[u_secret] [nvarchar](50) NOT NULL,
	[u_regedit_time] [datetime] NULL,
	[u_r_name] [nvarchar](50) NULL,
	[u_age] [int] NULL,
	[u_sex] [nvarchar](50) NULL,
	[u_school] [nvarchar](50) NULL,
	[u_qq] [nvarchar](50) NULL,
	[u_email] [nvarchar](50) NULL,
	[u_address] [nvarchar](50) NULL,
	[u_head_image] [image] NULL,
	[u_question] [nvarchar](50) NULL,
	[u_answer] [nvarchar](50) NULL,
	[u_personal] [nvarchar](100) NULL,
 CONSTRAINT [PK_users_1] PRIMARY KEY CLUSTERED 
(
	[u_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[super_users]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[super_users](
	[s_u_id] [int] IDENTITY(1,1) NOT NULL,
	[s_u_name] [nvarchar](50) NOT NULL,
	[s_u_secret] [nvarchar](50) NULL,
	[s_u_time] [datetime] NULL,
	[s_u_sex] [nvarchar](50) NULL,
	[s_u_phone] [nvarchar](50) NULL,
	[s_u_r_name] [nvarchar](50) NULL,
	[s_u_other] [nvarchar](50) NULL,
 CONSTRAINT [PK_super_users] PRIMARY KEY CLUSTERED 
(
	[s_u_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recommend]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recommend](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_title] [nvarchar](100) NULL,
	[c_url] [nvarchar](100) NULL,
	[c_num] [int] NULL,
	[c_type] [nvarchar](50) NULL,
	[c_other] [nvarchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[n_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_user] [nvarchar](50) NULL,
	[n_title] [nvarchar](100) NULL,
	[n_num] [int] NULL,
	[n_time] [datetime] NULL,
	[n_text] [text] NULL,
	[n_type] [nvarchar](50) NULL,
	[n_other] [nvarchar](50) NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[n_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diarylisting]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diarylisting](
	[d_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[d_time] [datetime] NULL,
	[d_type] [nvarchar](50) NULL,
	[d_title] [nvarchar](50) NOT NULL,
	[d_text] [ntext] NOT NULL,
	[d_good] [int] NOT NULL,
	[read_number] [int] NOT NULL,
	[com_number] [int] NOT NULL,
	[d_p_or_s] [nvarchar](50) NOT NULL,
	[d_draft] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_diarylisting] PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commentlist]    Script Date: 04/19/2013 21:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commentlist](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[d_id] [int] NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[c_time] [datetime] NULL,
	[c_text] [nvarchar](200) NULL,
 CONSTRAINT [PK_commentlist] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_diarylisting_d_type]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_d_type]  DEFAULT (N'励志日记') FOR [d_type]
GO
/****** Object:  Default [DF_diarylisting_d_good]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_d_good]  DEFAULT ((0)) FOR [d_good]
GO
/****** Object:  Default [DF_diarylisting_read_number]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_read_number]  DEFAULT ((0)) FOR [read_number]
GO
/****** Object:  Default [DF_diarylisting_com_number]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_com_number]  DEFAULT ((0)) FOR [com_number]
GO
/****** Object:  Default [DF_diarylisting_d_p_or_s]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_d_p_or_s]  DEFAULT (N'p') FOR [d_p_or_s]
GO
/****** Object:  Default [DF_diarylisting_d_draft]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[diarylisting] ADD  CONSTRAINT [DF_diarylisting_d_draft]  DEFAULT (N'no') FOR [d_draft]
GO
/****** Object:  Default [DF_news_n_num]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_n_num]  DEFAULT ((0)) FOR [n_num]
GO
/****** Object:  Default [DF_news_n_type]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_n_type]  DEFAULT (N'bznews') FOR [n_type]
GO
/****** Object:  Default [DF_users_u_sex]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_u_sex]  DEFAULT (N'男') FOR [u_sex]
GO
/****** Object:  Check [CK_users]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [CK_users] CHECK  (([u_age]>=(0) AND [u_age]<(120)))
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [CK_users]
GO
/****** Object:  ForeignKey [FK_commentlist_diarylisting]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[commentlist]  WITH CHECK ADD  CONSTRAINT [FK_commentlist_diarylisting] FOREIGN KEY([c_id])
REFERENCES [dbo].[diarylisting] ([d_id])
GO
ALTER TABLE [dbo].[commentlist] CHECK CONSTRAINT [FK_commentlist_diarylisting]
GO
/****** Object:  ForeignKey [FK_commentlist_users]    Script Date: 04/19/2013 21:57:15 ******/
ALTER TABLE [dbo].[commentlist]  WITH CHECK ADD  CONSTRAINT [FK_commentlist_users] FOREIGN KEY([u_name])
REFERENCES [dbo].[users] ([u_name])
GO
ALTER TABLE [dbo].[commentlist] CHECK CONSTRAINT [FK_commentlist_users]
GO
