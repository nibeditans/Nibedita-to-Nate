-- MySQL Version
WITH NameExtraction As (
	SELECT 
		'Nibedita' real_name,
		SUBSTRING('Nibedita', 1, 1) main_char,
		REVERSE(SUBSTRING('Nibedita', LENGTH('Nibedita') - 1)) mid_chars,
		SUBSTRING('Nibedita', FLOOR(LENGTH('Nibedita') / 2), 1) end_char
)
SELECT 
	real_name, 
	CONCAT(main_char, mid_chars, end_char) easier_verse
FROM NameExtraction;

-- PostgreSQL Version
WITH NameExtraction AS (
    SELECT
        'Nibedita' real_name,
        SUBSTRING('Nibedita' FROM 1 FOR 1) main_char,
        REVERSE(SUBSTRING('Nibedita' FROM LENGTH('Nibedita') - 1 FOR 2)) mid_chars,
        SUBSTRING('Nibedita' FROM FLOOR(LENGTH('Nibedita') / 2)::INT FOR 1) end_char
)
SELECT
    real_name,
    main_char || mid_chars || end_char easier_verse
FROM NameExtraction;
