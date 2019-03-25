drop DATABASE IF EXISTS "bank-db";

CREATE DATABASE "bank-db"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;


CREATE TABLE client (

  id bigserial NOT NULL,
  name character varying(127) NOT NULL,
  passport_series character varying(4) NOT NULL,
  passport_number INT NOT NULL,
  birth DATE NOT NULL,
  phone character varying(10) NOT NULL,
  address character varying(30) NOT NULL,

  CONSTRAINT client_pk PRIMARY KEY (id)
);


CREATE TABLE "users" (

  id bigserial NOT NULL,
  name character varying(127) NOT NULL,
  login character varying(127) NOT NULL,
  password character varying(127) NOT NULL,
  role character varying(30) NOT NULL,
  submitted BOOLEAN NOT NULL DEFAULT FALSE,

  CONSTRAINT users_pk PRIMARY KEY (id)
);


CREATE TABLE currency (

  id bigserial NOT NULL,
  currency_code character varying(4) NOT NULL,
  currency_name character varying(15) NOT NULL,

  CONSTRAINT currency_pk PRIMARY KEY (id)
);


CREATE TABLE credit_type (

  id bigserial NOT NULL,
  description character varying(100) NOT NULL,
  percentage DOUBLE PRECISION NOT NULL,
  term INT NOT NULL,
  min_sum DOUBLE PRECISION NOT NULL,
  currency_id int NOT NULL,


  CONSTRAINT credit_type_pk PRIMARY KEY (id),
  CONSTRAINT currency_fk FOREIGN KEY (currency_id)
  REFERENCES currency (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


CREATE TABLE credit (

  id bigserial NOT NULL,
  sum DOUBLE PRECISION NOT NULL,
  start_date date not null,
  end_date date not null,
  term INT NOT NULL,
  credit_type_id int NOT NULL,
  client_id int NOT NULL,
  user_id int NOT NULL,


  CONSTRAINT credit_pk PRIMARY KEY (id),
  CONSTRAINT credit_type_fk FOREIGN KEY (credit_type_id)
  REFERENCES credit_type (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT client_fk FOREIGN KEY (client_id)
  REFERENCES client (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT user_fk FOREIGN KEY (user_id)
  REFERENCES "users" (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


CREATE TABLE deposit_type (

  id bigserial NOT NULL,
  description character varying(100) NOT NULL,
  percentage DOUBLE PRECISION NOT NULL,
  term INT NOT NULL,
  min_sum DOUBLE PRECISION NOT NULL,

  capitalization BOOLEAN NOT NULL ,
  currency_id int NOT NULL,


  CONSTRAINT deposit_type_pk PRIMARY KEY (id),
  CONSTRAINT currency_fk FOREIGN KEY (currency_id)
  REFERENCES currency (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


CREATE TABLE deposit (

  id bigserial NOT NULL,
  sum DOUBLE PRECISION NOT NULL,
  start_date date not null,
  end_date date not null,
  term INT NOT NULL,
  deposit_type_id int NOT NULL,
  client_id int NOT NULL,
  user_id int NOT NULL,


  CONSTRAINT deposit_pk PRIMARY KEY (id),
  CONSTRAINT deposit_type_fk FOREIGN KEY (deposit_type_id)
  REFERENCES deposit_type (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT client_fk FOREIGN KEY (client_id)
  REFERENCES client (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT user_fk FOREIGN KEY (user_id)
  REFERENCES "users" (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);

CREATE TABLE payment (

  id bigserial NOT NULL,
  description character varying(100) NOT NULL,
  payment_type character varying(100) NOT NULL,
  number INT NOT NULL,
  sum DOUBLE PRECISION NOT NULL,
  date date NOT NULL ,
  client_id int NOT NULL,
  user_id int NOT NULL,


  CONSTRAINT payment_pk PRIMARY KEY (id),

  CONSTRAINT client_fk FOREIGN KEY (client_id)
  REFERENCES client (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT user_fk FOREIGN KEY (user_id)
  REFERENCES "users" (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


