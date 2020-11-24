SELECT cohorts.name as cohort, COUNT(submission_date)
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
JOIN assignment_submissions
ON students.id = student_id
GROUP BY cohorts.name
ORDER BY COUNT(submission_date) DESC;