
OHM Readme

The 2008 and 2009 styles are meant to be used with the OHM osm2pgsql style and tag transforms which use start_date and end_date which are postgresql date types and start_date_year and end_date_year which are number types


import the sql commands to create the two 2008 and 2009 views and add them to geometry columns

psql -d ohm_gis_hack -f views_2008_2009.sql

Compile the carto stylesheets

1. install carto locally

npm install carto

2. compile new project files for each: 

./node_modules/carto/bin/carto project2009.mml > mapnik_2009.xml
./node_modules/carto/bin/carto project2008.mml > mapnik_2008.xml

3. set up renderd configuation for each

[ohm_2008]
XML=/home/tim/ohm-carto2008/ohm-carto/mapnik.xml
URI=/ohm_2008/
DESCRIPTION=A custom ohm map showing those things in 2008
HOST=openhistoricalmap.org


[ohm_2009]
XML=/home/tim/ohm-carto2008/ohm-carto/mapnik_2009.xml
URI=/ohm_2009/
DESCRIPTION=A custom ohm map showing those things in 2009
HOST=openhistoricalmap.org



