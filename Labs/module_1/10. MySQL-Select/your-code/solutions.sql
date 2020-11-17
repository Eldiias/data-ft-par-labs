use publications;
#challenge 1
SELECT au_lname, au_fname, titles.title, publishers.pub_name
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id 
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id 
LEFT JOIN publishers
ON  titles.pub_id= publishers.pub_id
ORDER BY authors.au_lname;

#challenge 2
SELECT au_lname, au_fname, COUNT(titles.title), publishers.pub_name
FROM
    authors
        LEFT JOIN
    titleauthor ON authors.au_id = titleauthor.au_id
        LEFT JOIN
    titles ON titleauthor.title_id = titles.title_id
        LEFT JOIN
    publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id , publishers.pub_id;

#challenge 3
SELECT authors.au_id, au_lname, au_fname, sales.title_id, sales.qty
FROM
    authors
        LEFT JOIN
    titleauthor ON authors.au_id = titleauthor.au_id
        LEFT JOIN
    titles ON titleauthor.title_id = titles.title_id
    LEFT JOIN
    sales ON titles.title_id = sales.title_id 
ORDER BY sales.qty desc, au_lname, au_fname
LIMIT 3;

#challenge 4
SELECT authors.au_id, au_lname, au_fname, sales.qty
FROM
    authors
        LEFT JOIN
    titleauthor ON authors.au_id = titleauthor.au_id
        LEFT JOIN
    titles ON titleauthor.title_id = titles.title_id
    LEFT JOIN
    sales ON titles.title_id = sales.title_id 
GROUP BY au_id
ORDER BY sales.qty desc, au_lname, au_fname;
