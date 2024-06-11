SELECT 
    firstname || ' ' || lastname AS FullName,
    UPPER(lastname) AS UppercaseLastName,
    LOWER(firstname) AS LowercaseFirstName,
    LENGTH(firstname || ' ' || lastname) AS FullNameLength,
    SUBSTR(firstname || ' ' || lastname, 2, 3) AS SubstringFullName
FROM  Employees;
