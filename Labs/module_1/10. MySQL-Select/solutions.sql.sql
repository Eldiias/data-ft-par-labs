#Challenge 1 - Who Have Published What At Where?
select x.au_id as 'Author Id', x.au_lname as 'Last Name', x.au_fname as 'First Name', title as 'TITLE', pub_name as 'PUBLISHER'
from authors x
join titleauthor T_A on T_A.au_id=x.au_id
join titles t on t.title_id=T_A.title_id
join publishers p on p.pub_id=t.pub_id;



#Challenge 2 - Who Have Published How Many At Where?
#auhtor id, lastname, firstname, publisher, title count
select x.au_id as 'Author Id', x.au_lname as 'Last Name', x.au_fname as 'First Name', pub_name as 'PUBLISHER', count(title) as "TITLE COUNT"
from authors x
join titleauthor T_A on T_A.au_id=x.au_id
join titles t on t.title_id=T_A.title_id
join publishers p on p.pub_id=t.pub_id
group by 1, 2, 3, 4;      #when calculation use group by.  only 4 go into calculation.  



#Challenge 3 - Best Selling Authors
#author id, last name, first name,  titles sold
select x.au_id as 'Author Id', x.au_lname as 'Last Name', x.au_fname as 'First Name', sum(qty) as "Total"
from authors x
join titleauthor T_A on T_A.au_id=x.au_id
join titles t on t.title_id=T_A.title_id
join publishers p on p.pub_id=t.pub_id
join sales s on s.title_id=t.title_id
group by 1, 2, 3
order by sum(qty) desc
limit 3; 


#Challenge 4 - Best Selling Authors Ranking
select x.au_id as 'Author Id', x.au_lname as 'Last Name', x.au_fname as 'First Name', sum(qty) as "Total"
from authors x
join titleauthor T_A on T_A.au_id=x.au_id
join titles t on t.title_id=T_A.title_id
join publishers p on p.pub_id=t.pub_id
join sales s on s.title_id=t.title_id
group by 1, 2, 3
order by sum(qty) desc
limit 23; 