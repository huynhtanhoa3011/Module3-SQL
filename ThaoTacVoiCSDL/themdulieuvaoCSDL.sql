INSERT INTO class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO class
VALUES (3, 'B1', current_date(), 0);

INSERT INTO student (studentname, address, phone, status, classID)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (studentname, address, status, classID)
VALUES ('Hoa', 'Hai Phong', 1, 1);
INSERT INTO student (studentname, address, phone, status, classID)
VALUES ('Manh', 'HCM', '0912123123', 0, 2);

INSERT INTO subject
VALUES (1, 'FC', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);

INSERT INTO Mark (subID, studentID, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);







