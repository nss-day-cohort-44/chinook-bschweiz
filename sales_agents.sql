1. `sales_agents.sql`: Provide a query showing only the Employees who are Sales Agents.


SELECT * 
    FROM Employee E

    WHERE E.Title LIKE 'Sales% %Agent';