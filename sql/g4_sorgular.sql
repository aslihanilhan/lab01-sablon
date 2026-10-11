-- Soru 4.1
SELECT ad, yayin_yili FROM kitaplar WHERE yayin_yili >= 2015 ORDER BY yayin_yili DESC;

-- Soru 4.2
SELECT ad, sayfa FROM kitaplar WHERE tur = 'Roman' AND sayfa > 400;

-- Soru 4.3
SELECT ad, yazar, sayfa FROM kitaplar ORDER BY sayfa DESC LIMIT 5;

-- Soru 4.4
SELECT tur, COUNT(*) AS sayi FROM kitaplar GROUP BY tur ORDER BY sayi DESC;
