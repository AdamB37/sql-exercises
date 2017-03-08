\c sql_exercises

SELECT a.name, a.grade, b.name, b.grade
FROM student_like likeA
JOIN student_like likeB
ON likeA.liker_id = likeB.likee_id AND likeB.liker_id = likeA.likee_id
JOIN student a
ON a.id = likeA.liker_id
JOIN student b
ON b.id = likeB.liker_id
ORDER BY a.name;
