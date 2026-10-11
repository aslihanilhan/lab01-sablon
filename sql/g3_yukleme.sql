TRUNCATE TABLE kitaplar;

COPY kitaplar(kitap_id, ad, yazar, yayin_yili, fiyat, sayfa, tur)
FROM '/kitaplar.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');
