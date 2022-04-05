/* Returns table of rollover students */
SELECT students.name, students.start_date AS student_start, cohorts.name AS cohort, cohorts.start_date AS cohort_start 
  FROM students 
  JOIN cohorts 
  ON cohorts.id = students.cohort_id 
  WHERE students.start_date != cohorts.start_date 
  ORDER BY cohorts.start_date;