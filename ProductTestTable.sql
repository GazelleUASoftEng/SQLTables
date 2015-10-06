-- Table: product_test

-- DROP TABLE product_test;

CREATE TABLE product_test
(
  description text,
  lookupcode character varying(50),
  price numeric(8,2),
  itemtype smallint,
  cost numeric(8,2),
  quantity integer,
  reorderpoint integer,
  restocklevel integer,
  parentitem integer,
  extendeddescription text,
  active boolean,
  msrp numeric(8,2),
  createdon timestamp without time zone NOT NULL DEFAULT now()
)
WITH (
  OIDS=FALSE
);
ALTER TABLE product_test
  OWNER TO gazelle;