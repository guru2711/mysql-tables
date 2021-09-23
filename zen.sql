CREATE DATABASE zenclass;
USE zenclass;
select *from users;

select * from users
where id != 3;

select student_name from users;
select   "SPARTAAA" ;
select substring("spartaaa",6,8);


CREATE TABLE users(
id INT not null ,
student_name VARCHAR(50),
student_email VARCHAR(50),
PRIMARY KEY(id)
);

INSERT INTO users VALUES(
1,"Guru","saiguruprakash@gmail.com"
);
INSERT INTO users VALUES(
2,"sam","sam@asdl.com"
);
INSERT INTO users VALUES(
3,"Jane","jane@asdl.com"
);
INSERT INTO users VALUES(
4,"jim","jim@asdl.com"
);
INSERT INTO users VALUES(
5,"Tom","Tom@asdl.com"
);

CREATE TABLE codekata(
id INT ,
problem_solved INT NOT NULL,
student_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(student_id) REFERENCES users(id)
);

INSERT INTO codekata VALUES(1,87,1);
INSERT INTO codekata VALUES(2,80,2);
INSERT INTO codekata VALUES(3,87,3);
INSERT INTO codekata VALUES(4,87,4);
INSERT INTO codekata VALUES(5,87,5);

SELECT problem_solved,id FROM codekata;

CREATE TABLE attendance(
s_no INT PRIMARY KEY AUTO_INCREMENT,
attendance INT,
student_id INT,
foreign key(student_id) references users(id)
);

INSERT INTO attendance(attendance,student_id) VALUES(100,1);
INSERT INTO attendance(attendance,student_id) VALUES(100,2);
INSERT INTO attendance(attendance,student_id) VALUES(95,3);
INSERT INTO attendance(attendance,student_id) VALUES(90,4);
INSERT INTO attendance(attendance,student_id) VALUES(99,5);

SELECT * FROM attendance;

ALTER TABLE users
ADD foreign key(student_id)
REFERENCES codekata(student_id);

CREATE TABLE topics(
nos INT PRIMARY KEY  AUTO_INCREMENT,
topics VARCHAR(100),
student_id INT,
FOREIGN KEY (student_id) REFERENCES users(id)
);

INSERT INTO topics(topics,student_id) VALUES("HTML",1);
INSERT INTO topics(topics,student_id) VALUES("HTML",2);
INSERT INTO topics(topics,student_id) VALUES("HTML",3);
INSERT INTO topics(topics,student_id) VALUES("HTML",4);
INSERT INTO topics(topics,student_id) VALUES("HTML",5);

INSERT INTO topics(topics,student_id) VALUES("CSS",1);
INSERT INTO topics(topics,student_id) VALUES("CSS",2);
INSERT INTO topics(topics,student_id) VALUES("CSS",3);
INSERT INTO topics(topics,student_id) VALUES("CSS",4);
INSERT INTO topics(topics,student_id) VALUES("CSS",5);

INSERT INTO topics(topics,student_id) VALUES("JS",1);
INSERT INTO topics(topics,student_id) VALUES("JS",2);
INSERT INTO topics(topics,student_id) VALUES("JS",3);
INSERT INTO topics(topics,student_id) VALUES("JS",4);
INSERT INTO topics(topics,student_id) VALUES("JS",5);

INSERT INTO topics(topics,student_id) VALUES("REACTJS",1);
INSERT INTO topics(topics,student_id) VALUES("REACTJS",3);
INSERT INTO topics(topics,student_id) VALUES("REACTJS",5);

INSERT INTO topics(topics,student_id) VALUES("ANGULARJS",2);
INSERT INTO topics(topics,student_id) VALUES("ANGULARJS",4);

select DISTINCT(topics) from topics;

CREATE TABLE tasks(
student_id INT ,
tasks VARCHAR(250),
FOREIGN key (student_id) references users(student_id)
);

ALTER TABLE tasks
ADD primary key(student_id);

CREATE TABLE COMPANY_DRIVES(
student_id INT,
company_drives VARCHAR(250),
foreign key (student_id) references users(student_id)
);

ALTER TABLE COMPANY_DRIVES
ADD primary key(student_id);

CREATE TABLE MENTORS(
student_id INT,
mentors VARCHAR(100),
foreign key (student_id) references users(student_id)
);

ALTER TABLE MENTORS
ADD primary key(student_id);

CREATE TABLE students_activated_courses(
student_id INT,
students_activated_courses VARCHAR(100),
foreign key(student_id) references users(student_id)
);

ALTER TABLE students_activated_courses
ADD primary key(student_id);

CREATE TABLE courses(
student_id INT PRIMARY KEY,
courses VARCHAR(250),
foreign key (student_id) references users(student_id)
);

