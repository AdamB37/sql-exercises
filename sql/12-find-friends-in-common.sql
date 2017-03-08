\c sql_exercises

SELECT a.name, a.grade, b.name, b.grade, c.name, c.grade
FROM student_like
JOIN student a
ON a.id = student_like.liker_id
JOIN student b
ON b.id = student_like.likee_id
JOIN friends a_friends
ON a.id = a_friends.id1
JOIN friends b_friends
ON b.id = b_friends.id1
JOIN student c
ON (c.id = a_friends.id2 AND a.id = a_friends.id1) AND (c.id = b_friends.id2 AND b.id = b_friends.id1);
