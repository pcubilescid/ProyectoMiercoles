--Quiero un listado de ciudades y paises.
--Tengo los datos en dos tablas
--person.StateProvince
--person.CountryRegion

-- para unir dos tablas, usare un JOIN

select top(10) * from [Person].[StateProvince];
select * from [Person].[CountryRegion];
select * from [Person].[Address]

select  paises.Name, ciudades.Name from [Person].[StateProvince] as ciudades
inner join [Person].[CountryRegion] as paises
on paises.CountryRegionCode = ciudades.CountryRegionCode
order by paises.name, ciudades.name DESC;
