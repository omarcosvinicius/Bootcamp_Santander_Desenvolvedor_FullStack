select banco.nome,
	agencia.nome,
	conta_corrente.numero,
	conta_corrente.digito,
	cliente.nome,
	cliente_transacoes.id,
	cliente_transacoes.tipo_transacao_id,
	tipo_transacao.nome,
	cliente_transacoes.valor
from banco
join agencia on agencia.banco_numero = banco.numero
join conta_corrente
	-- on conta_corrente.banco_numero = agencia.banco_numero
	on conta_corrente.banco_numero = banco.numero
join cliente
	on cliente.numero = conta_corrente.cliente_numero
join cliente_transacoes
	on cliente_transacoes.cliente_numero = cliente.numero
join tipo_transacao
	on cliente_transacoes.tipo_transacao_id = tipo_transacao.id;