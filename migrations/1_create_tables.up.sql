CREATE TABLE IF NOT EXISTS student (
    id SERIAL PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    username varchar(30) NOT NULL,
    email varchar(50) NOT NULL,
    phone_number varchar(20) UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)