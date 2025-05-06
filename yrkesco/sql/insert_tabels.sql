SET search_path TO yrkesco;

SELECT * FROM yrkesco.utbildare; 


INSERT INTO Ort (namn) VALUES 
('Jakobsberg'), ('Stockholm'), ('Sundbyberg'), ('Uppsala'), ('Göteborg');


INSERT INTO Företag (namn, organisationsnummer) VALUES 
('DataExperts AB', '556677-1234'), 
('SoftSolution AB', '778899-5678'), 
('TechFlow AB', '556123-1111'), 
('CloudZone AB', '556234-2222'), 
('SmartIT AB', '556345-3333');


INSERT INTO Utbildare (förnamn, efternamn, personnummer, email, ort_id) VALUES 
('Anna', 'Andersson', '19800101-1234', 'anna@dataexperts.se', 1), 
('Johan', 'Karlsson', '19750512-5678', 'johan@softsolution.se', 2),
('Sara', 'Lind', '19880322-7890', 'sara@techflow.se', 3),
('Erik', 'Nilsson', '19900115-4567', 'erik@cloudzone.se', 4),
('Nina', 'Johansson', '19791103-6543', 'nina@smartit.se', 5);

INSERT INTO Konsult (utbildare_id, företag_id, lön) VALUES 
(1, 1, 55000.00), 
(2, 2, 60000.00), 
(3, 3, 62000.00), 
(4, 4, 58000.00), 
(5, 5, 57000.00);


INSERT INTO Kurs (namn, kurskod, poäng, beskrivning) VALUES 
('Databasteknik', 'DT101', 20, 'Introduktion till relationsdatabaser'), 
('Python-programmering', 'PY102', 25, 'Grundläggande Python'), 
('Systemutveckling', 'SU103', 30, 'Design och utveckling av IT-system'), 
('Webbutveckling', 'WEB104', 20, 'Frontend och backend-teknik'), 
('Dataanalys', 'DA105', 25, 'Introduktion till analysverktyg och metoder');

INSERT INTO Utbildare_Kurs (utbildare_id, kurs_id) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO Program (namn) VALUES 
('Data Engineer'), 
('Systemutvecklare'), 
('Webbutvecklare'), 
('Dataanalytiker'), 
('IT-säkerhet');


INSERT INTO Program_Kurs (program_id, kurs_id) VALUES 
(1, 1), (1, 2), 
(2, 3), 
(3, 4), 
(4, 5);


INSERT INTO Utbildningsledare (förnamn, efternamn, personnummer, email) VALUES 
('Lisa', 'Berg', '19851215-4321', 'lisa.berg@sti.se'),
('Oskar', 'Lindgren', '19791212-9876', 'oskar.lindgren@sti.se'),
('Emma', 'Ek', '19861101-2345', 'emma.ek@sti.se'),
('Per', 'Svensson', '19800228-3333', 'per.svensson@sti.se'),
('Karin', 'Holm', '19910404-4444', 'karin.holm@sti.se');


INSERT INTO Klass (namn, program_id, utbildningsledare_id) VALUES 
('DE23', 1, 1), 
('SU23', 2, 2), 
('WEB23', 3, 3), 
('DA23', 4, 4), 
('SEC23', 5, 5);

INSERT INTO Klass_Kurs (klass_id, kurs_id) VALUES 
(1, 1), (1, 2), 
(2, 3), 
(3, 4), 
(4, 5);


INSERT INTO Student (klass_id, förnamn, efternamn, email, personnummer) VALUES 
(1, 'Mustafa', 'Hassan Mahamud', 'mustafa@student.sti.se', '20000101-9999'),
(2, 'Ali', 'Khan', 'ali.khan@sti.se', '20000202-1111'),
(3, 'Sara', 'Ahmed', 'sara.ahmed@sti.se', '20000303-2222'),
(4, 'Elin', 'Pettersson', 'elin.pettersson@sti.se', '20000404-3333'),
(5, 'Johan', 'Lindgren', 'johan.lindgren@sti.se', '20000505-4444');


INSERT INTO Student_Info (student_info_id, adress, födelsedatum, telefonnummer, personnummer) VALUES 
(1, 'Vallmovägen 10, Jakobsberg', '2000-01-01', '0701234567', '20000101-9999'),
(2, 'Sturegatan 15, Stockholm', '2000-02-02', '0702345678', '20000202-1111'),
(3, 'Centralgatan 5, Sundbyberg', '2000-03-03', '0703456789', '20000303-2222'),
(4, 'Drottninggatan 20, Uppsala', '2000-04-04', '0704567890', '20000404-3333'),
(5, 'Kungsportsavenyn 8, Göteborg', '2000-05-05', '0705678901', '20000505-4444');

INSERT INTO Student_Kurs (student_id, kurs_id) VALUES 
(1, 1), (1, 2), 
(2, 3), 
(3, 4), 
(4, 5);




