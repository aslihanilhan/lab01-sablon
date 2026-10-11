TRUNCATE TABLE kitaplar;

COPY kitaplar(kitap_id, ad, yazar, yayin_yili, sayfa, tur)
FROM '/kitaplar.csv'
DELIMITER ','
CSV HEADER;
