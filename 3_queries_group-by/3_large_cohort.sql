/* Returns table of cohorts with more than 17 students */
SELECT cohorts.name AS cohort_name, COUNT(students) AS student_count 
  FROM cohorts 
  JOIN students 
  ON cohorts.id = students.cohort_id 
  GROUP BY cohorts.name 
  HAVING COUNT(students) > 17 
  ORDER BY COUNT(students);