-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH TeacherAssignmentCount AS (
    SELECT
        a.teacher_id,
        COUNT(a.id) AS assignment_count
    FROM
        assignments a
    WHERE
        a.state = 'GRADED'
    GROUP BY
        a.teacher_id
),
MaxAssignmentTeacher AS (
    SELECT
        teacher_id
    FROM
        TeacherAssignmentCount
    ORDER BY
        assignment_count DESC
    LIMIT 1
)

SELECT
    COUNT(a.id) AS number_of_A_graded_assignments
FROM
    assignments a
JOIN
    MaxAssignmentTeacher m ON a.teacher_id = m.teacher_id
WHERE
    a.grade = 'A'
    AND a.state = 'GRADED';
