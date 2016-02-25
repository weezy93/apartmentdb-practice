DROP DATABASE IF EXISTS apartmentdb;
CREATE DATABASE apartmentdb;

CREATE TABLE "apartments" (
	"id" SERIAL,
	"name" VARCHAR NOT NULL DEFAULT 'Main Street Apartments',
	PRIMARY KEY ("id")
);

CREATE TABLE "units" (
	"id" SERIAL,
	"kind" VARCHAR NOT NULL DEFAULT 'studio',
	"apartment_id" INTEGER NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE "tenants" (
	"id" SERIAL,
	"name" VARCHAR NOT NULL DEFAULT 'Johnny Appleseed',
	"unit_id" INTEGER,
	PRIMARY KEY ("id")
);

ALTER TABLE "units" ADD FOREIGN KEY ("apartment_id")
	REFERENCES "apartments" ("id");
ALTER TABLE "tenants" ADD FOREIGN KEY ("unit_id")
	REFERENCES "units" ("id");