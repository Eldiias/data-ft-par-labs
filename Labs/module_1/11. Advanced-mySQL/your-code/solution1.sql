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