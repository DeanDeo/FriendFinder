DROP DATABASE IF EXISTS friends;

CREATE DATABASE friends;

USE DATABASE friends;

CREATE TABLE IF NOT EXISTS profiles (
   name VARCHAR(25),
   photo VARCHAR(255),
   scores VARCHAR(25)
);
