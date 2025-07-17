USE [loja_ficticia];

CREATE TABLE [Autores](
	[AutorID] [int] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Biografia] [nvarchar](max) NOT NULL);


CREATE TABLE [Clientes](
	[ClienteID] [int] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Endereco] [varchar](200) NOT NULL,
	[DataCadastro] [date] DEFAULT GETDATE() NOT NULL);


CREATE TABLE [Despesas](
	[ContaID] [int] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[Valor] [decimal](10, 2) NOT NULL,
	[DataVencimento] [date] NULL);


CREATE TABLE [Editoras](
	[EditoraID] [int] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Contato] [nvarchar](100) NOT NULL);
 

CREATE TABLE [Funcionarios](
	[FuncionarioID] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Cargo] [varchar](50) NOT NULL,
	[Salario] [decimal](10, 2) NULL,
	[DataContratacao] [date] NOT NULL);


CREATE TABLE [Generos](
	[GeneroID] [int] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL);
 

CREATE TABLE [ItensVenda](
	[ItemVendaID] [int] NOT NULL,
	[VendaID] [int] NOT NULL,
	[LivroID] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[PrecoUnitario] [decimal](10, 2) NOT NULL);
 

CREATE TABLE [LucroMensal](
	[LucroID] [int] NOT NULL,
	[MesAno] [date] NOT NULL,
	[ReceitaTotal] [decimal](10, 2) NOT NULL,
	[CustoTotal] [decimal](10, 2) NOT NULL,
	[Lucro] [decimal](10, 2) NOT NULL);


CREATE TABLE [Produtos](
	[LivroID] [int] NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[AutorID] [int] NOT NULL,
	[EditoraID] [int] NOT NULL,
	[ISBN] [varchar](20) UNIQUE NOT NULL,
	[GeneroID] [int] NOT NULL,
	[Edicao] [varchar](50) NOT NULL,
	[Formato] [varchar](50) NOT NULL,
	[Preco] [decimal](10, 2) NOT NULL,
	[Custo] [decimal](10, 2) NOT NULL,
	[QuantidadeEstoque] [int] DEFAULT 0,
	[DataCadastro] [date] DEFAULT GETDATE() NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[CapaURL] [nvarchar](255) NOT NULL);


CREATE TABLE [Vendas](
	[VendaID] [int] NOT NULL,
	[ClienteID] [int] NOT NULL,
	[FuncionarioID] [int] NOT NULL,
	[DataVenda] [datetime] NOT NULL,
	[Total] [decimal](10, 2) NULL,
	[MetodoPagamento] [varchar](50) NOT NULL);

-- Primary Keys

ALTER TABLE [Autores] ADD CONSTRAINT [PK_AUTORID] PRIMARY KEY (AutorID);
ALTER TABLE [Clientes] ADD CONSTRAINT [PK_CLIENTESID] PRIMARY KEY (ClienteID);
ALTER TABLE [Despesas] ADD CONSTRAINT [PK_CONTAID] PRIMARY KEY (ContaID);
ALTER TABLE [Editoras] ADD CONSTRAINT [PK_EDITORAID] PRIMARY KEY (EditoraID);
ALTER TABLE [Funcionarios] ADD CONSTRAINT [PK_FUNCIONARIOID] PRIMARY KEY (FuncionarioID);
ALTER TABLE [Generos] ADD CONSTRAINT [PK_GENEROID] PRIMARY KEY (GeneroID);
ALTER TABLE [ItensVenda] ADD CONSTRAINT [PK_ITENSVENDA] PRIMARY KEY (ItemVendaID);
ALTER TABLE [LucroMensal] ADD CONSTRAINT [PK_LUCROID] PRIMARY KEY (LucroID);
ALTER TABLE [Produtos] ADD CONSTRAINT [PK_LIVROID] PRIMARY KEY (LivroID);
ALTER TABLE [Vendas] ADD CONSTRAINT [PK_VENDAID] PRIMARY KEY (VendaID);

--Foreign Keys

ALTER TABLE [ItensVenda] ADD  CONSTRAINT [FK_LIVROID] FOREIGN KEY(LivroID) REFERENCES [Produtos] (LivroID);
ALTER TABLE [ItensVenda] ADD  CONSTRAINT [FK_VENDAID] FOREIGN KEY(VendaID) REFERENCES [Vendas] (VendaID);
ALTER TABLE [Produtos] ADD  CONSTRAINT [FK_AUTORID] FOREIGN KEY(AutorID) REFERENCES [Autores] (AutorID);
ALTER TABLE [Produtos] ADD CONSTRAINT [FK_EDITORAID] FOREIGN KEY(EditoraID) REFERENCES [Editoras] (EditoraID);
ALTER TABLE [Produtos] ADD  CONSTRAINT [FK_GENEROID] FOREIGN KEY(GeneroID) REFERENCES [Generos] (GeneroID);
ALTER TABLE [Vendas] ADD  CONSTRAINT [FK_COMPRA_CLIENTE] FOREIGN KEY(ClienteID) REFERENCES [Clientes] (ClienteID);
ALTER TABLE [Vendas] ADD  CONSTRAINT [FK_VENDA_FUNCIONARIO] FOREIGN KEY(FuncionarioID) REFERENCES [Funcionarios] (FuncionarioID);
