CREATE USER testsystem_user;
ALTER USER testsystem_user WITH PASSWORD 'password';
CREATE DATABASE testsystem;
ALTER DATABASE testsystem OWNER TO testsystem_user;