-- Table: product

-- DROP TABLE product;

CREATE TABLE product
(
  record_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  description text,
  lookupcode character varying(50) NOT NULL,
  price numeric(8,2) NOT NULL,
  itemtype smallint NOT NULL,
  cost numeric(8,2) NOT NULL,
  quantity integer NOT NULL,
  reorderpoint integer NOT NULL,
  restocklevel integer NOT NULL,
  parentitem integer NOT NULL,
  extendeddescription text,
  active boolean NOT NULL,
  msrp numeric(8,2) NOT NULL,
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT product_pkey PRIMARY KEY (record_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE product
  OWNER TO gazelle;

