/*Que store en Canadá tiene dos direcciones.*/

Select * From Sales.Store

Select * From Person.BusinessEntityAddress where AddressTypeID=3
Select * FROM Person.Address
Select * From Person.AddressType ;
Select * FROM Person.StateProvince
Select * from Person.CountryRegion;

Select bea.BusinessEntityID From Sales.Store as s
inner join Person.BusinessEntityAddress as bea
on bea.BusinessEntityID=s.BusinessEntityID
inner join Person.Address as a
on a.AddressID = bea.AddressID
inner join Person.StateProvince as st
on a.StateProvinceID = st.StateProvinceID
inner join Person.CountryRegion as cr
on cr.CountryRegionCode = st.CountryRegionCode
where cr.Name='Canada'
group by bea.BusinessEntityID
having  count(a.AddressLine1) = 2
order by bea.BusinessEntityID;