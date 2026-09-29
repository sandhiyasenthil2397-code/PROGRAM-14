SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION count_students_dept (
    p_department_name IN VARCHAR2
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student s
    JOIN Course c
        ON s.CourseName = c.CourseName
    WHERE c.DepartmentName = p_department_name;

    RETURN v_count;
END;
/
