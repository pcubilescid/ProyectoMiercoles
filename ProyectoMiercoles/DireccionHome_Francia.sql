/*las direcciones de casa de las personas de francia*/

Select * From Person.CountryRegion

Select * From Person.Address

Select a.AddressLine1, a.City From Person.Address as a
inner join Person.StateProvince as s
on s.StateProvinceID = a.StateProvinceID
inner join Person.CountryRegion as c
on c.CountryRegionCode = s.CountryRegionCode
inner join person.BusinessEntityAddress as b
on b.AddressID = a.AddressID
inner join person.AddressType as at
on at.AddressTypeID = b.AddressTypeID
where c.Name = 'France' and at.Name = 'Home';

Select s.BusinessEntityID, c.Name, c.Name, count(*) From sales.Store as s
inner join person.BusinessEntity as be
on be.BusinessEntityID = s.BusinessEntityID
inner join Person.BusinessEntityAddress as bea
on bea.BusinessEntityID = be.BusinessEntityID
inner join person.Address as a
on a.AddressID = bea.AddressID
inner join Person.StateProvince as pro
on pro.StateProvinceID = a.StateProvinceID
inner join Person.CountryRegion as c
on c.CountryRegionCode = pro.CountryRegionCode
inner join Person.AddressType as adt
on adt.AddressTypeID = bea.AddressTypeID
group by s.BusinessEntityID, s.name, c.name
having count(*) >1;
