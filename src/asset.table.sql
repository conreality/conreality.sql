DROP TABLE IF EXISTS conreality.asset RESTRICT;

CREATE TABLE conreality.asset (
  -- The asset's unique identifier.
  uuid     uuid NOT NULL PRIMARY KEY REFERENCES conreality.object ON DELETE CASCADE,
  -- The asset's nickname.
  nick     varchar(31) NOT NULL CHECK (nick <> '') UNIQUE,
  -- The asset's IPv4/IPv6 address.
  ip_addr  inet NULL CHECK ((family(ip_addr) = 4 AND masklen(ip_addr) = 32) OR (family(ip_addr) = 6 AND masklen(ip_addr) = 128)),
  -- The asset's avatar image.
  avatar   bigint NULL REFERENCES conreality.binary ON DELETE SET NULL,
  -- The asset's deployed software version.
  version  varchar(8) NULL CHECK (length(version) >= 5)
);

ALTER TABLE conreality.asset
  ALTER COLUMN nick SET STORAGE PLAIN,
  ALTER COLUMN ip_addr SET STORAGE PLAIN,
  ALTER COLUMN version SET STORAGE PLAIN;
