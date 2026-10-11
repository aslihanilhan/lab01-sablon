TRUNCATE TABLE kitaplar;

COPY kitaplar(id, baslik, yazar, yayin_yili, fiyat, tur)
FROM '/kitaplar.csv'
DELIMITER ','
CSV HEADER;