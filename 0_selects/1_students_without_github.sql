/* returns table of students that have not entered github accounts */
SELECT id, name, email, cohort_id 
 FROM students 
 WHERE github IS NULL  
 ORDER BY cohort_id;