# Challenge 1


select a.au_id as "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname "FIRST NAME",p.pub_name "PUBLISHER", t.title "TITLE"
from authors a 
join titleauthor ta on ta.au_id =a.au_id
join titles t on t.title_id = ta.title_id
join publishers p on p.pub_id = t.pub_id;


# Challenge 2

select a.au_id, a.au_lname, a.au_fname,p.pub_name, count(t.title) as num_titles
from authors a
join titleauthor ta on ta.au_id =a.au_id
join titles t on t.title_id = ta.title_id
join publishers p on p.pub_id = t.pub_id
group by 1,2,3,4;



# Challenge 3 


select a.au_id, a.au_lname, a.au_fname, sum(s.qty) as total_items_sold
from authors a
join titleauthor ta on ta.au_id =a.au_id
join titles t on t.title_id = ta.title_id
join sales s on s.title_id = t.title_id
group by 1,2,3
order by total_items_sold desc









