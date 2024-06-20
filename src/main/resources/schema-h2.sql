CREATE ALIAS IF NOT EXISTS H2GIS_SPATIAL FOR "org.h2gis.functions.factory.H2GISFunctions.load";
CALL H2GIS_SPATIAL();

----------------------
--
-- PFA Schema
--
----------------------
DROP SCHEMA IF EXISTS pfa CASCADE;
CREATE SCHEMA pfa AUTHORIZATION SA;

CREATE TABLE pfa.pfa_area
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    end_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    geom GEOMETRY
);

CREATE SPATIAL INDEX ON pfa.pfa_area(geom);
CREATE INDEX ON pfa.pfa_area(start_date);
CREATE INDEX ON pfa.pfa_area(end_date);
