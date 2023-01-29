/*
1. Em SQL, quero saber, por UF, quantos são os médicos da especialidade Clínica
Médica que são membros da comunidade, são visitados e prescrevem o
medicamento B. Entregue o SQL utilizado para obter a resposta
*/

SELECT prescricoes.Estado, COUNT(DISTINCT prescricoes.ID_MEDICO) as Total_Medicos
FROM prescricoes
JOIN membros ON prescricoes.ID_MEDICO = membros.ID_MEDICO
JOIN visitados ON prescricoes.ID_MEDICO = visitados.ID_MEDICO
WHERE prescricoes.especialidade = 'CLINICA MEDICA'
and visitados.VISITADO = 'SIM'
and prescricoes.Medicamento_prescrito = 'MEDICAMENTO B'
GROUP BY Estado