/* Returns table with sum of all assistance requests teacher has dealt with */
SELECT teachers.name, COUNT(assistance_requests.*) AS total_assistances
FROM teachers
JOIN assistance_requests
ON teachers.id = assistance_requests.teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;