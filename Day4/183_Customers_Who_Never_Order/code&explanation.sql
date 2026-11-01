1.Problem link : https://leetcode.com/problems/customers-who-never-order/description/
  
2. Approach 1 – LEFT JOIN + IS NULL
This is a very common and important SQL pattern.
Query:
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

3. Approach 2 – NOT EXISTS
Another clean and powerful way to solve this problem is using NOT EXISTS.
Query:
SELECT c.name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customerId = c.id
);



4. Time and Space Complexity
SQL query complexity depends on the database engine, query optimizer, and indexes.
Complexity	LEFT JOIN	NOT EXISTS
Time	Typically \(O(C+O)\) with suitable hash join	Depends on execution plan and indexing
Auxiliary space	May require a hash table	Depends on execution plan

Where:
- \(C\) = Number of customers.
- \(O\) = Number of orders.
Important: We shouldn't claim that one approach is always faster. Modern database optimizers can execute both efficiently.


5. Why use LEFT JOIN or NOT EXISTS?
Both approaches solve the same problem, but their thinking differs.
- LEFT JOIN + IS NULL: Useful when you want to combine tables and identify unmatched records.
- NOT EXISTS: Useful when you simply want to check whether a related record does not exist.
My recommendation: Learn both. NOT EXISTS is especially useful for anti-join problems, while LEFT JOIN is essential for understanding SQL joins.

  
6. Key learnings from Day 4
1. Understood how LEFT JOIN preserves all records from the left table, even when no matching record exists.
2. Learned how unmatched records produce NULL values in the right table.
3. Understood how IS NULL filters records without matching entries.
4. Explored NOT EXISTS for checking the absence of related records.
5. Learned the concept of an Anti Join – finding records in one table that have no corresponding records in another table.
6. Practiced table aliases to write cleaner and more readable SQL queries.
