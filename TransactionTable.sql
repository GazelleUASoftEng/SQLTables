CREATE TABLE transaction
(
  record_id uuid NOT NULL,
  cashier_id uuid NOT NULL,
  amount numeric(5,2) NOT NULL,
  transactiontype character varying(25),
  parent_id uuid,
  time_stamp timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT transaction_pkey PRIMARY KEY (record_id),
  CONSTRAINT transaction_cashier_id_fkey FOREIGN KEY (cashier_id)
      REFERENCES employee (record_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT transaction_parent_id_fkey FOREIGN KEY (parent_id)
      REFERENCES transaction (record_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT transaction_transactiontype_check CHECK (transactiontype::text = ANY (ARRAY['sale'::character varying, 'return'::character varying, 'void'::character varying]::text[]))
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transaction
  OWNER TO gazelle;
