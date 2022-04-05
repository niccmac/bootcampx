/* returns table of students that have not entered github accounts */
SELECT name, email, phone 
  FROM students 
  WHERE github IS NULL 
  AND end_date IS NOT NULL;