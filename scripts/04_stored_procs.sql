--Checar o total de vendas em um mês.
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'sp_TotalVendasPorMes')
	BEGIN
		DROP PROCEDURE sp_TotalVendasPorMes
	END
GO

CREATE PROCEDURE sp_TotalVendasPorMes
AS
BEGIN
    SELECT
        FORMAT(DataVenda, 'yyyy-MM') AS MesAno,
        SUM(Total) AS TotalVendas
    FROM Vendas
    GROUP BY FORMAT(DataVenda, 'yyyy-MM')
    ORDER BY MesAno;
END;
--


--Checar estoques que precisam ser abastecidos.
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'sp_EstoqueBaixo')
	BEGIN
		DROP PROCEDURE sp_EstoqueBaixo
	END
GO

CREATE PROCEDURE sp_EstoqueBaixo
    @QuantidadeLimite INT = 5
AS
BEGIN
    SELECT LivroID, Titulo, QuantidadeEstoque
    FROM Produtos
    WHERE QuantidadeEstoque <= @QuantidadeLimite
    ORDER BY QuantidadeEstoque ASC;
END;
--


--Checar estoques que não precisam de reabastecimento imediato.
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'sp_EstoqueChecagem')
	BEGIN
		DROP PROCEDURE sp_EstoqueChecagem
	END
GO

CREATE PROCEDURE sp_EstoqueChecagem
    @QuantidadeDisponivel INT = 15
AS
BEGIN
	SET NOCOUNT ON;

    SELECT LivroID, Titulo, QuantidadeEstoque
    FROM Produtos
    WHERE QuantidadeEstoque >= @QuantidadeDisponivel
    ORDER BY QuantidadeEstoque ASC;
END;
--


--Checar histórico de compra de clientes específicos
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'sp_HistoricoComprasCliente')
	BEGIN
		DROP PROCEDURE sp_HistoricoComprasCliente
	END
GO

CREATE PROCEDURE sp_HistoricoComprasCliente
    @ClienteID INT
AS
BEGIN
    SELECT 
        V.VendaID,
        V.DataVenda,
        V.Total,
        V.MetodoPagamento,
        P.Titulo,
        IV.Quantidade,
        IV.PrecoUnitario
    FROM Vendas V
    JOIN ItensVenda IV ON V.VendaID = IV.VendaID
    JOIN Produtos P ON P.LivroID = IV.LivroID
    WHERE V.ClienteID = @ClienteID
    ORDER BY V.DataVenda DESC;
END;
--