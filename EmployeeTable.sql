-- Table: employee

CREATE TABLE employee
(
  record_id uuid NOT NULL,
  first_name character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  employee_id character varying(15) NOT NULL,
  active boolean NOT NULL DEFAULT false,
  classification character varying(25),
  manager uuid,
  password character varying(50) NOT NULL,
  time_stamp timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT employee_pkey1 PRIMARY KEY (record_id),
  CONSTRAINT employee_manager_fkey1 FOREIGN KEY (manager)
      REFERENCES employee (record_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_classification_check1 CHECK (classification::text = ANY (ARRAY['general manager'::character varying, 'shift manager'::character varying, 'cashier'::character varying]::text[]))
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employee
  OWNER TO gazelle;
