/* 4- İsmi “Türkiye” olan ülkenin takımların listesini getiren scripti yazınız.*/

SELECT Takim.id, Takim.adi, Lig.adi AS lig_adi
FROM Takim
    JOIN Lig ON Takim.id_league = Lig.id
    JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye';
