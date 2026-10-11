-- Soru 4.1
SELECT COUNT(*) AS toplam_kitap FROM kitaplar;

-- Soru 4.2
SELECT * FROM kitaplar ORDER BY fiyat DESC LIMIT 5;

-- Soru 4.3
SELECT tur, COUNT(*) AS sayi FROM kitaplar GROUP BY tur ORDER BY sayi DESC;

-- Soru 4.4
SELECT * FROM kitaplar WHERE yayin_yili > 2000 ORDER BY yayin_yili ASC;