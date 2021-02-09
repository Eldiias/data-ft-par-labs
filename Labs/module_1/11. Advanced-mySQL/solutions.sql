#Challenge 1

#step 1

#royalty
select t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sr
from titles t 	
inner join titleauthor ta 
on t.title_id = ta.title_id 
inner join sales s
on t.title_id = s.title_id


#step 2

#advance
select a.au_id, t.title_id, t.advance *	ta.royaltyper / 100 as ad
from titleauthor ta
inner join titles t
on ta.title_id = t.title_id 
inner join authors a
on ta.au_id = a.au_id

#step 3

select summary.au_id, sum(t.royalty)+summary.ad as profits
from (select a.au_id, t.title_id, t.advance *	ta.royaltyper / 100 as ad
		from titleauthor ta
		inner join titles t
		on ta.title_id = t.title_id 
		inner join authors a
		on ta.au_id = a.au_id
) as summary
inner join titles t
on t.title_id = summary.title_id
group by summary.au_id, summary.title_id
order by summary.au_id DESC 

#Challenge 2

create temporary table t1
#advance
select a.au_id, t.title_id, t.advance *	ta.royaltyper / 100 as ad
from titleauthor ta
inner join titles t
on ta.title_id = t.title_id 
inner join authors a
on ta.au_id = a.au_id;

create temporary table t2
#royalty
select t.title_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sr
from titles t 	
inner join titleauthor ta 
on t.title_id = ta.title_id 
inner join sales s
on t.title_id = s.title_id;

select  t1.au_id, t1.ad + t2.sr as profits
from t1 
inner join t2
on t1.title_id = t2.title_id
order by profits desc


#challenge 3

create table t1
select a.au_id, t.title_id, t.advance *	ta.royaltyper / 100 as ad
from titleauthor ta
inner join titles t
on ta.title_id = t.title_id 
inner join authors a
on ta.au_id = a.au_id;


create table t2
select t.title_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sr
from titles t 	
inner join titleauthor ta 
on t.title_id = ta.title_id 
inner join sales s
on t.title_id = s.title_id;

create table publications.most_profiting_authors;

insert into publications.most_profiting_authors
select t1.au_id, t1.ad + t2.sr as profits
from publications.t1
inner join publications.t2
on t1.title_id = t2.title_id