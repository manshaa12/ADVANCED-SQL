-- Table: student_scores(student_id, semester, final_grade)

-- Question:
-- Retrieve each semester’s grade along with the previous semester’s grade.
SELECT
    student_id,
    semester,
    final_grade,
    LAG(final_grade) OVER (ORDER BY semester) AS prev_grade
FROM student_scores;