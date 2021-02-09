select * from sales;#S

select * from titles;#T

select * from titleauthor;#T2

select * from roysched;#

Select * from authors;

# Challenge 1 - Excercise 1

select T.title AS 'TITLE', T.title_id AS 'TITLE ID', T2.au_id as 'AUTHORS_ID', T.advance * T2.royaltyper / 100 as 'ADVANCE',  T.price * S.qty * T.royalty / 100 * T2.royaltyper / 100  as 'ROYALTY', S.qty, T.price
from sales S 
inner join titles T on T.title_id = S.title_id
inner join titleauthor T2 on T.title_id = T2.title_id
inner join authors A on A.au_id = T2.au_id
inner join roysched R on R.title_id = T2.title_id
group by T.title, A.au_id;

#Challenge 1 - Excercise 2

select TITLE, AUTHORS_ID, sum(ROYALTY) AS 'TOTAL_ROYALTY', ADVANCE as 'TOTAL_ADVANCE'
from (
	select T.title AS 'TITLE', T.title_id AS 'TITLE ID', T2.au_id as 'AUTHORS_ID', T.advance * T2.royaltyper / 100 as 'ADVANCE',  T.price * S.qty * T.royalty / 100 * T2.royaltyper / 100 as ROYALTY
	from sales S 
	inner join titles T on T.title_id = S.title_id
	inner join titleauthor T2 on T.title_id = T2.title_id
	inner join authors A on A.au_id = T2.au_id
    ) summary
    group by TITLE, AUTHORS_ID;

#Challenge 1 - Excercise 3

Select AUTHORS_ID, TOTAL_ROYALTY + TOTAL_ADVANCE AS PROFIT
From (    
	select TITLE, AUTHORS_ID, Sum(ROYALTY) AS 'TOTAL_ROYALTY', SUM(ADVANCE) as 'TOTAL_ADVANCE'
	from (
		select T.title AS 'TITLE', T.title_id AS 'TITLE ID', T2.au_id as 'AUTHORS_ID', T.advance * T2.royaltyper / 100 as 'ADVANCE',  (T.price * S.qty * T.royalty) / (100 * T2.royaltyper) / 100 as ROYALTY
		from sales S 
		inner join titles T on T.title_id = S.title_id
		inner join titleauthor T2 on T.title_id = T2.title_id
		inner join authors A on A.au_id = T2.au_id
		inner join roysched R on R.title_id = T2.title_id
		group by T.title, A.au_id
		) summary
		group by AUTHORS_ID
	) summary2
order by PROFIT desc
limit 3;

#Challenge 2 

create temporary table publications.title_author
select T.title AS 'TITLE', T.title_id AS 'TITLE ID', T2.au_id as 'AUTHORS_ID', T.advance * T2.royaltyper / 100 as 'ADVANCE',  T.price * S.qty * T.royalty / 100 * T2.royaltyper / 100  as 'ROYALTY', S.qty, T.price
from sales S 
inner join titles T on T.title_id = S.title_id
inner join titleauthor T2 on T.title_id = T2.title_id
inner join authors A on A.au_id = T2.au_id
inner join roysched R on R.title_id = T2.title_id;


select TITLE, AUTHORS_ID, sum(ROYALTY) AS 'TOTAL_ROYALTY', ADVANCE as 'TOTAL_ADVANCE'
from publications.title_author
group by AUTHORS_ID;

create temporary table publications.profit_author
select TITLE, AUTHORS_ID, sum(ROYALTY) AS 'TOTAL_ROYALTY', ADVANCE as 'TOTAL_ADVANCE'
from publications.title_author
group by AUTHORS_ID;


select AUTHORS_ID, TOTAL_ROYALTY + TOTAL_ADVANCE AS PROFIT
From publications.profit_author
order by PROFIT desc
limit 3;

#Challenge 3

create temporary table most_profiting_authors
select AUTHORS_ID, TOTAL_ROYALTY + TOTAL_ADVANCE AS PROFIT
From publications.profit_author
order by PROFIT desc;

select * from most_profiting_authors

