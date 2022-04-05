/* Returns average total duration */ 
SELECT AVG(total_duration) AS average_total_duration 
FROM(SELECT sum(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students
ON student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY sum(completed_at-started_at)) AS total_duration; 
