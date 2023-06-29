
SELECT DISTINCT firstname
  FROM users
  ORDER BY firstname;

SELECT COUNT(*) AS male_count
FROM profiles
WHERE gender = 'M' AND birthday <= DATEADD(YEAR, -35, GETDATE());

ALTER TABLE friend_requests
ADD confirmed_at DATETIME;

SELECT status, COUNT(*) AS request_count
FROM friend_requests
GROUP BY status;

SELECT TOP 1 initiator_user_id, COUNT(*) AS request_count
FROM friend_requests
GROUP BY initiator_user_id
ORDER BY request_count DESC;

