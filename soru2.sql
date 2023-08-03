/* 2- Bu tabloları dolduran insert scriptler yazınız. */

-- ülkeler
INSERT INTO Country (id, name)
VALUES
    (1, 'Türkiye'),
    (2, 'İspanya'),
    (3, 'İngiltere'),
    (4, 'Almanya'),
    (5, 'Fransa');

-- ligler
INSERT INTO Lig (id, adi, id_country)
VALUES
    (1, 'Süper Lig', 1),
    (2, 'PTT 1. Lig', 1),
    (3, 'La Liga', 2),
    (4, 'La Liga 2', 2),
    (5, 'Premier League', 3),
    (6, 'Championship', 3),
    (7, 'Bundesliga', 4),
    (8, '2. Bundesliga', 4),
    (9, 'Ligue 1', 5),
    (10, 'Ligue 2', 5);

-- takimlar
-- Takımlar
INSERT INTO Takim (id, adi, id_league, kurulus_yili, attigi_gol, yedigi_gol, puan, seviye)
VALUES
    -- Süper Lig
    (101, 'Galatasaray', 1, 1905, 50, 25, 75, 1),
    (102, 'Fenerbahçe', 1, 1907, 45, 30, 70, 1),
    (103, 'Beşiktaş', 1, 1903, 55, 20, 80, 1),
    -- PTT 1. Lig
    (201, 'Malatyaspor', 2, 1966, 40, 32, 65, 2),
    (202, 'Göztepe', 2, 1925, 48, 28, 70, 2),
    (203, 'Bodrumspor', 2, 1975, 30, 35, 50, 2),
    -- La Liga
    (301, 'Real Madrid', 3, 1902, 60, 20, 80, 1),
    (302, 'Barcelona', 3, 1899, 65, 22, 85, 1),
    (303, 'Atletico Madrid', 3, 1903, 55, 25, 75, 1),
    -- La Liga 2
    (401, 'Levante', 4, 1919, 45, 30, 70, 2),
    (402, 'Elche', 4, 1910, 42, 35, 65, 2),
    (403, 'Huesca', 4, 1893, 50, 25, 70, 2),
    -- Premier League
    (501, 'Manchester United', 5, 1970, 58, 20, 78, 1),
    (502, 'Arsenal', 5, 1899, 45, 30, 60, 1),
    (503, 'Liverpool', 5, 1950, 52, 28, 65, 1),
    -- Championship
    (601, 'Preston', 6, 1905, 56, 22, 78, 2),
    (602, 'Stoke City', 6, 1878, 58, 25, 80, 2),
    (603, 'Millwall', 6, 1892, 55, 20, 76, 2),
    -- Bundesliga
    (701, 'Bayern Munich', 7, 1900, 70, 15, 85, 1),
    (702, 'Borussia Dortmund', 7, 1909, 65, 20, 80, 1),
    (703, 'RB Leipzig', 7, 2009, 55, 25, 75, 1),
    -- Bundesliga 2
    (801, 'St.Pauli', 8, 1909, 48, 32, 68, 2),
    (802, 'Hertha Berlin', 8, 1890, 52, 20, 75, 2),
    (803, 'Paderborn', 8, 1919, 55, 22, 76, 2),
    -- Ligue 1
    (901, 'Lyon', 9, 1904, 50, 28, 70, 1),
    (902, 'Marsilya', 9, 1904, 45, 30, 65, 1),
    (903, 'Paris Saint Germain', 9, 1900, 55, 25, 78, 1),
    -- Ligue 2
    (1001, 'Ajaccio', 10, 1944, 42, 32, 65, 2),
    (1002, 'Bastia', 10, 1899, 48, 28, 70, 2),
    (1003, 'Valenciennes', 10, 1924, 55, 25, 75, 2);


-- oyuncular
INSERT INTO Oyuncu (id, adi, soyadi, id_team, id_country, attigi_gol)
VALUES
    -- Galatasaray oyuncuları
    (5001, 'Mauro', 'İcardi', 101, 1, 30),
    (5002, 'Nicolo', 'Zaniolo', 101, 1, 18),
    (5003, 'Victor', 'Nelsson', 101, 3, 2),
    -- Fenerbahçe oyuncuları
    (5004, 'Edin', 'Dzeko', 102, 1, 16),
    (5005, 'Dusan', 'Tadic', 102, 1, 7),
    (5006, 'Sebastian', 'Syzmanski', 102, 3, 11),
    -- Beşiktaş oyuncuları
    (5007, 'Daniel', 'Amartey', 103, 1, 1),
    (5008, 'Vincent', 'Aboubakar', 103, 1, 20),
    (5009, 'Gedson', 'Fernandes', 103, 1, 6),
    -- Malatyaspor oyuncuları
    (5010, 'Ogün', 'Özçiçek', 201, 1, 8),
    (5011, 'Philip', 'Awuku', 201, 1, 7),
    (5012, 'Atakan', 'Müjde', 201, 1, 9),
    -- Göztepe oyuncuları
    (5013, 'Mateusz', 'Lis', 202, 1, 0),
    (5014, 'David', 'Tjanic', 202, 1, 6),
    (5015, 'Celil', 'Yüksel', 202, 1, 5),
    -- Bodrumspor oyuncuları
    (5016, 'Gökdeniz', 'Bayraktar', 203, 1, 10),
    (5017, 'Cenk', 'Sen', 203, 1, 6),
    (5018, 'Omar', 'Imeri', 203, 1, 8),
    -- Real Madrid oyuncuları
    (5019, 'Vinicius', 'Junior', 301, 3, 15),
    (5020, 'Jude', 'Bellingham', 301, 2, 7),
    (5021, 'Arda', 'Güler', 301, 4, 10),
    -- Barcelona oyuncuları
    (5022, 'Frenkie', 'de Jong', 302, 2, 20),
    (5023, 'Ousmane', 'Dembele', 302, 2, 8),
    (5024, 'Ansu', 'Fati', 302, 2, 5),
    -- Atletico Madrid oyuncuları
    (5025, 'Joao', 'Felix', 303, 2, 7),
    (5026, 'Rodrigo', 'de Paul', 303, 3, 6),
    (5027, 'Jan', 'Oblak', 303, 4, 0),
    -- Levante oyuncuları
    (5028, 'Jorge', 'de Frutos', 401, 1, 6),
    (5029, 'Ruben', 'Vezo', 401, 1, 0),
    (5030, 'Dani', 'Gomez', 401, 1, 7),
    -- Elche oyuncuları
    (5031, 'Alvaro', 'Boye', 402, 1, 15),
    (5032, 'Edgar', 'Badia', 402, 1, 0),
    (5033, 'Ezequiel', 'Ponce', 402, 1, 9),
    -- Huesca oyuncuları
    (5034, 'Alvaro', 'Fernandez', 403, 1, 0),
    (5035, 'Andrei', 'Ratiu', 403, 1, 0),
    (5036, 'Joaquin', 'Munoz', 403, 1, 5),
    -- ManU oyuncuları
    (5037, 'Marcus', 'Rashford', 501, 5, 10),
    (5038, 'Mason', 'Mount', 501, 5, 15),
    (5039, 'Lisandro', 'Martinez', 501, 1, 0),
    -- Arsenal oyuncuları
    (5040, 'Bukayo', 'Saka', 502, 5, 7),
    (5041, 'Martin', 'Odegaard', 502, 5, 9),
    (5042, 'Kai', 'Havertz', 502, 5, 6),
    -- Liverpool oyuncuları
    (5043, 'Luis', 'Diaz', 503, 5, 12),
    (5044, 'Mo', 'Salah', 503, 5, 8),
    (5045, 'Darwin', 'Nunez', 503, 5, 7),
    -- Preston oyuncuları
    (5046, 'Emil', 'Riis', 601, 3, 10),
    (5047, 'Ben', 'Whiteman', 601, 4, 8),
    (5048, 'Ali', 'McCann', 601, 5, 5),
    -- Stoke oyuncuları
    (5049, 'Jacob', 'Brown', 602, 3, 15),
    (5050, 'Wesley', 'Moraes', 602, 3, 6),
    (5051, 'Josh', 'Tymon', 602, 3, 8),
    -- Milwall oyuncuları
    (5052, 'Zian', 'Flemming', 603, 3, 12),
    (5053, 'George', 'Saville', 603, 3, 5),
    (5054, 'Kevin', 'Nisbet', 603, 2, 10),
    -- Bayern Munih oyuncuları
    (5055, 'Jamal', 'Musiala', 701, 4, 20),
    (5056, 'Thomas', 'Müller', 701, 4, 15),
    (5057, 'Manuel', 'Neuer', 701, 4, 0),
    -- Borussia Dortmund oyuncuları
    (5058, 'Julian', 'Brandt', 702, 4, 17),
    (5059, 'Marco', 'Reus', 702, 4, 9),
    (5060, 'Karim', 'Adeyemi', 702, 4, 6),
    -- RB Leipzig oyuncuları
    (5061, 'Dani', 'Olmo', 703, 4, 7),
    (5062, 'Xavi', 'Simons', 703, 4, 5),
    (5063, 'Timo', 'Werner', 703, 4, 12),
    -- St.Pauli oyuncuları
    (5064, 'Marcel', 'Hartel', 801, 2, 8),
    (5065, 'Oladapo', 'Afolayan', 801, 1, 7),
    (5066, 'Connor', 'Metcalfe', 801, 1, 5),
    -- Hertha oyuncuları
    (5067, 'Dodi', 'Lukebakio', 802, 1, 9),
    (5068, 'Suat', 'Serdar', 802, 1, 6),
    (5069, 'Wilfried', 'Kanga', 802, 2, 7),
    -- Paderborn oyuncuları
    (5070, 'Florent', 'Muslija', 803, 1, 6),
    (5071, 'Jannis', 'Heuer', 803, 1, 0),
    (5072, 'Sirlord', 'Conteh', 803, 1, 8),
    -- lyon oyuncuları
    (5073, 'Rayan', 'Cherki', 901, 4, 10),
    (5074, 'Bradley', 'Barcola', 901, 4, 7),
    (5075, 'Corentin', 'Tolisso', 901, 4, 5),
    -- Marsilya oyuncuları
    (5076, 'Matteo', 'Guendouzi', 902, 4, 6),
    (5077, 'Renan', 'Lodi', 902, 1, 8),
    (5078, 'Ruslan', 'Malinovskyi', 902, 1, 7),
    -- PSG oyuncuları
    (5079, 'Kylian', 'Mbappé', 903, 4, 25),
    (5080, 'Neymar', 'Jr.', 903, 4, 9),
    (5081, 'Marco', 'Verratti', 903, 4, 6),
    -- Ajaccio oyuncuları
    (5082, 'Vincent', 'Marchetti', 1001, 1, 10),
    (5083, 'Mounaïm', 'Bayala', 1001, 1, 8),
    (5084, 'Renato', 'Sanches', 1001, 2, 6),
    -- Bastia oyuncuları
    (5085, 'Kevin', 'Van Den Kerkhof', 1002, 5, 12),
    (5086, 'Tom', 'Ducrocq', 1002, 5, 8),
    (5087, 'Julien', 'Maggiotti', 1002, 5, 7),
    -- Valenciennes oyuncuları
    (5088, 'Mohamed', 'Kaba', 1003, 2, 10),
    (5089, 'Ilyes', 'Hamache', 1003, 4, 9),
    (5090, 'Aymen', 'Boutoutaou', 1003, 1, 5);

