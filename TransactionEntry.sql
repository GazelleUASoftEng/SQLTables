CREATE TABLE transactionentry (
		record_id null NOT NULL,
		price FLOAT4,
		quantity INT8,
		transaction_id null NOT NULL,
		createdon TIMESTAMP DEFAULT now() NOT NULL,
		product_id null NOT NULL
	);

CREATE UNIQUE INDEX transactionentry_pkey ON transactionentry (record_id ASC);

ALTER TABLE transactionentry ADD CONSTRAINT transactionentry_pkey PRIMARY KEY (record_id);

ALTER TABLE transactionentry ADD CONSTRAINT fk_transentry_transaction FOREIGN KEY (transaction_id)
	REFERENCES transaction (record_id);

