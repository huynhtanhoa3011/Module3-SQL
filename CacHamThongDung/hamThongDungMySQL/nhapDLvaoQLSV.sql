INSERT INTO class
VALUES (1, 'A1', sysdate(), 1);
INSERT INTO class
VALUES (2, 'A2', sysdate(), 1);
INSERT INTO class
VALUES (3, 'B3', sysdate(), 0);

INSERT INTO student (studentName, adress, phone, status, classID)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (studentName, adress, status, classID)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student (studentName, adress, phone, status, classID)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO mark (subjectId, studentId, mark, examTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);      