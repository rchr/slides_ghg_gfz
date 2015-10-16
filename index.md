% CityGML - Applications, Open Data and Open Source Tools
% Richard Redweik & Stefan Lüdtke
% 22. - 23. November 2015

# Working with CityGML

## Recap

Application independent geospatial information model

Different thematic areas (buildings, water, vegetation, bridges etc.)
International OGC standard
**Data model (UML)** and **exchange format** (based on GML3)
CityGML represents

- 3D geometrey, 3D topology, semantics, and appearance
- in 5 discrete scales (levels of detail, LOD)

**However!**

CityGML datasets may become very large --&gt; Use database to work with!

# Agenda

- 3D City Database
- 3D City Database Importer/Exporter
- QGIS

# 3DCityDB-Overview

![Source: [Kunde, 2014](http://slides.com/fxku/3d-city-database#/)](./pictures/3DCityDB_System.png)


# 3DCityDB-Details

Free 3D geo database

Enables to store, represent, and manage virtual 3D city models

Realized as relational database schema for:

- **PostgreSQL/PostGIS**
- Oracle Spatial

# PostgreSQL

Relational Database Management System (RDBMS)

**Open Source**

Strong reputation for **reliability**, **data integrity** and
**correctness**

Very good documentation

Runs on Linux, Unix (MacOS, BSD), Windows

pgAdmin as GUI for administration

# PostGIS
##

Spatial extension for PostgreSQL

Support for spatial objects (geometry, geography, raster)

Spatial functions

Multi-dimensional spatial indexing

## PostGIS - Example

```
SELECT name, pop FROM cities 
WHERE pop < 300000  
AND ST_Area(cities.the_geom) < 400000000;
```

# 3D City Database Importer/Exporter

Front-end for 3D city database

Allows importing and exporting of CityGML data into/from 3DCityDB

Allows export in KML and COLLADA for visualization

Offers GUI and CLI

# 3DCityDB-Overview

![Source: [Kunde, 2014](http://slides.com/fxku/3d-city-database#/)](./pictures/3DCityDB_System.png)

# QGIS

Previously known as *Quantum GIS*

Open source Geographic Information System (GIS)

Integration of **PostGIS** and GRASS

Runs on Linux, Unix, MacOS, Windows, Android

Supports many vector, raster, and database formats and functionalities

Customizable via plugins (C++, Python)

# 3D City Model Berlin

550.000 buildings on about 890 sqkm

LOD2 building models with facade textures

Can be downloaded and used as part of Berlin's Open Data Initiative

Berlin 3D - [Download Portal](http://www.businesslocationcenter.de/en/downloadportal)


