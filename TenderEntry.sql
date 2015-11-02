CREATE TABLE tenderentry
(
  record_id uuid NOT NULL,
  amount double precision NOT NULL,
  paytype integer NOT NULL,
  "time" timestamp without time zone NOT NULL,
  transactionid uuid,
  CONSTRAINT tenderentry_pkey PRIMARY KEY (record_id),
  CONSTRAINT tenderentry_transactionid_fkey FOREIGN KEY (transactionid)
      REFERENCES transaction (record_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tenderentry
  OWNER TO gazelle;
