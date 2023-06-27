-- Active: 1687817930127@@127.0.0.1@3306


-- Práticas 

-- Prática 1

CREATE TABLE IF NOT EXISTS licenses (
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    register_number TEXT NOT NULL UNIQUE,
    category TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS drivers (
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    license_id TEXT NOT NULL,
    FOREIGN KEY (license_id) REFERENCES licenses(id)
);

INSERT INTO licenses (id, register_number, category) 
VALUES  ("lic001", "00235677", "AB"),
        ("lic002", "25360032", "A"),
        ("lic003", "36953173", "E"),
        ("lic004", "32793283", "C"),
        ("lic006", "12846894", "AD");


DELETE FROM drivers WHERE id = "dri";

INSERT INTO drivers (id, name, email, password, license_id)
VALUES  ("dri001", "Wesllei", "wesllei.wbs@gmail.com", "abc123", "lic001"),
        ("dri002", "Pâmela", "pamela.fjs@gmail.com", "123abc", "lic001");

SELECT * FROM licenses;

SELECT * FROM drivers;

SELECT licenses.id, drivers.name, drivers.license_id FROM drivers INNER JOIN licenses ON drivers.license_id = licenses.id;

CREATE TABLE IF NOT EXISTS users (
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

INSERT INTO users (id, name, email, password)
VALUES ("u001", "Brito", "brito@santos", "0032"),
       ("u002", "Santos", "Santos@Brito", "0016");



SELECT * FROM users;


CREATE TABLE IF NOT EXISTS phones(
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    phone_number TEXT NOT NULL UNIQUE,
    user_id TEXT NOT NULL
);

INSERT INTO phones (id, phone_number, user_id)
VALUES ("ph001", "753625-3028", "u001"),
       ("ph002", "7598226-3028", "u001"),
       ("ph003", "754003-3028", "u002");


SELECT * FROM phones  INNER JOIN users ON users.id = phones.user_id;

SELECT * FROM phones;

CREATE TABLE IF NOT EXISTS accounts (
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    name TEXT NOT NULL,
    account TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

DROP TABLE accounts;

INSERT INTO accounts ("id", "name", "account", email, password) 
VALUES  ("ac001", "Bill", "3659", "bill@gates", "053qwe"),
        ("ac002", "Manuel", "5236", "manu@el", "035plk"),
        ("ac003", "Francisco", "7462", "chico@chiquinho", "452YTG"),
        ("ac004", "Marluce", "8632", "luce@mar", "lkt"),
        ("ac005", "Lorena", "3657", "lore@rena", "lkt");
        

SELECT * FROM accounts;