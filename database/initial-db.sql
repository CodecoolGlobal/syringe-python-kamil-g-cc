DROP TABLE IF EXISTS comment;

CREATE TABLE comment
(
	id SERIAL
		CONSTRAINT comment_pk
			PRIMARY KEY,
	name CHARACTER VARYING(255),
	text CHARACTER VARYING(1000)
);


INSERT INTO comment
VALUES (1, 'Joe', 'First example comment'),
       (2, 'Paul', 'Second example comment');

SELECT pg_catalog.setval('comment_id_seq', 2, TRUE);