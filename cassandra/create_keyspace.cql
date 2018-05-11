CREATE KEYSPACE IF NOT EXISTS ics421
  WITH REPLICATION = {
    'class': 'SimpleStrategy', 'replication_factor': '1'
  } AND DURABLE_WRITES = true;

use ics421;

CREATE TABLE ics421.trade_stats (
  country_or_area VARCHAR,
  trade_year INT,
  comm_code VARCHAR,
  commodity VARCHAR,
  flow VARCHAR,
  trade_usd BIGINT,
  weight_kg BIGINT,
  quantity_name VARCHAR,
  quantity VARCHAR,
  category VARCHAR,
  primary key(country_or_area, trade_year, comm_code)
);

COPY ics421.trade_stats (country_or_area,
  trade_year,
  comm_code,
  commodity,
  flow,
  trade_usd,
  weight_kg,
  quantity_name,
  quantity,
  category)
FROM 'commodity_trade_statistics_data.csv'
WITH DELIMITER = ',' AND HEADER=TRUE;
