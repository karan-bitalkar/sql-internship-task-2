USE intern_training_db;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT NOT NULL,
    dob DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (name, email, age, dob) VALUES
('Rahul', 'rahul@gmail.com', 20, '2004-05-10'),
('Sneha', 'sneha@gmail.com', 21, '2003-08-15'),
('Amit', 'amit@gmail.com', 22, '2002-11-20');

-- This will FAIL because email is duplicate
INSERT INTO students (name, email, age)
VALUES ('Test', 'rahul@gmail.com', 25);

ALTER TABLE students
ADD COLUMN phone VARCHAR(10);


ALTER TABLE students
RENAME COLUMN phone TO mobile_number;

ALTER TABLE students
DROP COLUMN age;

SELECT * FROM students;
