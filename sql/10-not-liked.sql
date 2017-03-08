\c sql_exercises

SELECT student.name FROM student
	WHERE student.id NOT IN (SELECT student_like.liker_id FROM student_like)
	AND student.id NOT IN (SELECT student_like.likee_id FROM student_like);
