--https://www.postgresql.org/docs/9.1/sql-set.html
set timezone = 'America/Lima';
show timezone;

create table won.clients(
    id int primary key not null,
    client_name text,
    business_name text,
    country_code text,
    tz text

);


