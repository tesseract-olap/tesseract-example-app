CREATE TABLE tesseract_webshop_time (
    month_id Int32,
    month_name String,
    month_name_pt String,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY month_id ORDER BY (month_id);
