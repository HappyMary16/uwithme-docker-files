CREATE USER uwithme_user;
ALTER USER uwithme_user WITH PASSWORD 'password';
CREATE DATABASE uwithme;
ALTER DATABASE uwithme OWNER TO uwithme_user;