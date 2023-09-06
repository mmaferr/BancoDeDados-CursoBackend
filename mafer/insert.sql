
INSERT INTO livros(id, título, autor_id, categoria_id, editora_id) VALUES
('10','','','',''),
('11','','','',''),
('12','','','',''),
('13','','','',''),
('14','','','','');

INSERT INTO editora(id, nome, endereço) VALUES
('10','',''),
('11','',''),
('12','',''),
('13','',''),
('14','','');

INSERT INTO autor(id, nome, paísorigem, obraspublicadas) VALUES
('10','','',''),
('11','','',''),
('12','','',''),
('13','','',''),
('14','','','');

INSERT INTO categoria(id, nome, descritores) VALUES
('10','',''),
('11','',''),
('12','',''),
('13','',''),
('14','','');

INSERT INTO livrosautor(id, id_livros, is_autor) VALUES
('10','',''),
('11','',''),
('12','',''),
('13','',''),
('14','','');

INSERT INTO livroscategoria(id, id_livros, id_categoria) VALUES
('10','',''),
('11','',''),
('12','',''),
('13','',''),
('14','','');
