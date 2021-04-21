use publications;

#Challenge 1 Who Have Published What At Where?
SELECT 
	a.au_id as 'AUTHOR_ID',
	a.au_lname as 'LAST_NAME',
	a.au_fname as 'FIRST_NAME',
	t.title as 'TITLE',
    p.pub_name as 'Publisher'
FROM authors a
INNER JOIN titleauthor ta ON a.au_id = ta.au_id
INNER JOIN titles t ON ta.title_id = t.title_id
INNER JOIN  publishers p on t.pub_id = p.pub_id;


#Challenge 2  Who Have Published How Many At Where?
SELECT
	a.au_id as 'AUTHOR_ID',
	a.au_lname as 'LAST_NAME',
	a.au_fname as 'FIRST_NAME',
	p.pub_name as 'Publisher',
	count(t.title) as 'TITLE_COUNT'
FROM authors a
INNER JOIN titleauthor ta ON a.au_id = ta.au_id
INNER JOIN titles t ON ta.title_id = t.title_id
INNER JOIN  publishers p on t.pub_id = p.pub_id
GROUP BY p.pub_name, a.au_id
ORDER BY TITLE_COUNT
;



#Challenge 3
SELECT
	a.au_id as "AUTHOR_ID",
    a.au_lname as "LAST_NAME",
    a.au_fname as "FIRST_NAME",
    sum(s.qty) as "TOTAL"
FROM authors a
INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN sales s on ta.title_id = s.title_id
GROUP BY a.au_id
ORDER BY TOTAL DESC
LIMIT 3
;


#Challenge 4 BEST SELLING AUTHORS RANKING?
SELECT
	a.au_id as "AUTHOR_ID",
    a.au_lname as "LAST_NAME",
    a.au_fname as "FIRST_NAME",
    sum(COALESCE(s.qty, 0)) as "TOTAL"
FROM authors a
LEFT JOIN titleauthor ta on a.au_id = ta.au_id
LEFT JOIN sales s on ta.title_id = s.title_id
GROUP BY a.au_id
ORDER BY TOTAL DESC
LIMIT 23
;





