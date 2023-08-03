/*7- Bir ligin Gol kralını getiren scprit yazınız. (oyuncu adı, soyadı, takım adı, nereli olduğu)*/

SELECT Oyuncu.adi AS oyuncu_adi, Oyuncu.soyadi AS oyuncu_soyadi, Takim.adi AS takim_adi, Country.name AS nereli
FROM Oyuncu
    JOIN Takim ON Oyuncu.id_team = Takim.id
    JOIN Lig ON Takim.id_league = Lig.id
    JOIN Country ON Oyuncu.id_country = Country.id
WHERE Lig.id = lig_id
ORDER BY Oyuncu.attigi_gol DESC
LIMIT 1;
