/* 3- İsmi “Türkiye” olan ülkenin liglerinin listesini getiren scripti yazınız. */

SELECT Lig.id, Lig.adi
FROM Lig
    JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye';
