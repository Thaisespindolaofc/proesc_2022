
--- 1-O cliente gostaria de saber quantos produtos ele possui em cada categoria. Qual SQL você faria para realizar essa consulta?

select categories.name as categorias, count(products.name) as quantidade from products 
left join categories on categories.id = products.category_id
where categories.id in (1,2)
group by categories.name, categories.id order by categories.id;

--- 2- Além disso, também quer saber a média de preços de cada categoria. Monte o SQL para essa solicitação

select categories.name as categorias, count(products.name) as quantidade, sum(products.price)/count(products.name)  as media  from products 
left join categories on categories.id = products.category_id
where categories.id in (1,2)
group by categories.name, categories.id  order by categories.id;

--- 3- Faça um SQL para atualizar todos os produtos da categoria Cremes e Geleias para a categoria Frutas

update products set category_id = 1 where category_id in (2);