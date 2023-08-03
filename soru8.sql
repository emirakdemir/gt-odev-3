/* 8- Tüm liglerde attığı gol yediği golden daha küçük olan takımları getiren scripti yazınız. */

SELECT Takim.id, Takim.adi, Lig.adi AS lig_adi, Takim.attigi_gol, Takim.yedigi_gol
FROM Takim
    JOIN Lig ON Takim.id_league = Lig.id
WHERE Takim.attigi_gol < Takim.yedigi_gol;
