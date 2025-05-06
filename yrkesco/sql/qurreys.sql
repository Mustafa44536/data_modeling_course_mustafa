SELECT * FROM yrkesco.utbildare;

SELECT förnamn, efternamn, email FROM yrkesco.student;

SELECT s.förnamn, s.efternamn, k.namn AS klass, p.namn AS program
FROM yrkesco.student s
JOIN yrkesco.klass k ON s.klass_id = k.klass_id
JOIN yrkesco.program p ON k.program_id = p.program_id;

SELECT pr.namn AS program, ku.namn AS kurs
FROM yrkesco.program_kurs pk
JOIN yrkesco.program pr ON pk.program_id = pr.program_id
JOIN yrkesco.kurs ku ON pk.kurs_id = ku.kurs_id
ORDER BY pr.namn;
