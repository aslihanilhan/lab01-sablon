DROP TABLE IF EXISTS kitaplar;

CREATE TABLE kitaplar (
    kitap_id INT PRIMARY KEY,
    ad VARCHAR(255),
    yazar VARCHAR(255),
    yayin_yili INT,
    fiyat NUMERIC(10, 2),
    sayfa INT,
    tur VARCHAR(100)
);