CREATE FULLTEXT INDEX bookTextIndex FOR (b:Book) ON EACH [b.title, b.sku]
