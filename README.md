# Föy 01 — Ortam Kurulumu ve İlk Veritabanı

Modern Veritabanı Yönetim Sistemleri — Laboratuvar teslim deposu.
Görevlerin tam açıklaması **Föy 01 PDF**'indedir; bu dosya yalnızca kısa bir hatırlatmadır.

## Hızlı başlangıç

```bash
# 1) Öğrenci numaranızı yazın
echo "230541001" > ogrno.txt        # kendi numaranız

# 2) Ortamı başlatın
docker compose up -d

# 3) Kişiye özel verinizi üretin
python3 veri/uret.py 230541001      # kendi numaranız

# 4) Veritabanına bağlanın
docker exec -it vtys-postgres psql -U vtys -d vtysdb
```

## Depo yapısı

| Yol | Ne |
|---|---|
| `ogrno.txt` | Öğrenci numaranız (otomatik değerlendirici bunu kullanır — ilk iş doldurun) |
| `docker-compose.yml` | PostgreSQL 16 + pgAdmin ortamı |
| `veri/uret.py` | Kişiye özel `kitaplar.csv` üreteci |
| `sql/` | Yazacağınız SQL dosyaları (görev başına bir dosya) |
| `sonuc/` | Sorgu çıktılarınız ve AI köşesi teslimi |


## Push etmeden önce kendinizi kontrol edin

Değerlendiriciyi kendi bilgisayarınızda çalıştırabilirsiniz — GitHub'daki ile
**aynı dosya, aynı puan**:

```bash
docker compose run --rm kontrol
```

Ekrana görev görev puanınız ve eksikleriniz düşer. İlk çalıştırma birkaç
saniye sürer, sonrakiler ~2 saniye. Ayrıca bir şey kurmanız gerekmez; Docker
zaten kurulu.

**Önce burada tam puan alın, sonra push edin.** Her push GitHub'da sınıfın
ortak Actions kotasından dakika harcar; deneme-yanılmayı buraya taşırsanız
kota dönem sonuna kadar yeter.

## Teslim

```bash
git add ogrno.txt sql/ sonuc/
git commit -m "Foy 01 teslimi"
git push
```

Push sonrası **Actions** sekmesinden sonucu görün. Deneme sayısı sınırlı
değildir, ama her push ortak Actions kotasından harcar: düzeltmeleri önce
`docker compose run --rm kontrol` ile yerelde doğrulayın, sonra push edin.

> **Not:** Veri setiniz öğrenci numaranızdan üretilir; başkasının çıktısını
> teslim etmek otomatik olarak tespit edilir. Yapay zekâdan yardım alabilirsiniz,
> ancak teslim ettiğiniz her satırı sözlü savunmada açıklayabilmelisiniz.
