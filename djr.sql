use sucos_vendas;
select * from itens_notas_fiscais;
select * from notas_fiscais;
select NF.cpf, date_format(NF.data_venda,'%Y-%m') as ANO_MES, INF.QUANTIDADE from notas_fiscais as NF inner join itens_notas_fiscais as INF on NF.NUMERO = INF.NUMERO;
-- Agrupar e soma o campo quanttidades
select NF.CPF, date_format(NF.DATA_VENDA, '%Y-%m') AS ANO_MES,
 SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDA
 FROM notas_fiscais AS NF 
INNER JOIN itens_notas_fiscais AS INF ON NF.NUMERO = INF.NUMERO 
GROUP BY NF.CPF,DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')
 