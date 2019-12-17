CREATE TABLE tesseract_webshop_sales (
    continent_id Int32,
    country_id Int32,
    year Int32,
    month_id Int32,
    category_id Int32,
    price_total Float64,
    quantity Float64,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY category_id ORDER BY (continent_id, country_id, month_id, category_id);
