-- #Hiển thị danh sách học viên lớp A1
-- -- SELECT S.studentId, S.studentName, C.className
-- -- FROM student S join class C on S.classId = C.classID
-- -- WHERE C.className = 'A2';

#Hiển thị điểm môn CF của các học viên.
SELECT S.studentId, S.studentName, subject.subjectName, M.mark
FROM student S join mark M on S.studentId = M.studentId join subject subject on M.subjectID = subject.subjectID
WHERE subject.subjectName = 'CF';