-- Active: 1693354290618@@dpg-cjn8d1ocfp5c73fq4lag-a.ohio-postgres.render.com@5432@nome_postgreesql@public
CREATE TABLE cliente(
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(250)
);

CREATE TABLE cliente_pessoa_fisica(
    ID SERIAL PRIMARY KEY,
    CPF VARCHAR(11),
    ID_CLIENTE INT NOT NULL,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);

CREATE TABLE categoria(
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(30),
    descritores VARCHAR(80)
);

CREATE TABLE editora(
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    endereço VARCHAR(200)
);

CREATE TABLE autor(
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(80),
    PaísOrigem VARCHAR(80),
    ObrasPublicadas VARCHAR(350)
);

CREATE TABLE livros(
    ID SERIAL PRIMARY KEY,
    título VARCHAR(200),
    autor_id int not null,
    FOREIGN KEY (autor_id) REFERENCES autor(ID),
    categoria_id int not null,
    FOREIGN KEY (categoria_id) REFERENCES categoria(ID),
    editora_id int not null,
    FOREIGN KEY (editora_id) REFERENCES editora(ID)
);

CREATE TABLE LivrosAutor(
    ID SERIAL PRIMARY KEY,
    id_livros int not null,
    FOREIGN KEY (id_livros) REFERENCES livros(ID),
    id_autor int not null,
    FOREIGN KEY (id_autor) REFERENCES autor(ID)
);

CREATE TABLE LivrosCategoria(
    ID SERIAL PRIMARY KEY,
    id_livros int not null,
    FOREIGN KEY (id_livros) REFERENCES livros(ID),
    id_categoria int not null,
    FOREIGN KEY (id_categoria) REFERENCES categoria(ID)
);







