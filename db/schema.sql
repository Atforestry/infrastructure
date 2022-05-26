-- postgres

create database atforestry;

CREATE TABLE IF NOT EXISTS Prediction (
  id serial PRIMARY KEY,
  longitude double precision NOT NULL,
  latitude double precision NOT NULL,
  prediction VARCHAR(10) NOT NULL,
  predictionDatetime DATETIME NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

