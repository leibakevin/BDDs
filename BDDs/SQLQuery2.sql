--SELECT A.nombre, P.Nombre
--from Atletas AS A
--INNER JOIN Paises AS P ON A.IdPais= P.id


select A.Nombre, A.Apellido, E.Lugar, E.Fecha, E.nombre from Atletas AS A,  eventos AS E
INNER JOIN Categorias AS A ON E.IdCategoria = E.Id

