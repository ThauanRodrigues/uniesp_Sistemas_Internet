USE [bdpedido]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CodigoDaCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NomeDaCategoria] [varchar](15) NULL,
	[Descricao] [varchar](50) NULL,
	[Figura] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDaCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[CodigoDoCliente] [varchar](5) NOT NULL,
	[NomeDaEmpresa] [varchar](40) NULL,
	[NomeDoContato] [varchar](30) NULL,
	[CargoDoContato] [varchar](30) NULL,
	[Endereco] [varchar](60) NULL,
	[Cidade] [varchar](15) NULL,
	[Regiao] [varchar](15) NULL,
	[CEP] [varchar](10) NULL,
	[Pais] [varchar](15) NULL,
	[Telefone] [varchar](24) NULL,
	[Fax] [varchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalhes_do_Pedido]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalhes_do_Pedido](
	[NumeroDoPedido] [int] NOT NULL,
	[CodigoDoProduto] [int] NULL,
	[PrecoUnitário] [int] NULL,
	[Quantidade] [int] NULL,
	[Desconto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[CodigoDoFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[NomeDaEmpresa] [varchar](40) NULL,
	[NomeDoContato] [varchar](30) NULL,
	[CargoDoContato] [varchar](30) NULL,
	[Endereco] [varchar](60) NULL,
	[Cidade] [varchar](15) NULL,
	[Regiao] [varchar](15) NULL,
	[CEP] [varchar](10) NULL,
	[Pais] [varchar](15) NULL,
	[Telefone] [varchar](24) NULL,
	[Fax] [varchar](24) NULL,
	[HomePage] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDoFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[CodigoDoFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[Sobrenome] [varchar](20) NULL,
	[Nome] [varchar](10) NULL,
	[Cargo] [varchar](30) NULL,
	[Tratamento] [varchar](25) NULL,
	[DataDeNascimento] [date] NULL,
	[DataDeContratacao] [date] NULL,
	[Endereco] [varchar](60) NULL,
	[Cidade] [varchar](15) NULL,
	[Regiao] [varchar](15) NULL,
	[CEP] [varchar](10) NULL,
	[Pais] [varchar](15) NULL,
	[TelefoneResidencial] [varchar](24) NULL,
	[Ramal] [varchar](4) NULL,
	[Foto] [varchar](15) NULL,
	[Observacoes] [text] NULL,
	[Supervisor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDoFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[NumeroDoPedido] [int] IDENTITY(1,1) NOT NULL,
	[CodigoDoCliente] [varchar](5) NOT NULL,
	[CodigoDoFuncionario] [int] NULL,
	[DataDoPedido] [date] NULL,
	[DataDeEntrega] [date] NULL,
	[DataDeEnvio] [date] NULL,
	[CodigoDaTransportadora] [int] NULL,
	[Frete] [decimal](19, 4) NULL,
	[NomeDoDestinatario] [varchar](40) NULL,
	[EndereçoDoDestinatario] [varchar](60) NULL,
	[CidadeDeDestino] [varchar](15) NULL,
	[RegiaoDeDestino] [varchar](15) NULL,
	[CEPdeDestino] [varchar](10) NULL,
	[PaisDeDestino] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroDoPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[CodigoDoProduto] [int] IDENTITY(1,1) NOT NULL,
	[NomeDoProduto] [varchar](40) NULL,
	[CodigoDoFornecedor] [int] NULL,
	[CodigoDaCategoria] [int] NULL,
	[QuantidadePorUnidade] [varchar](25) NULL,
	[PrecoUnitario] [decimal](19, 4) NULL,
	[UnidadesEmEstoque] [int] NULL,
	[UnidadesPedidas] [int] NULL,
	[NivelDeReposicao] [int] NULL,
	[Descontinuado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportadoras]    Script Date: 08/09/2023 20:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportadoras](
	[CodigoDaTransportadora] [int] IDENTITY(1,1) NOT NULL,
	[NomeDaEmpresa] [varchar](40) NULL,
	[Telefone] [varchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDaTransportadora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD  CONSTRAINT [FK_supervisor] FOREIGN KEY([Supervisor])
REFERENCES [dbo].[Funcionarios] ([CodigoDoFuncionario])
GO
ALTER TABLE [dbo].[Funcionarios] CHECK CONSTRAINT [FK_supervisor]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_codigofuncionario] FOREIGN KEY([CodigoDoFuncionario])
REFERENCES [dbo].[Funcionarios] ([CodigoDoFuncionario])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_codigofuncionario]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_codigotransportadora] FOREIGN KEY([CodigoDaTransportadora])
REFERENCES [dbo].[Transportadoras] ([CodigoDaTransportadora])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_codigotransportadora]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_codigocategoria] FOREIGN KEY([CodigoDaCategoria])
REFERENCES [dbo].[Categorias] ([CodigoDaCategoria])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_codigocategoria]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_codigofornecedor] FOREIGN KEY([CodigoDoFornecedor])
REFERENCES [dbo].[Fornecedores] ([CodigoDoFornecedor])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_codigofornecedor]
GO
