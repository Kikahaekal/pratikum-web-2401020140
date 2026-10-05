INSERT INTO program_studi (nama_prodi) VALUES 
('Sains Data'),
('Rekayasa Perangkat Lunak');

INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES 
('2301000001', 'Andi Pratama', 'andi.pratama@email.com', 19, 1),
('2301000002', 'Citra Kirana', 'citra.kirana@email.com', 20, 1),
('2302000001', 'Dimas Anggara', 'dimas.anggara@email.com', 21, 2),
('2302000002', 'Eka Rahmawati', 'eka.rahmawati@email.com', 18, 2);

UPDATE mahasiswa 
SET email = 'andi.pratama.update@email.com', 
    usia = 20 
WHERE nim = '2301000001';

DELETE FROM mahasiswa 
WHERE nim = '2302000002';

SELECT 
    m.nim,
    m.nama AS nama_mahasiswa,
    m.email,
    m.usia,
    p.nama_prodi
FROM mahasiswa m
INNER JOIN program_studi p ON m.program_studi_id = p.id;