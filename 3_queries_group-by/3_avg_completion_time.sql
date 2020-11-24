SELECT students.name as student, AVG(duration)
FROM students
JOIN assignment_submissions
ON students.id = student_id
GROUP BY students.name
ORDER BY AVG(duration) DESC;