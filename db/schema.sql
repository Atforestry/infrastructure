-- postgres

CREATE TABLE IF NOT EXISTS Prediction (
  id serial PRIMARY KEY,
  sqbl_longitude double precision NOT NULL,
  sqbl_latitude double precision NOT NULL,
  sqtr_longitude double precision NOT NULL,
  sqtr_latitude double precision NOT NULL,
  prediction VARCHAR(10) NOT NULL,
  predictionTimestamp TIMESTAMP NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

