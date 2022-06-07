#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "uwithme_user" --dbname "uwithme" <<-EOSQL

    CREATE TABLE IF NOT EXISTS users (
        id VARCHAR(50) PRIMARY KEY,
        university_id INTEGER NOT NULL,
        department_id INTEGER,
        group_id INTEGER);

    INSERT INTO users (id, university_id) VALUES ('e47e65d0-b278-4018-9666-1872c238a1cs', 1);
EOSQL