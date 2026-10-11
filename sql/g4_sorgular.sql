-- 1. Toplam kitap sayısını kontrol et
SELECT COUNT(*) AS toplam_kitap FROM kitaplar;

-- 2. İlk 5 kitabı listele
SELECT * FROM kitaplar LIMIT 5;

-- 3. Türlerine göre kitap sayılarını listele
SELECT tur, COUNT(*) AS sayi 
FROM kitaplar 
GROUP BY tur 
ORDER BY sayi DESC;