--Yrkesco

Table Ort {
  ort_id int [pk, increment]
  namn varchar
}

Table Företag {
  företag_id int [pk, increment]
  namn varchar
  organisationsnummer varchar
}

Table Utbildare {
  utbildare_id int [pk, increment]
  förnamn varchar
  efternamn varchar
  personnummer varchar
  email varchar
  ort_id int [ref: > Ort.ort_id]
}

Table Konsult {
  utbildare_id int [pk, ref: > Utbildare.utbildare_id]
  företag_id int [ref: > Företag.företag_id]
  lön decimal
}

Table Kurs {
  kurs_id int [pk, increment]
  namn varchar
  kurskod varchar
  poäng int
  beskrivning text
}

Table Utbildare_Kurs {
  utbildare_id int [pk, ref: > Utbildare.utbildare_id]
  kurs_id int [pk, ref: > Kurs.kurs_id]
}

Table Program {
  program_id int [pk, increment]
  namn varchar
}

Table Program_Kurs {
  program_id int [pk, ref: > Program.program_id]
  kurs_id int [pk, ref: > Kurs.kurs_id]
}

Table Utbildningsledare {
  ledare_id int [pk, increment]
  förnamn varchar
  efternamn varchar
  personnummer varchar
  email varchar
}

Table Klass {
  klass_id int [pk, increment]
  namn varchar
  program_id int [ref: > Program.program_id]
  utbildningsledare_id int [ref: > Utbildningsledare.ledare_id]
}

Table Klass_Kurs {
  klass_id int [pk, ref: > Klass.klass_id]
  kurs_id int [pk, ref: > Kurs.kurs_id]
}

Table Student {
  student_id int [pk, increment]
  klass_id int [ref: > Klass.klass_id]
  förnamn varchar
  efternamn varchar
  personnummer varchar
}

Table Student_Info {
  student_info_id int [pk, ref: > Student.student_id]
  adress varchar
  födelsedatum date
  telefonnummer varchar
  personnummer varchar
}

Table Student_Kurs {
  student_id int [pk, ref: > Student.student_id]
  kurs_id int [pk, ref: > Kurs.kurs_id]
}
