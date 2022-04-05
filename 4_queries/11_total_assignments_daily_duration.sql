/* Returns list of with the total number of assignments and the total duration of the assignments */
SELECT day, count(assignments) AS number_of_assignments, SUM(assignments.duration) AS duration 
FROM assignments
GROUP BY day
ORDER BY day;