/* Returns tabel of students with no gmail and no phone */
SELECT name, id, email, cohort_id 
  FROM students 
  WHERE email 
  NOT LIKE '#gmail.com' 
  AND  phone IS NULL;