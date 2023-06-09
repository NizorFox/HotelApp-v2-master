USE [HotelBase]
GO
/****** Object:  Table [dbo].[do_table]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[do_table](
	[id_do_table] [int] IDENTITY(1,1) NOT NULL,
	[do_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_do_table] PRIMARY KEY CLUSTERED 
(
	[id_do_table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gender_table]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender_table](
	[gend_id] [int] NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_gender_table] PRIMARY KEY CLUSTERED 
(
	[gend_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hardware_table]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hardware_table](
	[hardware_id] [int] NOT NULL,
	[hardware_name] [nvarchar](50) NOT NULL,
	[hardware_count] [varchar](5) NOT NULL,
	[number_room] [varchar](4) NOT NULL,
 CONSTRAINT [PK_hardware_table] PRIMARY KEY CLUSTERED 
(
	[hardware_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotelroom_classes]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotelroom_classes](
	[id_class] [int] NOT NULL,
	[class] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_hotelroom_classes] PRIMARY KEY CLUSTERED 
(
	[id_class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotelrooms]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotelrooms](
	[number_room] [varchar](4) NOT NULL,
	[places] [int] NOT NULL,
	[rooms] [int] NOT NULL,
	[id_class] [int] NOT NULL,
	[bathroom] [tinyint] NOT NULL,
 CONSTRAINT [PK_hotelrooms] PRIMARY KEY CLUSTERED 
(
	[number_room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[journal_table]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journal_table](
	[id_journal_table] [int] IDENTITY(1,1) NOT NULL,
	[login_users] [nchar](20) NOT NULL,
	[journal_datetime] [datetime] NULL,
	[id_do_table] [int] NOT NULL,
 CONSTRAINT [PK_journal_table] PRIMARY KEY CLUSTERED 
(
	[id_journal_table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listresidents]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listresidents](
	[passport] [varchar](10) NOT NULL,
	[number_room] [varchar](4) NOT NULL,
	[settlement_date] [datetime] NOT NULL,
	[eviction_date] [datetime] NOT NULL,
	[id_listres] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_listresidents] PRIMARY KEY CLUSTERED 
(
	[id_listres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[residents]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[residents](
	[passport] [varchar](10) NOT NULL,
	[last_name] [nvarchar](20) NOT NULL,
	[first_name] [nvarchar](20) NOT NULL,
	[patronymic] [nvarchar](20) NOT NULL,
	[birth] [datetime] NOT NULL,
	[gend_id] [int] NOT NULL,
	[address] [char](50) NOT NULL,
	[number_phone] [varchar](11) NULL,
	[scanpass] [char](255) NOT NULL,
	[destination] [nvarchar](255) NULL,
	[info] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_residents] PRIMARY KEY CLUSTERED 
(
	[passport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_hardware]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_hardware](
	[hardware_id] [int] NULL,
	[number_room] [varchar](4) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_room_hardware] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[last_name] [nvarchar](20) NULL,
	[first_name] [nvarchar](20) NULL,
	[login] [nchar](20) NOT NULL,
	[pass] [nchar](20) NOT NULL,
	[id_users_type] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_type]    Script Date: 26.04.2023 14:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_type](
	[id_users_type] [int] NOT NULL,
	[type] [nvarchar](20) NULL,
 CONSTRAINT [PK_users_type] PRIMARY KEY CLUSTERED 
(
	[id_users_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hardware_table]  WITH CHECK ADD  CONSTRAINT [FK_hardware_table_hotelrooms] FOREIGN KEY([number_room])
REFERENCES [dbo].[hotelrooms] ([number_room])
GO
ALTER TABLE [dbo].[hardware_table] CHECK CONSTRAINT [FK_hardware_table_hotelrooms]
GO
ALTER TABLE [dbo].[hotelrooms]  WITH CHECK ADD  CONSTRAINT [FK_hotelrooms_hotelroom_classes] FOREIGN KEY([id_class])
REFERENCES [dbo].[hotelroom_classes] ([id_class])
GO
ALTER TABLE [dbo].[hotelrooms] CHECK CONSTRAINT [FK_hotelrooms_hotelroom_classes]
GO
ALTER TABLE [dbo].[journal_table]  WITH CHECK ADD  CONSTRAINT [FK_journal_table_do_table1] FOREIGN KEY([id_do_table])
REFERENCES [dbo].[do_table] ([id_do_table])
GO
ALTER TABLE [dbo].[journal_table] CHECK CONSTRAINT [FK_journal_table_do_table1]
GO
ALTER TABLE [dbo].[journal_table]  WITH CHECK ADD  CONSTRAINT [FK_journal_table_users] FOREIGN KEY([login_users])
REFERENCES [dbo].[users] ([login])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[journal_table] CHECK CONSTRAINT [FK_journal_table_users]
GO
ALTER TABLE [dbo].[listresidents]  WITH CHECK ADD  CONSTRAINT [FK_listresidents_hotelrooms] FOREIGN KEY([number_room])
REFERENCES [dbo].[hotelrooms] ([number_room])
GO
ALTER TABLE [dbo].[listresidents] CHECK CONSTRAINT [FK_listresidents_hotelrooms]
GO
ALTER TABLE [dbo].[listresidents]  WITH CHECK ADD  CONSTRAINT [FK_listresidents_residents] FOREIGN KEY([passport])
REFERENCES [dbo].[residents] ([passport])
GO
ALTER TABLE [dbo].[listresidents] CHECK CONSTRAINT [FK_listresidents_residents]
GO
ALTER TABLE [dbo].[residents]  WITH CHECK ADD  CONSTRAINT [FK_residents_gender_table] FOREIGN KEY([gend_id])
REFERENCES [dbo].[gender_table] ([gend_id])
GO
ALTER TABLE [dbo].[residents] CHECK CONSTRAINT [FK_residents_gender_table]
GO
ALTER TABLE [dbo].[room_hardware]  WITH CHECK ADD  CONSTRAINT [FK_Таблица1_hardware_table] FOREIGN KEY([hardware_id])
REFERENCES [dbo].[hardware_table] ([hardware_id])
GO
ALTER TABLE [dbo].[room_hardware] CHECK CONSTRAINT [FK_Таблица1_hardware_table]
GO
ALTER TABLE [dbo].[room_hardware]  WITH CHECK ADD  CONSTRAINT [FK_Таблица1_hotelrooms] FOREIGN KEY([number_room])
REFERENCES [dbo].[hotelrooms] ([number_room])
GO
ALTER TABLE [dbo].[room_hardware] CHECK CONSTRAINT [FK_Таблица1_hotelrooms]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_users_type] FOREIGN KEY([id_users_type])
REFERENCES [dbo].[users_type] ([id_users_type])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_users_type]
GO
