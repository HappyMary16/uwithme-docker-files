#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "uwithme_user" --dbname "uwithme" <<-EOSQL
    CREATE TABLE IF NOT EXISTS universities (
        id serial PRIMARY KEY,
        name VARCHAR(50) UNIQUE NOT NULL);
    INSERT INTO universities (name) VALUES ('NTU "KhPI"');
EOSQL