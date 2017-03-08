\c sql_exercises

SELECT a.name, a.grade, b.name, b.grade
FROM student_like
JOIN student a
ON a.id = student_like.liker_id
JOIN student b
ON b.id != student_like.liker_id
WHERE a.id = student_like.liker_id
AND b.id = student_like.likee_id
AND b.id NOT IN (SELECT student_like.liker_id FROM student_like);
