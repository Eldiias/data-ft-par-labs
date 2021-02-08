#Query 1
use publications;
select A.au_id AS 'AUTHOR ID', A.au_lname AS 'Last Name', A.au_fname 'FIRST NAME', T2.title AS 'TITLE', P.pub_name AS 'PUBLISHERS'
from authors A
left join titleauthor T on A.au_id = T.au_id
inner join titles T2 on T.title_id = T2.title_id
inner join publishers P on T2.pub_id = P.pub_id; 

#Query 2
select A.au_id AS 'AUTHOR ID', A.au_lname AS 'Last Name', A.au_fname 'FIRST NAME', P.pub_name AS 'PUBLISHERS', count(T2.title_id) AS 'TITLE'
from authors A
left join titleauthor T on A.au_id = T.au_id
inner join titles T2 on T.title_id = T2.title_id
inner join publishers P on T2.pub_id = P.pub_id
group by a.au_id
order by TOTAL;

#Query 3 Best selling authors

select A.au_id AS 'AUTHOR ID', A.au_lname AS 'Last Name', A.au_fname 'FIRST NAME', sum(S.qty) AS 'TOTAL'
from authors A
left join titleauthor T on A.au_id = T.au_id
inner join sales S on T.title_id = S.title_id
group by a.au_id
order by TOTAL desc
limit 3;



#Query $ Best selling authors
select A.au_id AS 'AUTHOR ID', A.au_lname AS 'Last Name', A.au_fname 'FIRST NAME', COALESCE(sum(S.qty), 0) AS 'TOTAL'
from authors A
left join titleauthor T on A.au_id = T.au_id
left join sales S on T.title_id = S.title_id
group by a.au_id
order by TOTAL desc;