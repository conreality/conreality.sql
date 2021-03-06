DROP TABLE IF EXISTS conreality.camera CASCADE;

CREATE TABLE conreality.camera (
  -- The camera's unique identifier.
  uuid       uuid NOT NULL PRIMARY KEY REFERENCES conreality.object ON DELETE CASCADE,
  -- The camera's resolution (in 2D pixels).
  resolution point NULL,
  -- The camera's image format.
  format     varchar(15) NULL,
  -- The camera's frame rate (per second).
  fps        int2 NULL CHECK (fps > 0),
  -- The camera's f-number (the f/N focal ratio).
  fnumber    int2 NULL CHECK (fnumber > 0)
);
