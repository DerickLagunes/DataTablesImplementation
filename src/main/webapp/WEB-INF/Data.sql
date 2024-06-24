-- Crear la base de datos
CREATE DATABASE employee_db;

-- Usar la base de datos
USE employee_db;

-- Crear la tabla
CREATE TABLE data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    office VARCHAR(100),
    age INT,
    startDate DATE,
    salary VARCHAR(100)
);

INSERT INTO data (name, position, office, age, startDate, salary) VALUES
('Alice Johnson', 'System Architect', 'New York', 45, '2012-01-01', '$120,000'),
('Bob Smith', 'Software Engineer', 'San Francisco', 35, '2013-04-12', '$110,000'),
('Charlie Brown', 'Database Administrator', 'Chicago', 40, '2014-05-23', '$100,000'),
('Diana Prince', 'Project Manager', 'Los Angeles', 38, '2015-06-14', '$105,000'),
('Edward Norton', 'UX Designer', 'Boston', 28, '2016-07-05', '$95,000'),
('Fiona Apple', 'QA Engineer', 'Miami', 32, '2017-08-26', '$85,000'),
('George Clooney', 'System Administrator', 'Dallas', 50, '2018-09-17', '$115,000'),
('Hannah Montana', 'Frontend Developer', 'Houston', 29, '2019-10-08', '$92,000'),
('Ivan Drago', 'Backend Developer', 'Seattle', 37, '2020-11-29', '$102,000'),
('Jane Doe', 'Full Stack Developer', 'Denver', 33, '2021-12-20', '$108,000'),
('John Doe', 'DevOps Engineer', 'Austin', 30, '2022-01-10', '$98,000'),
('Karen Johnson', 'Data Scientist', 'San Diego', 41, '2022-02-01', '$125,000'),
('Larry Page', 'Machine Learning Engineer', 'Phoenix', 34, '2022-03-22', '$130,000'),
('Mona Lisa', 'AI Specialist', 'Philadelphia', 36, '2022-04-12', '$135,000'),
('Nina Simone', 'Cloud Architect', 'San Antonio', 39, '2022-05-03', '$140,000'),
('Oscar Wilde', 'Security Analyst', 'San Jose', 42, '2022-05-24', '$145,000'),
('Paul McCartney', 'Network Engineer', 'Jacksonville', 43, '2022-06-14', '$110,000'),
('Queen Latifah', 'Product Manager', 'Columbus', 44, '2022-07-05', '$115,000'),
('Ringo Starr', 'Scrum Master', 'Fort Worth', 31, '2022-07-26', '$105,000'),
('Steve Jobs', 'CTO', 'Indianapolis', 47, '2022-08-16', '$150,000'),
('Tony Stark', 'CIO', 'Charlotte', 50, '2022-09-06', '$155,000'),
('Uma Thurman', 'HR Manager', 'San Francisco', 48, '2022-09-27', '$110,000'),
('Vincent Vega', 'Legal Advisor', 'Seattle', 46, '2022-10-18', '$120,000'),
('Willy Wonka', 'Chief Designer', 'Denver', 52, '2022-11-08', '$130,000'),
('Xena Warrior', 'Support Specialist', 'Austin', 29, '2022-11-29', '$85,000'),
('Yoda Jedi', 'Lead Developer', 'Miami', 54, '2022-12-20', '$140,000'),
('Zoe Saldana', 'Tech Writer', 'Boston', 27, '2023-01-10', '$90,000'),
('Andy Warhol', 'Creative Director', 'Chicago', 55, '2023-01-31', '$145,000'),
('Bruce Wayne', 'Chief Financial Officer', 'Dallas', 56, '2023-02-21', '$150,000'),
('Clark Kent', 'Marketing Manager', 'Houston', 33, '2023-03-14', '$100,000'),
('Doris Day', 'Sales Manager', 'Philadelphia', 39, '2023-04-04', '$105,000'),
('Elvis Presley', 'Operations Manager', 'Phoenix', 60, '2023-04-25', '$110,000'),
('Freddie Mercury', 'Customer Service Manager', 'San Antonio', 58, '2023-05-16', '$95,000'),
('Greta Garbo', 'Content Strategist', 'San Diego', 32, '2023-06-06', '$90,000'),
('Homer Simpson', 'Game Developer', 'San Jose', 37, '2023-06-27', '$85,000'),
('Indiana Jones', 'Research Scientist', 'Fort Worth', 45, '2023-07-18', '$115,000'),
('James Bond', 'Risk Manager', 'Jacksonville', 38, '2023-08-08', '$125,000'),
('Kurt Cobain', 'Ethical Hacker', 'Columbus', 34, '2023-08-29', '$130,000'),
('Lana Del Rey', 'Mobile Developer', 'Charlotte', 31, '2023-09-19', '$95,000'),
('Michael Jackson', 'Technical Lead', 'Indianapolis', 42, '2023-10-10', '$140,000'),
('Nancy Sinatra', 'SEO Specialist', 'Columbus', 35, '2023-10-31', '$100,000'),
('Oprah Winfrey', 'Media Planner', 'Denver', 48, '2023-11-21', '$115,000'),
('Pablo Picasso', 'Art Director', 'Austin', 51, '2023-12-12', '$135,000'),
('Quentin Tarantino', 'Video Editor', 'Miami', 43, '2024-01-02', '$120,000'),
('Rihanna Fenty', 'Brand Manager', 'Boston', 28, '2024-01-23', '$105,000'),
('Samuel Jackson', 'Public Relations Specialist', 'Chicago', 46, '2024-02-13', '$125,000'),
('Tom Cruise', 'Event Coordinator', 'Dallas', 39, '2024-03-05', '$110,000'),
('Uma Thurman', 'HR Specialist', 'Houston', 44, '2024-03-26', '$95,000');