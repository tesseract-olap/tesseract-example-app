CREATE TABLE tesseract_webshop_categories (
    category_id Int32,
    category_name String,
    category_name_pt String,
    insertion_date DateTime MATERIALIZED now()
)
ENGINE = MergeTree PARTITION BY category_id ORDER BY (category_id);
