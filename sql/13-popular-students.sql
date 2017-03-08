\c sql_exercises

SELECT student.name, student.grade
FROM student
JOIN (
		SELECT student_like.likee_id, COUNT(student_like.likee_id)
		FROM student_like
		GROUP BY student_like.likee_id
		HAVING COUNT(student_like.likee_id) > 1
	) AS liked
ON student.id = liked.likee_id;
