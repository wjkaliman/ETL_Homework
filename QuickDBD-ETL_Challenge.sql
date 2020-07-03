-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/b3jgV3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "airline" (
    "IATA_CODE" varchar(2)   NOT NULL,
    "Airline-" varchar(30)   NOT NULL,
    CONSTRAINT "pk_airline" PRIMARY KEY (
        "IATA_CODE"
     )
);

CREATE TABLE "year" (
    "OP_CARRIER" varchar(2)   NOT NULL,
    "FL_DATE" date   NOT NULL,
    "ORIGIN" varchar(3)   NOT NULL,
    "DEST" varchar(3)   NOT NULL,
    "DEP_TIME" int   NOT NULL,
    "DEP_DELAY" int   NOT NULL,
    "ARR_TIME" int   NOT NULL,
    "ARR_DELAY" int   NOT NULL,
    "CANCELLED" boolean   NOT NULL,
    "DIVERTED" boolean   NOT NULL,
    "CARRIER_DELAY" int   NOT NULL,
    "WEATHER_DELAY" int   NOT NULL,
    "NAS_DELAY" int   NOT NULL,
    "SECURITY_DELAY" int   NOT NULL,
    "LATE_AIRCRAFT_DELAY" int   NOT NULL
);

CREATE TABLE "Airport" (
    "IATA_CODE" varchar(3)   NOT NULL,
    "AIRPORT" varchar(60)   NOT NULL,
    "CITY" varchar(20   NOT NULL,
    "STATE" varchar(2)   NOT NULL,
    "COUNTRY" varchar(30)   NOT NULL,
    "LATITUDE" int   NOT NULL,
    "LONGITUDE" int   NOT NULL,
    CONSTRAINT "pk_Airport" PRIMARY KEY (
        "IATA_CODE"
     )
);

CREATE TABLE "delay_causes_2015" (
    "month" int   NOT NULL,
    "carrier" varchar(2)   NOT NULL,
    "carrier_name" varchar(30)   NOT NULL,
    "arr_cancelled" int   NOT NULL,
    "arr_diverted" int   NOT NULL,
    "arr_delay" int   NOT NULL,
    "carrier_delay" int   NOT NULL,
    "weather_delay" int   NOT NULL,
    "nas_delay" int   NOT NULL,
    "security_delay" int   NOT NULL,
    "late_aircraft_delay" int   NOT NULL
);

ALTER TABLE "year" ADD CONSTRAINT "fk_year_OP_CARRIER" FOREIGN KEY("OP_CARRIER")
REFERENCES "airline" ("IATA_CODE");

ALTER TABLE "year" ADD CONSTRAINT "fk_year_ORIGIN" FOREIGN KEY("ORIGIN")
REFERENCES "Airport" ("IATA_CODE");

ALTER TABLE "year" ADD CONSTRAINT "fk_year_DEST" FOREIGN KEY("DEST")
REFERENCES "Airport" ("IATA_CODE");

ALTER TABLE "delay_causes_2015" ADD CONSTRAINT "fk_delay_causes_2015_carrier" FOREIGN KEY("carrier")
REFERENCES "airline" ("IATA_CODE");

