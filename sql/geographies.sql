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
