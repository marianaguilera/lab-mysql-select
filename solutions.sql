use publications; 

-- Challenge 1
select 
	authors.au_id as AUTHOR_ID,
    authors.au_lname AS LAST_NAME,
    authors.au_fname AS FIRST_NAME,
    titles.title as TITLE,
    publishers.pub_name as PUBLISHER
from authors
	inner join titleauthor
    on authors.au_id= titleauthor.au_id
    inner join titles
    on titleauthor.title_id=titles.title_id
    inner join publishers
    on titles.pub_id= publishers.pub_id;

-- Challenge 2 
select 
	authors.au_id as AUTHOR_ID,
    authors.au_lname AS LAST_NAME,
    authors.au_fname AS FIRST_NAME,
    titles.title as TITLE,
    publishers.pub_name as PUBLISHER,
    count(title) as TITLE_COUNT
from authors
	inner join titleauthor
    on authors.au_id= titleauthor.au_id
    inner join titles
    on titleauthor.title_id=titles.title_id
    inner join publishers
    on titles.pub_id= publishers.pub_id
GROUP BY 
AUTHOR_ID,
PUBLISHER;

-- Challenge 3
select 
	authors.au_id as AUTHOR_ID,
    authors.au_lname AS LAST_NAME,
    authors.au_fname AS FIRST_NAME,
    titles.title as TITLE,
    COUNT(TITLE) AS NUM_TITLES
from authors
	inner join titleauthor
    on authors.au_id= titleauthor.au_id
    inner join titles
    on titleauthor.title_id=titles.title_id
GROUP BY 
	AUTHOR_ID
ORDER BY
	NUM_TITLES DESC
LIMIT 3;

-- Challenge 4 
select 
	authors.au_id as AUTHOR_ID,
    authors.au_lname AS LAST_NAME,
    authors.au_fname AS FIRST_NAME,
    titles.title as TITLE,
    COUNT(ord_num) AS NUM_ORDTITLES
from authors
	inner join titleauthor
    on authors.au_id= titleauthor.au_id
    inner join titles
    on titleauthor.title_id=titles.title_id
	inner join sales
    on titles.title_id=sales.title_id
GROUP BY 
	AUTHOR_ID
ORDER BY
	NUM_ORDTITLES DESC


   


