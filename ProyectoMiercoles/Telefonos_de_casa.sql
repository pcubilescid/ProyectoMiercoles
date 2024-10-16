Select top 1000 PhoneNumberTypeID, Name, ModifiedDate
From AdventureWorks2022.Person.PhoneNumberType

Select p.LastName, pn.PhoneNumber, pt.Name From Person.Person as p
inner join Person.PersonPhone as pn
on pn.BusinessEntityID = p.BusinessEntityID
inner join Person.PhoneNumberType as pt
on pn.PhoneNumberTypeID = pt.PhoneNumberTypeID
where pt.Name='Home';

Select p.LastName, count(p.LastName) as Total_Numeros_Casa From Person.Person as p
inner join Person.PersonPhone as pn
on pn.BusinessEntityID = p.BusinessEntityID
inner join Person.PhoneNumberType as pt
on pn.PhoneNumberTypeID = pt.PhoneNumberTypeID
where pt.Name='Home'
group by p.LastName, pt.Name
order by p.LastName;

Select pt.Name, count(p.LastName) as Total_Numeros_Casa From Person.Person as p
inner join Person.PersonPhone as pn
on pn.BusinessEntityID = p.BusinessEntityID
inner join Person.PhoneNumberType as pt
on pn.PhoneNumberTypeID = pt.PhoneNumberTypeID
group by pt.Name;