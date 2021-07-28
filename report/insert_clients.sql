--https://www.postgresqltutorial.com/import-csv-file-into-posgresql-table/
COPY won.clients(client_name,business_name,country_code,tz)
FROM '/data/clients.csv'
DELIMITER ','
CSV HEADER;

--https://stackoverflow.com/questions/34901804/how-work-with-unix-timestamp-on-postgresql
--alter table won.clients
--add column ingestion_time timestamp with time zone default current_timestamp;

--https://www.postgresqltutorial.com/postgresql-timestamp/
--insert into clients(ts)
--values (current_timestamp);