-- Up
CREATE TABLE app_user (
    id SERIAL PRIMARY KEY,
    pubkey VARCHAR(65) NOT NULL,
    name VARCHAR(20) NOT NULL,
    dm_type VARCHAR(5) NOT NULL
);
CREATE TABLE relay (
    id SERIAL PRIMARY KEY,
    relay VARCHAR(255) NOT NULL
);
CREATE TABLE app_user_relays (
    app_user_id INTEGER REFERENCES app_user(id),
    relay_id INTEGER REFERENCES relay(id),
    PRIMARY KEY (app_user_id, relay_id)
);
CREATE TABLE invoice (
    id SERIAL PRIMARY KEY,
    op_id VARCHAR(64) NOT NULL,
    bolt11 VARCHAR(2048) NOT NULL,
    amount INTEGER NOT NULL,
    settled BOOLEAN NOT NULL DEFAULT FALSE
);
