use publications;
#step 1
SELECT titles.title_id, authors.au_id, round(titles.advance * titleauthor.royaltyper / 100) as adv_title, round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2)
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles 
on titles.title_id = titleauthor.title_id
left join sales
on sales.title_id = titles.title_id
ORDER BY au_id;


#step2
SELECT titles.title_id, authors.au_id, round(titles.advance * titleauthor.royaltyper / 100), sum(round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2))
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles 
on titles.title_id = titleauthor.title_id
left join sales
on sales.title_id = titles.title_id
GROUP BY authors.au_id, titles.title_id
ORDER BY au_id;


#step3
SELECT titles.title_id, authors.au_id, round(titles.advance * titleauthor.royaltyper / 100) + sum(round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2))
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles 
on titles.title_id = titleauthor.title_id
left join sales
on sales.title_id = titles.title_id
GROUP BY authors.au_id, titles.title_id
ORDER BY au_id
LIMIT 3;
