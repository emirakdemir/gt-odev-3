/* 6- Türkiye liglerindeki puan ortalamalarını gösteren scrpiti yazınız. */

SELECT Lig.adi AS lig_adi, AVG(Takim.puan) AS puan_ortalama
FROM Takim
    JOIN Lig ON Takim.id_league = Lig.id
    JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye'
GROUP BY Lig.adi;
