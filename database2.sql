/*  Em SQL, quero saber o ano+mês (ex: 202204) em que cada região teve sua
quantidade máxima de visitas. Entregue o SQL utilizado para obter a resposta. */

SELECT MAX(prescricoes.Mes_prescricao) as ano_mes, prescricoes.Regiao, COUNT(*) as visitas
FROM prescricoes
GROUP BY regiao
ORDER BY visitas DESC
