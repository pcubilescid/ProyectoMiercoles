/*Ordenar los apellidos de las personas alfabéticamente en cada país*/

Select c.name, p.LastName from  [Person].[Person] as p
inner join Person.BusinessEntity as be
on be.BusinessEntityID = p.BusinessEntityID
inner join Person.BusinessEntityAddress as bea
On bea.BusinessEntityID = be.BusinessEntityID
inner join [Person].[Address] as a
on a.AddressID = bea.AddressID
inner join [Person].[StateProvince] as s
on s.StateProvinceID = a.StateProvinceID
inner join [Person].[CountryRegion] as c
on c.CountryRegionCode = s.CountryRegionCode
Order by c.name, p.Lastname;
