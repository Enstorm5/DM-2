BEGIN
   UPDATE Scholarships
   SET amount = amount + 10000
   WHERE student_id IN (
       SELECT student_id
       FROM Results
       WHERE score > 90
   );

   DBMS_OUTPUT.PUT_LINE('Scholarships updated for students with scores above 90.');
END;
/

DECLARE
   v_rows_updated NUMBER;
BEGIN
   UPDATE Professors
   SET department_id = 2  -- Assume department_id 2 represents a new department
   WHERE hire_date > TO_DATE('2020-01-01', 'YYYY-MM-DD');
   
   v_rows_updated := SQL%ROWCOUNT;
   
   DBMS_OUTPUT.PUT_LINE(v_rows_updated || ' professors updated to new department.');
END;
/

DECLARE
   v_rows_updated NUMBER;
BEGIN
   UPDATE Scholarships
   SET scholarship_type = 'Merit-Based'
   WHERE amount > 50000;
   
   v_rows_updated := SQL%ROWCOUNT;
   
   DBMS_OUTPUT.PUT_LINE(v_rows_updated || ' scholarships updated to Merit-Based.');
END;
/

DECLARE
   v_rows_updated NUMBER;
BEGIN
   UPDATE Clubs
   SET club_type = 'Academic'
   WHERE LOWER(club_name) LIKE '%science%';
   
   v_rows_updated := SQL%ROWCOUNT;
   
   DBMS_OUTPUT.PUT_LINE(v_rows_updated || ' clubs updated to Academic type.');
END;
/


BEGIN
   FOR rec IN (SELECT scholarship_id, amount FROM Scholarships WHERE amount < 30000)
   LOOP
      UPDATE Scholarships
      SET amount = rec.amount + 5000
      WHERE scholarship_id = rec.scholarship_id;

      DBMS_OUTPUT.PUT_LINE('Scholarship ID ' || rec.scholarship_id || ' updated to ' || (rec.amount + 5000));
   END LOOP;
END;
/


BEGIN
   SELECT amount, scholarship_type INTO :v_amount, :v_scholarship_type
   FROM Scholarships
   WHERE scholarship_id = &scholarship_id;

   IF :v_scholarship_type = 'Need-Based' AND :v_amount < 30000 THEN
      UPDATE Scholarships
      SET amount = :v_amount + 5000
      WHERE scholarship_id = &scholarship_id;

      DBMS_OUTPUT.PUT_LINE('Scholarship updated to ' || (:v_amount + 5000));

   ELSE
      DBMS_OUTPUT.PUT_LINE('No update performed.');
   END IF;
END;
/


BEGIN
   SELECT last_name, club_id INTO :v_last_name, :v_club_id
   FROM Students
   WHERE student_id = &student_id;

   IF :v_last_name = 'Smith' OR :v_club_id IS NULL THEN
      UPDATE Students
      SET club_id = 2  -- Set to new club ID
      WHERE student_id = &student_id;

      DBMS_OUTPUT.PUT_LINE('Student ID ' || &student_id || ' updated to club ID 2.');

   ELSE
      DBMS_OUTPUT.PUT_LINE('No update performed for Student ID ' || &student_id || '.');
   END IF;
END;