# Challenge 1: Who have published what and where?

select 	a.au_id as Author_ID, 
		a.au_lname as Last_Name, 
        a.au_fname as First_Name, 
        title as Title,
        pub_name as Publisher
from authors as a
inner join titleauthor as ta  
on a.au_id = ta.au_id
inner join titles as t
on t.title_id = ta.title_id
inner join publishers as p 
on p.pub_id = t.pub_id

order by pub_name;

# Challenge 2: Who have published how many books and where?

select 	a.au_id as Author_ID, 
		au_lname as Last_Name, 
        au_fname as First_Name, 
        count(title) as Title,
        pub_name as Publisher
from authors as a
inner join titleauthor as ta on a.au_id = ta.au_id
inner join titles as t on t.title_id = ta.title_id
inner join publishers as p on p.pub_id = t.pub_id

group by a.au_id, au_lname, au_fname, pub_name
order by a.au_id desc;


# Challenge 3: Best Selling Authors

select 	a.au_id as Author_ID, 
		au_lname as Last_Name, 
        au_fname as First_Name, 
        sum(qty) as Total
from authors as a 
inner join titleauthor as ta  on a.au_id = ta.au_id
inner join titles as t on t.title_id = ta.title_id
inner join sales as s on s.title_id = ta.title_id

group by a.au_id, au_lname, au_fname
order by Total desc
limit 3;

# Challenge 4: Best selling author ranking

select 	a.au_id as Author_ID, 
		au_lname as Last_Name, 
        au_fname as First_Name, 
        coalesce(sum(qty),0) as Total
from authors as a 
left join titleauthor as ta  on a.au_id = ta.au_id
left join titles as t on t.title_id = ta.title_id
left join sales as s on s.title_id = ta.title_id

group by a.au_id, au_lname, au_fname
order by Total desc;
