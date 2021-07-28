-- inside psql shell: \i report/table_create.sql


--https://www.postgresql.org/docs/9.1/sql-set.html
set timezone = 'America/Lima';
show timezone;

-- id and ingestion time are dynamically generated.
create table head.clients(
    -- id int primary key not null,
    id int not null generated always as identity (start with 1 increment by 1),
    client_name text,
    business_name text,
    country_code text,
    tz text,
    team int not null,
    ingestion_time timestamp with time zone default current_timestamp
    

);

--emp_id and ingestion time are dynamically generated.
create table head.employees(
    emp_id int not null generated always as identity (start with 1 increment by 1),
    team int not null,
    division text,
    role text,
    country_code text,
    tz text,
    email text,
    ingestion_time timestamp with time zone default current_timestamp,
    date_begin text,
    date_end text
    
)