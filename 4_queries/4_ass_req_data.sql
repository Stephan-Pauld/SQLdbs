SELECT teachers.name as teacher, students.name as student, assignments.name as assignments, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN assignments
ON assignment_id = assignments.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
ORDER BY duration;