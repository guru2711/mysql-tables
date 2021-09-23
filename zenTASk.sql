
-- get number problems solved in codekata by combining the users
select SUM(problem_solved) FROM codekata;

-- display the no of company drives attended by a user
select * FROM company_drives
WHERE student_id  = 1;

--  list all the mentors
select mentors FROM MENTORS;

-- list the number of students that are assigned for a mentor
SELECT * FROM MENTORS
WHERE student_id = 1;
SELECT * FROM MENTORS
WHERE student_id = 2;
SELECT * FROM MENTORS
WHERE student_id = 3;
SELECT * FROM MENTORS
WHERE student_id = 4;