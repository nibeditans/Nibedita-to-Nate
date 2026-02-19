# Why Nate?

**Nate** is short for my real name, Nibedita, but it wasn't chosen randomly.

At some point, I realized I could derive a simpler version of my name using a small, logical transformation in my head. Later, it clicked that the same idea could be expressed in code as well. This page is not a project or a tutorial. It's just a tiny glimpse into how I enjoy thinking: start simple, apply logic, and express the same idea across different paradigms.

Below is the exact logic, written in Python and SQL.


## [Python](https://github.com/nibeditans/Nibedita-to-Nate/blob/main/Nate.py)
```py
name = "Nibedita"
n = len(name)

main_char = name[0] # N
mid_chars = name[-2:][::-1] # ta → at
end_char = name[n//2 - 1] # e

easier_verse = main_char + mid_chars + end_char
print(easier_verse) # Nate
```

## [SQL](https://github.com/nibeditans/Nibedita-to-Nate/blob/main/Nate.sql)

There are many databases out there, but since this isn't a project or framework, I just want to show you two options: MySQL and PostgreSQL. I chose these two because they're among the most widely used databases in the data field. That's it! There's no deeper logic behind focusing only on these two.

### MySQL

```sql
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
```

### PostgreSQL

```sql
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
```

The same idea expressed declaratively, describing what to extract, not how to loop.

This isn't meant to be impressive or clever. It's just a small, honest example of how I like to reason about things, whether it's names, data, or problems. 


**Implementation details: [Nibedita ⇝ Nate](https://github.com/nibeditans/Nibedita-to-Nate)**
