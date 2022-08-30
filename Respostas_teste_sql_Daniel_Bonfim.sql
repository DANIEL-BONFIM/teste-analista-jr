select count(id) as Total_de_Clientes from clientes;

select nome as Artistas_no_Sistema from artistas;

select gravadoras_id, count(id) as Total 
from artistas 
group by gravadoras_id;

with dados as(
	select 
		gravadoras_id, count(*) as Total	
	from artistas 
	group by gravadoras_id) 
select gravadoras_id as Gravadora_com_mais_artistas, Total from dados where total= (select max(Total) from dados);

select 
	count(ms.id) as Total,
	g.descricao 
from musicas ms 
right join generos g on ms.generos_id=g.id 
group by g.descricao;
