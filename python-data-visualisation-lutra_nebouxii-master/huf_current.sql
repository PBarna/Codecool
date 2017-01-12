DROP TABLE IF EXISTS "huf_currency";
--CREATE TABLE huf_currency (
--  id INT PRIMARY KEY,
--  company_name VARCHAR(50)
--  budget_value VARCHAR(50)
--  budget_in_huf VARCHAR(50)
--);
SELECT company_name, budget_value
INSERT INTO huf_currency ('budget_in_huf') [IN externaldb]
FROM project;
UPDATE huf_currency SET budget_in_huf = (budget_value * 292.25) WHERE budget_currency = ('USD');
UPDATE huf_currency SET budget_in_huf = (budget_value * 354.99) WHERE budget_currency = ('GBP');
UPDATE huf_currency SET budget_in_huf = (budget_value * 308.5) WHERE budget_currency = ('EUR');
SELECT company_name, budget_in_huf FROM huf_currency ORDER BY budget_in_huf;


