SELECT cohorts.name as name, COUNT(students.cohort_id)
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
GROUP BY cohorts.id
HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id)
bootcampx-# , cohorts.name;