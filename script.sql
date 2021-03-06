USE [encuestas]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [bigint] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
 CONSTRAINT [PK_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[polls](
	[id] [bigint] NOT NULL,
	[documentNumber] [bigint] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[id_brand] [bigint] NOT NULL,
	[comments] [varchar](max) NOT NULL,
	[version] [int] NOT NULL,
	[fecha_creacion] [datetime2](0) NOT NULL,
	[fecha_modificacion] [datetime2](0) NOT NULL,
 CONSTRAINT [PK__encuesta__C03F9857BD9459FA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_permissions](
	[id_role] [bigint] NOT NULL,
	[id_permission] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC,
	[id_permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[attempts] [int] NOT NULL,
	[locked] [bit] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_roles](
	[id_user] [bigint] NOT NULL,
	[id_role] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC,
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (1, N'Acer', N'Acer')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (2, N'Alienware', N'Alienware')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (3, N'Apple', N'Apple')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (4, N'Asus', N'Asus')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (5, N'Dell', N'Dell')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (6, N'Fujitsu', N'Fujitsu')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (7, N'Hitachi', N'Hitachi')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (8, N'HP', N'Hewlett-Packard')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (9, N'Huawei', N'Huawei')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (10, N'Lenovo', N'Lenovo')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (11, N'LG', N'LG')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (12, N'MSI', N'Micro-Star International')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (13, N'Packard Bell', N'Packard Bell')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (14, N'Samsung', N'Samsung')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (15, N'Sony', N'Sony')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (16, N'Toshiba', N'Toshiba')
INSERT [dbo].[brands] ([id], [code], [name]) VALUES (17, N'VAIO', N'VAIO')
GO
SET IDENTITY_INSERT [dbo].[permissions] ON 

INSERT [dbo].[permissions] ([id], [name], [description]) VALUES (1, N'', N'ENCUESTAS')
INSERT [dbo].[permissions] ([id], [name], [description]) VALUES (2, N'', N'MARCAS')
INSERT [dbo].[permissions] ([id], [name], [description]) VALUES (3, N'', N'USUARIOS')
INSERT [dbo].[permissions] ([id], [name], [description]) VALUES (4, N'', N'ROLES')
INSERT [dbo].[permissions] ([id], [name], [description]) VALUES (5, N'', N'PERMISOS')
SET IDENTITY_INSERT [dbo].[permissions] OFF
GO
INSERT [dbo].[polls] ([id], [documentNumber], [email], [id_brand], [comments], [version], [fecha_creacion], [fecha_modificacion]) VALUES (4, 1, N'example@example.com', 1, N'XXXXXX', 0, CAST(N'2021-02-17T06:38:29.0000000' AS DateTime2), CAST(N'2021-02-17T06:38:29.0000000' AS DateTime2))
INSERT [dbo].[polls] ([id], [documentNumber], [email], [id_brand], [comments], [version], [fecha_creacion], [fecha_modificacion]) VALUES (9, 72229398, N'albam.osorio.io@gmail.com', 4, N'CVCBVBBCV', 0, CAST(N'2021-02-19T00:52:31.0000000' AS DateTime2), CAST(N'2021-02-19T00:52:31.0000000' AS DateTime2))
INSERT [dbo].[polls] ([id], [documentNumber], [email], [id_brand], [comments], [version], [fecha_creacion], [fecha_modificacion]) VALUES (10, 72229398, N'albam.osorio.io@gmail.com', 16, N'tyjjghjghjhf', 0, CAST(N'2021-02-19T01:05:53.0000000' AS DateTime2), CAST(N'2021-02-19T01:05:53.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name], [description]) VALUES (1, N'ADMIN', N'Admin role')
INSERT [dbo].[roles] ([id], [name], [description]) VALUES (2, N'USER', N'Researcher role')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (1, 1)
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (1, 2)
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (1, 3)
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (1, 4)
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (1, 5)
INSERT [dbo].[roles_permissions] ([id_role], [id_permission]) VALUES (2, 1)
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [password], [attempts], [locked]) VALUES (0, N'arosorio', N'$2a$10$1vQmZRJQ63CfaSmtEZHyJ.aqdqDMicNfQ8jOVuiPuL/hPB1MOBSim', 1, 0)
INSERT [dbo].[users] ([id], [username], [password], [attempts], [locked]) VALUES (1, N'user1', N'$2a$10$oC3AJPgNjNoMKNM36tEz7.kMDJHztwbDjFL2GDq4IRXT5Pycg7ENu', 0, 0)
INSERT [dbo].[users] ([id], [username], [password], [attempts], [locked]) VALUES (2, N'user2', N'$2a$04$StghL1FYVyZLdi8/DIkAF./2rz61uiYPI3.MaAph5hUq03XKeflyW', 0, 0)
INSERT [dbo].[users] ([id], [username], [password], [attempts], [locked]) VALUES (3, N'user3', N'$2a$04$Lk4zqXHrHd82w5/tiMy8ru9RpAXhvFfmHOuqTmFPWQcUhBD8SSJ6W', 0, 0)
INSERT [dbo].[users] ([id], [username], [password], [attempts], [locked]) VALUES (4, N'user4', N'$2a$10$A54BP.kMNvJVRlbpH0OIuOWa8iXeJR/oecTWW2PQdYxTgH7FYyQlG', 0, 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
INSERT [dbo].[users_roles] ([id_user], [id_role]) VALUES (0, 1)
INSERT [dbo].[users_roles] ([id_user], [id_role]) VALUES (1, 2)
INSERT [dbo].[users_roles] ([id_user], [id_role]) VALUES (2, 2)
INSERT [dbo].[users_roles] ([id_user], [id_role]) VALUES (3, 2)
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_brands] ON [dbo].[brands]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [UK_users_01] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[polls]  WITH CHECK ADD  CONSTRAINT [FK_polls_brands] FOREIGN KEY([id_brand])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[polls] CHECK CONSTRAINT [FK_polls_brands]
GO
ALTER TABLE [dbo].[roles_permissions]  WITH CHECK ADD  CONSTRAINT [FK_roles_permissions_permissions] FOREIGN KEY([id_permission])
REFERENCES [dbo].[permissions] ([id])
GO
ALTER TABLE [dbo].[roles_permissions] CHECK CONSTRAINT [FK_roles_permissions_permissions]
GO
ALTER TABLE [dbo].[roles_permissions]  WITH CHECK ADD  CONSTRAINT [FK_roles_permissions_roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[roles_permissions] CHECK CONSTRAINT [FK_roles_permissions_roles]
GO
ALTER TABLE [dbo].[users_roles]  WITH CHECK ADD  CONSTRAINT [FK_users_roles_roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [FK_users_roles_roles]
GO
ALTER TABLE [dbo].[users_roles]  WITH CHECK ADD  CONSTRAINT [FK_users_roles_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [FK_users_roles_users]
GO
