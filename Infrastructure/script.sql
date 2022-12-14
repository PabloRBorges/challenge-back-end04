USE [ControleFinanceiro]
GO
/****** Object:  Table [dbo].[expense]    Script Date: 05/08/2022 20:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[expense](
	[id] [uniqueidentifier] NOT NULL,
	[descricao] [varchar](100) NULL,
	[valor] [money] NULL,
	[data] [datetime2](7) NULL,
 CONSTRAINT [PK_expense] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[income]    Script Date: 05/08/2022 20:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[income](
	[id] [uniqueidentifier] NOT NULL,
	[descricao] [varchar](100) NULL,
	[valor] [money] NULL,
	[data] [datetime2](7) NULL,
 CONSTRAINT [PK_income] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
