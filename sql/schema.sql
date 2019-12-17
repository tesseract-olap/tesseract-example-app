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
CREATE TABLE tesseract_webshop_geographies (
    continent_id String,
    continent_name String,
    continent_name_pt String,
    continent_name_es String,
    country_id Int32,
    country_name String,
    country_name_pt String,
    country_name_es String,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY country_id ORDER BY (continent_id, country_id);
CREATE TABLE tesseract_webshop_categories (
    category_id Int32,
    category_name String,
    category_name_pt String,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY category_id ORDER BY (category_id);
CREATE TABLE tesseract_webshop_time (
    month_id Int32,
    month_name String,
    month_name_pt String,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY month_id ORDER BY (month_id);
