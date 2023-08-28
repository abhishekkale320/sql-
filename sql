11. Create Student Table with ID as Primary Key and NOT NULL , Name as 20 Characters ,Age as Int value both are NOT NULL and Address have  25 charter And Insert Any 5 Records?  
Note: Add "GitHub" link for the solution if required
solution;Here's the SQL code to create the Student table with the specified columns and constraints:

sql
CREATE TABLE Student (
  ID INT PRIMARY KEY NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Age INT NOT NULL,
  Address VARCHAR(25)
);


And here's an example of inserting 5 records into the Student table:

sql
INSERT INTO Student (ID, Name, Age, Address)
VALUES (1, 'John', 20, '123 Main St'),
       (2, 'Jane', 22, '456 Elm St'),
       (3, 'Mike', 19, '789 Oak Ave'),
       (4, 'Sarah', 21, '321 Pine Rd'),
       (5, 'David', 18, '654 Cedar Ln');


12.  Write an SQL query to find the youngest student in the "student" table ? Note: Add "GitHub" link for the solution if required  

solution;To find the youngest student in the "student" table, you can use the following SQL query:

sql
SELECT *
FROM student
ORDER BY age ASC
LIMIT 1;


This query selects all columns from the "student" table, sorts the records in ascending order based on the "age" column, and limits the result to only the first row, which represents the youngest student.


13.  Write an SQL query to retrieve the names and addresses of all persons from the "Person" table along with their corresponding addresses from the "Address" table.
Note: Add "GitHub" link for the solution if required
solution;To retrieve the names and addresses of all persons from the "Person" table along with their corresponding addresses from the "Address" table, you can use the following SQL query:

sql
SELECT p.FirstName, p.LastName, a.City, a.State
FROM Person p
JOIN Address a ON p.PersonId = a.PersonId;


This query performs an inner join between the "Person" and "Address" tables based on the common "PersonId" column, and selects the FirstName, LastName, City, and State columns from both tables.


14.  Write an SQL query to fetch the second highest number from the "student" table.? Note: Add "GitHub" link for the solution if required  
solution;

To fetch the second highest number from the "student" table, you can use the following SQL query:

sql
SELECT MAX(number) AS SecondHighestNumber
FROM student
WHERE number < (SELECT MAX(number) FROM student);


This query uses a subquery to find the maximum number in the "student" table, and then selects the maximum number that is less than the maximum number found in the subquery. This will give you the second highest number in the "student" table.



15.  SQL Quary to get the nth highest salary from Employee table Note: Add "GitHub" link for the solution if required  
solution;
To get the nth highest salary from the Employee table, you can use the following SQL query:

sql
SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT n-1, 1;


Replace "n" with the desired value to get the nth highest salary. This query selects distinct salaries from the Employee table, orders them in descending order, skips the first n-1 rows, and retrieves the next row (which represents the nth highest salary).



16.  Write a SQL query to find the median salary of each company.? Note: Add "GitHub" link for the solution if required  

solution;To find the median salary of each company, you can use the following SQL query:

sql
SELECT Company, 
       PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Salary) AS MedianSalary
FROM Employee
GROUP BY Company;


This query calculates the median salary using the PERCENTILE_CONT function, which calculates the value that divides the dataset into two equal halves. The result is grouped by the Company column to get the median salary for each company.
