Select p.LastName, pn.PhoneNumber From Person.Person as p
inner join Person.PersonPhone as pn
on pn.BusinessEntityID = p.BusinessEntityID
inner join Person.PhoneNumberType as pt
on pn.PhoneNumberTypeID = pt.PhoneNumberTypeID
where pt.Name='Home';

Select pt.Name, count(p.LastName) as Total_Numeros_Casa From Person.Person as p
inner join Person.PersonPhone as pn
on pn.BusinessEntityID = p.BusinessEntityID
inner join Person.PhoneNumberType as pt
on pn.PhoneNumberTypeID = pt.PhoneNumberTypeID
group by pt.Name;