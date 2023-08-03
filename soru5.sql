/* 5- İsmi “Türkiye” olan en üst seviyeli ligdeki puan tablosunu getiren scripti yazınız. */

SELECT Takim.adi AS takim_adi, Takim.puan
FROM Takim
    JOIN Lig ON Takim.id_league = Lig.id
    JOIN Country ON Lig.id_country = Country.id
WHERE Country.name = 'Türkiye' 
    AND Lig.seviye = 1
ORDER BY Takim.puan DESC;
