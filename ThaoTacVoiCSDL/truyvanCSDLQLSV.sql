#Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT studentID, studentName From student 
WHERE studentName 
LIKE 'H_%';

#Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT * FROM class 
WHERE startDate 
LIKE "%12%";

#Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT * FROM subject
WHERE credit
BETWEEN 5 AND 6;

#Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE student
SET classID = 2
WHERE studentName = 'Hung';

#Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT studentName, subjectName, mark
FROM student, subject, mark
ORDER BY mark DESC;





