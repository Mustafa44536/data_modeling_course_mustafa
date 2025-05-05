DROP SCHEMA IF EXISTS yrkesco CASCADE;
CREATE SCHEMA yrkesco;
SET search_path TO yrkesco;

CREATE TABLE Ort (
    ort_id SERIAL PRIMARY KEY,
    namn VARCHAR(100)
);

CREATE TABLE Företag (
    företag_id SERIAL PRIMARY KEY,
    namn VARCHAR(100),
    organisationsnummer VARCHAR(50)
);

CREATE TABLE Utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(100),
    efternamn VARCHAR(100),
    personnummer VARCHAR(20),
    email VARCHAR(100) UNIQUE,  -- Unik constraint på email
    ort_id INT,
    FOREIGN KEY (ort_id) REFERENCES Ort(ort_id)
);



CREATE TABLE Konsult (
    utbildare_id INT PRIMARY KEY,
    företag_id INT,
    lön DECIMAL(10, 2),
    FOREIGN KEY (utbildare_id) REFERENCES Utbildare(utbildare_id),
    FOREIGN KEY (företag_id) REFERENCES Företag(företag_id)
);

CREATE TABLE Kurs (
    kurs_id SERIAL PRIMARY KEY,
    namn VARCHAR(100),
    kurskod VARCHAR(20),
    poäng INT,
    beskrivning TEXT
);

CREATE TABLE Utbildningsledare (
    ledare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(100),
    efternamn VARCHAR(100),
    personnummer VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Program (
    program_id SERIAL PRIMARY KEY,
    namn VARCHAR(100)
);

CREATE TABLE Klass (
    klass_id SERIAL PRIMARY KEY,
    program_id INT,
    utbildningsledare_id INT,
    namn VARCHAR(100),
    FOREIGN KEY (program_id) REFERENCES Program(program_id),
    FOREIGN KEY (utbildningsledare_id) REFERENCES Utbildningsledare(ledare_id)
);

CREATE TABLE Klass_Kurs (
    klass_id INT,
    kurs_id INT,
    PRIMARY KEY (klass_id, kurs_id),
    FOREIGN KEY (klass_id) REFERENCES Klass(klass_id),
    FOREIGN KEY (kurs_id) REFERENCES Kurs(kurs_id)
);

CREATE TABLE Program_Kurs (
    program_id INT,
    kurs_id INT,
    PRIMARY KEY (program_id, kurs_id),
    FOREIGN KEY (program_id) REFERENCES Program(program_id),
    FOREIGN KEY (kurs_id) REFERENCES Kurs(kurs_id)
);

CREATE TABLE Student (
    student_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(100),
    efternamn VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Student_Info (
    student_id INT PRIMARY KEY,
    adress VARCHAR(255),
    födelsedatum DATE,
    telefonnummer VARCHAR(20),
    personnummer VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Student_Kurs (
    student_id INT,
    kurs_id INT,
    PRIMARY KEY (student_id, kurs_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (kurs_id) REFERENCES Kurs(kurs_id)
);

CREATE TABLE Utbildare_Kursansvarig (
    utbildare_id INT,
    kurs_id INT,
    PRIMARY KEY (utbildare_id, kurs_id),
    FOREIGN KEY (utbildare_id) REFERENCES Utbildare(utbildare_id),
    FOREIGN KEY (kurs_id) REFERENCES Kurs(kurs_id)
);

