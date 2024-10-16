/* encontrar los 3 paises con más clientes ordenados descendente*/
--Tengo los datos en tres tablas
--person.StateProvince
--person.CountryRegion
--Person.Adress

/* muestro ejemplos de las tres tablas para facilitar 
la elección de las columnas y el establecimiento de 
los joins */
select top(5) * from [Person].[StateProvince];
select top(5) * from [Person].[CountryRegion];
select top (5) * from [Person].[Address];

--esta tabla visualiza los datos que quiero resumir
select a.AddressLine1, e.Name, p.Name from [Person].[Address] as a
inner join [Person].[StateProvince] as e
on e.StateProvinceID = a.StateProvinceID
inner join [Person].[CountryRegion] as p
on p.CountryRegionCode = e.CountryRegionCode;

-- Aqui hago el resumen
select top(3) p.Name, count(a.AddressLine1) as numcli from [Person].[Address] as a
inner join [Person].[StateProvince] as e
on e.StateProvinceID = a.StateProvinceID
inner join [Person].[CountryRegion] as p
on p.CountryRegionCode = e.CountryRegionCode
GROUP BY p.name
order by numcli DESC;
