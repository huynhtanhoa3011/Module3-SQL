#Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu
USE quanlysinhvien;

#Sử dụng câu lệnh Select * và lấy dữ liệu học viên từ bảng Student để hiển thị danh sách tất cả các học viên
SELECT * FROM student;
SELECT * FROM class;
SELECT * FROM mark;
SELECT * FROM subject;
#Xoá DL cột chỉ định
DELETE FROM `student` WHERE studentID = 6;

#Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.
SELECT * FROM subject WHERE credit < 10;

#Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT adress, COUNT(studentID) AS 'so luong sv' 
FROM student
GROUP BY adress;

#Hiển thị danh sách học viên lớp A1
SELECT S.studentID, S.studentName, C.className
FROM student S JOIN class C ON S.classID = C.classID
WHERE C.className = 'A1';

#Hiển thị điểm môn CF của các học viên.
SELECT S.studentID, S.studentName, Sub.subjectName, M.mark
FROM student S JOIN mark M ON S.studentID = M.studentID JOIN subject Sub ON M.subjectID = Sub.subjectID
WHERE Sub.subjectName = 'CF'; 

 #Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
 SELECT S.studentID, S.studentName, AVG(mark) AS 'diem trung binh'
 FROM student S JOIN mark M ON S.studentID = M.studentID
 GROUP BY S.studentID, S.studentName;
 
 #Sử dụng having để xét điều kiện điểm trung bình các môn học phải lớn hơn 15
 SELECT S.studentID, S.studentName, AVG(mark) AS 'diem TB > 15'
 FROM student S JOIN mark M ON S.studentID = M.studentID
 GROUP BY S.studentID, S.studentName
 HAVING AVG(mark) > 15;
 
 #Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất
  SELECT S.studentID, S.studentName, AVG(mark) AS 'diem trung binh'
 FROM student S JOIN mark M ON S.studentID = M.studentID
 GROUP BY S.studentID, S.studentName
 HAVING AVG(mark) >= ALL (SELECT AVG(mark) FROM mark GROUP BY mark.studentID);
 
 
 
 
 
 
 
 
 
 
 
