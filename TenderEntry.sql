CREATE TABLE tenderentry (
		recordid INT4 NOT NULL,
		amount FLOAT8 NOT NULL,
		paytype CIDR(2147483647),
		time TIMESTAMP,
		transactionid null
	);

CREATE UNIQUE INDEX tenderentry_pkey ON tenderentry (recordid ASC);

ALTER TABLE tenderentry ADD CONSTRAINT tenderentry_pkey PRIMARY KEY (recordid);

ALTER TABLE tenderentry ADD CONSTRAINT tenderentry_transactionid_fkey FOREIGN KEY (transactionid)
	REFERENCES transaction (record_id);

