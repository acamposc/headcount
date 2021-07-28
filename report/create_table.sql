--https://www.postgresql.org/docs/9.1/sql-set.html
set timezone = 'America/Lima';
show timezone;

create table won.clients(
    -- id int primary key not null,
    id int not null generated always as identity (start with 1 increment by 1),
    client_name text,
    business_name text,
    country_code text,
    tz text,
    ingestion_time timestamp with time zone default current_timestamp

);


