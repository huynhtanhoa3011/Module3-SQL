USE quanlysinhvien;

SELECT * FROM student;

SELECT * FROM student WHERE status = true;

SELECT * FROM subject WHERE credit < 10;

SELECT S.studentID, S.studentName, C.className
FROM student S JOIN class C ON S.classID = C.classID
WHERE C.className = 'A1';

SELECT S.studentId, S.studentName, subject.subjectName, M.mark
FROM student S join mark M on S.studentId = M.studentId join subject subject on M.subjectID = subject.subjectID

-- SELECT S.studentId, S.studentName, subject.subjectName, M.mark
-- FROM student S join mark M on S.studentId = M.studentId join subject subject on M.subjectID = subject.subjectID
-- WHERE subject.subjectName = 'CF';