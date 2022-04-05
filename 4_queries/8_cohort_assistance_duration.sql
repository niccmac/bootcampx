/* Average assistance request duration per cohort */
SELECT cohorts.name AS name, sum(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students
ON student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY sum(completed_at-started_at);