/* 9- Bir takımın oyuncularının toplam gol sayısını ve takımın gol sayısını yan yana getiren bir scprit yazınız. (kontrol sorgusu gibi, birisi takım verisi, diğeri oyuncuların toplamı olacak) */

SELECT Takim.id AS takim_id, Takim.adi AS takim_adi, SUM(Oyuncu.attigi_gol) AS oyuncularin_toplam_gol, Takim.attigi_gol AS takim_toplam_gol
FROM Takim
    LEFT JOIN Oyuncu ON Takim.id = Oyuncu.id_team
WHERE Takim.id = takim_id
GROUP BY Takim.id;
