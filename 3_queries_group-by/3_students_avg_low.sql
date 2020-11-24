SELECT students.name as student, AVG(assignment_submissions.duration) as dur, 
AVG(assignments.duration) as durr
FROM students
JOIN assignment_submissions
ON student_id = students.id
JOIN assignments
ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);