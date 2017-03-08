\c sql_exercises

SELECT liker.name, liker.grade, likee.name, likee.grade
FROM student_like
JOIN student liker
ON liker.id = student_like.liker_id
JOIN student likee
ON likee.id = student_like.likee_id
WHERE liker.grade >= (likee.grade) + 2;
