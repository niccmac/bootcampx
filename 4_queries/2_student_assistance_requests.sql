/* Returns table with sum of all assistance requests student has requested with */
SELECT students.name, COUNT(assistance_requests.*) AS total_assistances
FROM students
JOIN assistance_requests
ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;