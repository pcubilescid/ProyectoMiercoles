/*Cuantos stores en Estados Unidos tienen dos direcciones*/


Select bea.BusinessEntityID, Count(bea.BusinessEntityID) as TotalStores From Sales.Store as s
inner join Person.BusinessEntityAddress as bea
on bea.BusinessEntityID=s.BusinessEntityID
inner join Person.Address as a
on a.AddressID = bea.AddressID
inner join Person.StateProvince as st
on a.StateProvinceID = st.StateProvinceID
inner join Person.CountryRegion as cr
on cr.CountryRegionCode = st.CountryRegionCode
where cr.Name='United States'
group by bea.BusinessEntityID
having  count(a.AddressLine1) = 2;

Select count(*) as TotalRecords From (Select count(*) as TotalStores From Sales.Store as s
inner join Person.BusinessEntityAddress as bea
on bea.BusinessEntityID=s.BusinessEntityID
inner join Person.Address as a
on a.AddressID = bea.AddressID
inner join Person.StateProvince as st
on a.StateProvinceID = st.StateProvinceID
inner join Person.CountryRegion as cr
on cr.CountryRegionCode = st.CountryRegionCode
where cr.Name='United States'
group by bea.BusinessEntityID
having  count(a.AddressLine1) = 2) As Subquery;

