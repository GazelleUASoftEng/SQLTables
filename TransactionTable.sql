CREATE TABLE transaction (
		record_id null NOT NULL,
		cashier_id null NOT NULL,
		amount NUMERIC(5 , 2) NOT NULL,
		transactiontype VARCHAR(25),
		parent_id null,
		time_stamp TIMESTAMP DEFAULT now() NOT NULL
	);

CREATE UNIQUE INDEX transaction_pkey ON transaction (record_id ASC);

ALTER TABLE transaction ADD CONSTRAINT transaction_pkey PRIMARY KEY (record_id);

ALTER TABLE transaction ADD CONSTRAINT transaction_cashier_id_fkey FOREIGN KEY (cashier_id)
	REFERENCES employee (record_id);

ALTER TABLE transaction ADD CONSTRAINT transaction_parent_id_fkey FOREIGN KEY (parent_id)
	REFERENCES transaction (record_id);

