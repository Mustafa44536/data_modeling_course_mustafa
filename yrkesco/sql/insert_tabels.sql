SET search_path TO yrkesco;

SELECT * FROM yrkesco.utbildare; 

-- 1. Ort
INSERT INTO yrkesco.ort (namn) VALUES
('Jakobsberg'),
('Stockholm'),
('Göteborg');

-- 2. Företag
INSERT INTO yrkesco.företag (namn, organisationsnummer) VALUES
('Tech AB', '556677-8899'),
('DataPartner', '123456-7890'),
('Consultify', '987654-3210');

-- 3. Utbildare
INSERT INTO yrkesco.utbildare (förnamn, efternamn, personnummer, email, ort_id) VALUES
('Anna', 'Karlsson', '19800101-1234', 'anna@skola.se', 1),
('Erik', 'Svensson', '19751212-5678', 'erik@skola.se', 2),
('Sara', 'Johansson', '19900505-7890', 'sara@skola.se', 3);

-- 4. Konsult
INSERT INTO yrkesco.konsult (utbildare_id, företag_id, lön) VALUES
(1, 1, 45000.00),
(2, 2, 47000.00),
(3, 3, 49000.00);

-- 5. Utbildningsledare
INSERT INTO yrkesco.utbildningsledare (förnamn, efternamn, personnummer, email) VALUES
('Lisa', 'Berg', '19771122-4567', 'lisa@ledare.se'),
('Tommy', 'Ek', '19661015-9988', 'tommy@ledare.se'),
('Nina', 'Frisk', '19880303-1122', 'nina@ledare.se');

-- 6. Program
INSERT INTO yrkesco.program (namn) VALUES
('Systemutveckling'),
('Dataanalys'),
('IT-projektledning');

-- 7. Klass
INSERT INTO yrkesco.klass (program_id, utbildningsledare_id, namn) VALUES
(1, 1, 'SU23'),
(2, 2, 'DA23'),
(3, 3, 'ITP23');

-- 8. Kurs
INSERT INTO yrkesco.kurs (namn, kurskod, poäng, beskrivning) VALUES
('Databaser', 'DB101', 10, 'Introduktion till databaser'),
('Python', 'PY101', 15, 'Grunder i Python-programmering'),
('Projektledning', 'PM101', 10, 'Grundkurs i projektledning');

-- 9. Klass_Kurs
INSERT INTO yrkesco.klass_kurs (klass_id, kurs_id) VALUES
(1, 1),
(1, 2),
(2, 3);

-- 10. Program_Kurs
INSERT INTO yrkesco.program_kurs (program_id, kurs_id) VALUES
(1, 1),
(1, 2),
(3, 3);

-- 11. Student
INSERT INTO yrkesco.student (förnamn, efternamn, email) VALUES
('Mustafa', 'Hassan Mahamud', 'mustafa@student.se'),
('Ali', 'Yusuf', 'ali@student.se'),
('Amina', 'Mohamed', 'amina@student.se');

-- 12. Student_Info
INSERT INTO yrkesco.student_info (student_id, adress, födelsedatum, telefonnummer, personnummer) VALUES
(1, 'Jakobsbergsgatan 5', '2001-01-01', '0701234567', '010101-1234'),
(2, 'Vasagatan 10', '1999-09-09', '0707654321', '990909-4321'),
(3, 'Storgatan 3', '2000-06-06', '0709988776', '000606-1122');

-- 13. Student_Kurs
INSERT INTO yrkesco.student_kurs (student_id, kurs_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- 14. Utbildare_Kursansvarig
INSERT INTO yrkesco.utbildare_kursansvarig (utbildare_id, kurs_id) VALUES
(1, 1),
(2, 2),
(3, 3);

