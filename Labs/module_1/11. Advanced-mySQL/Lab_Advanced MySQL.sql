# Challenge 1: MOst profiting author
	# Step 1: royalty for each sale for each author and advance for each author and publication

select au_id as Author_ID, title_id as Title_ID, (advance * royaltyper/100) as Advance, (price*qty*(royalty/100) * (royaltyper/100)) as Sales_Royalty
from
(
select ta.au_id, t.price, t.royalty, t.advance, s.qty, ta.royaltyper, s.title_id, pub_name
from titles as t 
inner join sales as s on s.title_id = t.title_id
inner join titleauthor as ta on ta.title_id = s.title_id
inner join publishers as p on p.pub_id = t.pub_id
order by s.title_id) 
summary;


	# Step 2: Aggregate total royalties for each title and author
    
select Author_ID, Title_ID, sum(Sales_Royalty) as Aggregate_Royalties, Advance
from(
select au_id as Author_ID, title_id as Title_ID, (advance * royaltyper/100) as Advance, (price*qty*(royalty/100) * (royaltyper/100)) as Sales_Royalty
from
(select ta.au_id, t.price, t.royalty, t.advance, s.qty, ta.royaltyper, s.title_id, pub_name
from titles as t 
inner join sales as s on s.title_id = t.title_id
inner join titleauthor as ta on ta.title_id = s.title_id
inner join publishers as p on p.pub_id = t.pub_id
)summary)summary1 group by Author_ID, Title_ID;


	# Step 3: Total Profits per author
    
select title_id, (Advance + Aggregate_Royalties) as Profit
from
(
select Author_ID, Title_ID, sum(Sales_Royalty) as Aggregate_Royalties, Advance
from(
select au_id as Author_ID, title_id as Title_ID, (advance * royaltyper/100) as Advance, (price*qty*(royalty/100) * (royaltyper/100)) as Sales_Royalty
from
(select ta.au_id, t.price, t.royalty, t.advance, s.qty, ta.royaltyper, s.title_id, pub_name
from titles as t 
inner join sales as s on s.title_id = t.title_id
inner join titleauthor as ta on ta.title_id = s.title_id
inner join publishers as p on p.pub_id = t.pub_id
)summary)summary1 group by Author_ID, Title_ID)summary2 
order by Profit desc
limit 3;


# Challenge 2: Alternative 
# Royalty per sale per author and advance per author per publication

create temporary table if not exists alt_table1 
select 	a.au_lname, a.au_fname, ta.au_id, t.price, 
		(advance * royaltyper/100) as Advance, 
        (price*qty*(royalty/100) * (royaltyper/100)) as Sales_Royalty, 
        s.title_id, pub_name
from titles as t 
inner join sales as s on s.title_id = t.title_id
inner join titleauthor as ta on ta.title_id = s.title_id
inner join publishers as p on p.pub_id = t.pub_id
inner join authors as a on a.au_id = ta.au_id
order by s.title_id;

# determining royalties per title per author

create temporary table alt_table3
select 	au_id, title_id, sum(Sales_Royalty) as Sales_Royalties, advance
from alt_table1 group by  au_id, title_id;

# Profits per author
select au_id, title, (salary_royalty + advance) as Profits
from alt_table2;


# Challenge 3: Permannent Table

create table most_profiting_authors
select Author_id, (Advance + Aggregate_Royalties) as Profit
from
(
select Author_ID, Title_ID, sum(Sales_Royalty) as Aggregate_Royalties, Advance
from(
select au_id as Author_ID, title_id as Title_ID, (advance * royaltyper/100) as Advance, (price*qty*(royalty/100) * (royaltyper/100)) as Sales_Royalty
from
(select ta.au_id, t.price, t.royalty, t.advance, s.qty, ta.royaltyper, s.title_id, pub_name
from titles as t 
inner join sales as s on s.title_id = t.title_id
inner join titleauthor as ta on ta.title_id = s.title_id
inner join publishers as p on p.pub_id = t.pub_id
)summary)summary1 group by Author_ID, Title_ID)summary2 
order by Profit desc
;


