CREATE TABLE kimia_farma.kf_analytics AS 

## Membuat tabel baru untuk keperluan analisis

SELECT *, 
  nett_sales - (price - (nett_sales * persentase_gross_laba)) as nett_profit
FROM ## membuat kolom nett_profit untuk menganalisa laba bersih yang diterima perusahaan
(
SELECT
    kft.transaction_id,
    kft.date,
    kft.customer_name,
    kft.product_id,
    kft.price,
    kft.discount_percentage,
    kft.rating,
    kkc.branch_id,
    kkc.branch_name,
    kkc.kota,
    kkc.provinsi,
    kkc.rating as rating_cabang,
    kp.product_name,
    kft.price - (kft.price * kft.discount_percentage ) as nett_sales, ### Membuat kolom nett_sales untuk menganalisis hasil penjualan yang diterima perusahaan
    CASE
      WHEN (kft.price - (kft.price * kft.discount_percentage )) <= 50000 THEN 0.10
      WHEN (kft.price - (kft.price * kft.discount_percentage )) <= 100000 THEN 0.15
      WHEN (kft.price - (kft.price * kft.discount_percentage )) <= 300000 THEN 0.20
      WHEN (kft.price - (kft.price * kft.discount_percentage )) <= 500000 THEN 0.25
      ELSE 0.30
    END AS persentase_gross_laba ## Membuat kolom persentase_gross_laba berdasarkan threeshold perusahan, untuk menganalisis laba yang diperoleh perusahaan dari hasil penjualan
FROM
    kimia_farma.kf_final_transaction AS kft
LEFT JOIN kimia_farma.kf_kantor_cabang AS kkc ON kft.branch_id = kkc.branch_id
LEFT JOIN kimia_farma.kf_product AS kp ON kft.product_id = kp.product_id
) as AA

