SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE insert_student (
    p_student_id   IN NUMBER,
    p_student_name IN VARCHAR2,
    p_course_name  IN VARCHAR2
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, CourseName)
    VALUES (p_student_id, p_student_name, p_course_name);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

