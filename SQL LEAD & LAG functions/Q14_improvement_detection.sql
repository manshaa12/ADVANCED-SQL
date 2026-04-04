-- Table: student_scores(student_id, semester, final_grade)

-- Question:
-- Identify semesters where a student improved compared to the previous semester.
SELECT *
FROM (
    SELECT
        student_id,
        semester,
        final_grade,
        LAG(final_grade) OVER (ORDER BY semester) AS prev_grade
    FROM student_scores
) t
WHERE final_grade > prev_grade;
--imp