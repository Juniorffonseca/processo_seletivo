/* Em SQL, quero saber, por UF, quantos são os médicos da especialidade Clínica
Médica que são membros da comunidade, são visitados e prescrevem o
medicamento B. Entregue o SQL utilizado para obter a resposta */

SELECT prescricoes.Estado, count(*)
FROM prescricoes,
	membros,
    visitados
WHERE prescricoes.especialidade = 'CLINICA MEDICA'
	and membros.ID_MEDICO = prescricoes.ID_MEDICO
    and visitados.VISITADO = 'SIM'
    and prescricoes.Medicamento_prescrito = 'MEDICAMENTO B'
GROUP BY Estado