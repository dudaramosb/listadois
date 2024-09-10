-- E-commerce e Gestão de Inventário :                                                                                                       exercicio 4 SELECT 
    ip.item_pedido_id,
    ip.pedido_id,
    p.nome AS nome_produto,
    ip.quantidade,
    ip.preco_unitario
FROM 
    itens_pedido ip
INNER JOIN 
    produtos p ON ip.produto_id = p.produto_id;


-- Sistema de Gestão de Relacionamento com o Cliente (CRM)                                                                                                           exerxicio 2                                                                                SELECT 
    c.nome AS nome_campanha,
    cl.nome AS nome_cliente,
    cl.email AS email_cliente,
    p.data_participacao
FROM 
    participacoes_campanha p
INNER JOIN 
    campanhas c ON p.campanha_id = c.campanha_id
INNER JOIN 
    clientes cl ON p.cliente_id = cl.cliente_id
ORDER BY 
    c.nome, cl.nome;

-- Finanças e Controle Orçamentário                                                                  exercicio 3                                                                                                                                SELECT 
    t.transacao_id,
    t.conta_id,
    t.tipo AS tipo_transacao,
    t.valor,
    t.data_transacao,
    t.descricao,
    o.categoria AS categoria_orcamento
FROM 
    transacoes t
LEFT JOIN 
    orcamentos o ON t.valor BETWEEN o.valor_planejado * 0.9 AND o.valor_planejado * 1.1
        AND o.data_inicio <= t.data_transacao
        AND o.data_fim >= t.data_transacao
ORDER BY 
    t.transacao_id;

-- Saúde e Gestão de Prontuários Eletrônicos                                                    exercicio 1                                                                                                    SELECT 
    p.nome AS nome_paciente,
    pr.medico AS nome_medico,
    pr.diagnostico,
    pr.prescricao,
    pr.observacoes,
    pr.data_consulta
FROM 
    prontuarios pr
INNER JOIN 
    pacientes p ON pr.paciente_id = p.paciente_id
ORDER BY 
    pr.data_consulta DESC;

-- Logística e Cadeia de Suprimentos                                                                                                                                                 exercicio 5                                                                                                          SELECT 
    f.nome AS nome_fornecedor,
    p.nome AS nome_produto,
    p.descricao AS descricao_produto,
    p.preco,
    p.estoque
FROM 
    fornecedores f
LEFT JOIN 
    produtos p ON f.fornecedor_id = p.fornecedor_id
ORDER BY 
    f.nome, p.nome;