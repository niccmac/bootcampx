 /* Returns table where count of assignment days are greater than 9 */
 SELECT day, count(*) as total_assignments 
  FROM assignments
  GROUP BY day
  HAVING count(assignments) > 9  
  ORDER BY day;
 
 