/*  Em SQL, quero saber o ano+mês (ex: 202204) em que cada região teve sua
quantidade máxima de visitas. Entregue o SQL utilizado para obter a resposta. */

SELECT prescricoes.Mes_prescricao, count(*)
FROM prescricoes
group by prescricoes.Mes_prescricao
order by count(*) desc