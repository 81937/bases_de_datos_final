-- Intersect —-
SELECT * FROM boleto WHERE precio >= 200
INTERSECT
SELECT * FROM boleto WHERE sala <> 1;

-- Union --
SELECT sala, boleto_id FROM boleto WHERE precio >= 200
UNION
SELECT precio, numero_asiento FROM boleto WHERE sala <> 1;

-- Diferencia --
SELECT boleto_id FROM boleto AS b1
EXCEPT
SELECT numero_asiento FROM boleto AS b2;

-- Agregacion --
SELECT AVG(precio) FROM boleto;

-- Natural Join --
SELECT sala FROM boleto NATURAL JOIN pelicula;

-- Right Join --
SELECT * FROM boleto AS b
RIGHT JOIN
pelicula AS p ON b.sala = p.pelicula_id;

-- Left Join --
SELECT * FROM boleto AS b 
LEFT JOIN
pelicula AS p ON b.precio > p.duracion;

-- P.Cartesiano --
SELECT * FROM boleto CROSS JOIN sala;

