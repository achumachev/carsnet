CREATE TABLE car_brands (
  id serial NOT NULL,
  name character varying (40) NOT NULL,
  image character varying (40),
  featured boolean NOT NULL,
  CONSTRAINT pk_car_brands PRIMARY KEY (id)
);

CREATE TABLE car_models (
  id serial NOT NULL,
  brand_id bigint NOT NULL,
  name character varying (40) NOT NULL,
  CONSTRAINT pk_car_models PRIMARY KEY (id),
  CONSTRAINT fk_car_models_brand_id FOREIGN KEY (brand_id) REFERENCES car_brands (id)
      MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE car_model_years (
  id serial NOT NULL,
  model_id bigint NOT NULL,
  year integer NOT NULL,
  CONSTRAINT pk_car_model_years PRIMARY KEY (id),
  CONSTRAINT fk_car_model_years_model_id FOREIGN KEY (model_id) REFERENCES car_models (id)
      MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);
