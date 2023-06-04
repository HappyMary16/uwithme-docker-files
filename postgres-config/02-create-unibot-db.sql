CREATE USER unibot_user;
ALTER USER unibot_user WITH PASSWORD 'password';
CREATE DATABASE unibot;
ALTER DATABASE unibot OWNER TO unibot_user;