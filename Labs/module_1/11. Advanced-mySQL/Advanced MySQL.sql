use publications;

#Challenge 1
#Step 1
SELECT 
	titleauthor.title_id as 'Title_ID',
    titleauthor.au_id as 'Author_ID',
    round(titles.advance * titleauthor.royaltyper / 100, 3) as 'Advance',
	round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 3) as 'Royalty'
FROM titleauthor 
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id
;


#Challenge 1
#Step 2
Select 
	Title_ID,
    Author_ID,
    SUM(Royalty),
    Advance
	FROM (
		SELECT 
			titleauthor.title_id as 'Title_ID',
			titleauthor.au_id as 'Author_ID',
			round(titles.advance * titleauthor.royaltyper / 100, 3) as 'Advance',
			round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 3) 'Royalty'
		FROM titleauthor 
		INNER JOIN titles on titleauthor.title_id = titles.title_id
		INNER JOIN sales on titles.title_id = sales.title_id
		) summary
 GROUP BY Author_ID, Title_ID
;


#Challenge 1
#Step 3
SELECT 
		summary2.Author_ID,
        authors.au_lname,
        authors.au_fname,
        SUM(Royalties + Advance) as 'Profit'
		FROM (
		Select 
			Title_ID,
			Author_ID,
			SUM(Royalty) as 'Royalties',
			Advance
			FROM (
					SELECT 
						titleauthor.title_id as 'Title_ID',
						titleauthor.au_id as 'Author_ID',
						round(titles.advance * titleauthor.royaltyper / 100, 3) as 'Advance',
						round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 3) 'Royalty'
					FROM titleauthor 
					INNER JOIN titles on titleauthor.title_id = titles.title_id
					INNER JOIN sales on titles.title_id = sales.title_id
					) summary
					GROUP BY Author_ID, Title_ID
			)summary2
			INNER JOIN authors on summary2.Author_ID = authors.au_id
GROUP BY Author_ID
ORDER BY Profit DESC
LIMIT 3
;




#Challenge 2
drop temporary table if exists publications.step1;
CREATE TEMPORARY TABLE IF NOT EXISTS publications.step1
SELECT 
	titleauthor.title_id as 'Title_ID',
    titleauthor.au_id as 'Author_ID',
    round(titles.advance * titleauthor.royaltyper / 100) as 'Advance',
	round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) 'Royalty'
FROM titleauthor 
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id;


drop temporary table if exists publications.step2;
CREATE TEMPORARY TABLE IF NOT EXISTS publications.step2
SELECT
	Title_ID,
    Author_ID,
    SUM(Royalty) as 'Royalties',
    Advance
FROM publications.step1
GROUP BY Author_ID, Title_ID;

SELECT 
		Author_ID,
		authors.au_lname,
        authors.au_fname,
		SUM(Royalties + Advance) as 'Profit'
FROM publications.step2
INNER JOIN authors on step2.Author_ID = authors.au_id
GROUP BY Author_ID
ORDER BY Profit DESC
LIMIT 3
;


#Challenge 3
drop table if exists most_profiting_authors;
CREATE TABLE most_profiting_authors
SELECT 
		summary2.Author_ID,
        authors.au_lname,
        authors.au_fname,
        Royalties + Advance as 'Profit'
		FROM (
		SELECT
			Title_ID,
			Author_ID,
			SUM(Royalty) as 'Royalties',
			Advance
			FROM (
					SELECT 
						titleauthor.title_id as 'Title_ID',
						titleauthor.au_id as 'Author_ID',
						round(titles.advance * titleauthor.royaltyper / 100) as 'Advance',
						round(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) 'Royalty'
					FROM titleauthor 
					INNER JOIN titles on titleauthor.title_id = titles.title_id
					INNER JOIN sales on titles.title_id = sales.title_id
					) summary
					GROUP BY Author_ID, Title_ID
			)summary2
			INNER JOIN authors on summary2.Author_ID = authors.au_id
GROUP BY Author_ID
ORDER BY Profit DESC
LIMIT 3
;

SELECT *
FROM most_profiting_authors