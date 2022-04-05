/* returns table of no of assignments per day */
SELECT day, count(*) as total_assignments 
  FROM assignments
  GROUP BY day
  ORDER BY day;