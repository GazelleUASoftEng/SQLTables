CREATE TABLE transactionentry
(
  record_id uuid NOT NULL,
  price real,
  quantity bigint,
  transaction_id uuid NOT NULL,
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  product_id uuid NOT NULL,
  CONSTRAINT transactionentry_pkey PRIMARY KEY (record_id),
  CONSTRAINT fk_transentry_transaction FOREIGN KEY (transaction_id)
      REFERENCES transaction (record_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transactionentry
  OWNER TO gazelle;
