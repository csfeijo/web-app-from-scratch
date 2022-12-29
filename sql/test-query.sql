USE WEB_APP;

SELECT * FROM TYPES;

SELECT * FROM TODOS;

SELECT TD.title,
       TD.description,
       TP.name
	FROM TODOS AS TD
    INNER JOIN TYPES AS TP
    ON TD.id_type = TP.id_type
ORDER BY TD.title;