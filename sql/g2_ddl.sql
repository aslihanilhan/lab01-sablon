DROP TABLE IF EXISTS kitaplar;

CREATE TABLE kitaplar (
    id INT PRIMARY KEY,
    baslik VARCHAR(255),
    yazar VARCHAR(255),
    yayin_yili INT,
    fiyat NUMERIC(10, 2)
);