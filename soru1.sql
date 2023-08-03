/* 1- tabloların create scriptlerini oluşturunuz. */


-- Country tablosu
CREATE TABLE Country (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Lig tablosu
CREATE TABLE Lig (
    id INT PRIMARY KEY,
    adi VARCHAR(100) NOT NULL,
    id_country INT NOT NULL,
    FOREIGN KEY (id_country) REFERENCES Country(id)
);

-- Takim tablosu
CREATE TABLE Takim (
    id INT PRIMARY KEY,
    adi VARCHAR(100) NOT NULL,
    id_league INT NOT NULL,
    kurulus_yili INT NOT NULL,
    attigi_gol INT NOT NULL,
    yedigi_gol INT NOT NULL,
    puan INT NOT NULL,
    seviye INT NOT NULL,
    FOREIGN KEY (id_league) REFERENCES Lig(id)
);

-- Oyuncu tablosu
CREATE TABLE Oyuncu (
    id INT PRIMARY KEY,
    adi VARCHAR(50) NOT NULL,
    soyadi VARCHAR(50) NOT NULL,
    id_team INT NOT NULL,
    id_country INT NOT NULL,
    attigi_gol INT NOT NULL,
    FOREIGN KEY (id_team) REFERENCES Takim(id),
    FOREIGN KEY (id_country) REFERENCES Country(id)
);
