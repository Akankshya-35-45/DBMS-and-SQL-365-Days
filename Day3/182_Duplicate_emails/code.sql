problem linkc:https://leetcode.com/problems/duplicate-emails/description/

  
solution:
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*)>1;

Key Learnings 💡
- Learned how to identify duplicate records using SQL aggregation.
- Understood how GROUP BY groups rows with identical values.
- Explored the role of HAVING in filtering grouped data based on aggregate conditions.
- Practiced using COUNT() to determine the frequency of repeated values.
- Understood the difference between COUNT(*) and COUNT(column).
- Learned how to solve duplicate-detection problems efficiently without using subqueries.
Today's takeaway: GROUP BY helps identify patterns in data, while HAVING helps filter those patterns based on aggregate conditions.
