create view planet_osm_line_2008 as select * from planet_osm_line where start_date_year = 2008;
create view planet_osm_point_2008 as select * from planet_osm_point where start_date_year = 2008;
create view planet_osm_polygon_2008 as select * from planet_osm_polygon where start_date_year = 2008;
create view planet_osm_roads_2008 as select * from planet_osm_roads where start_date_year = 2008;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_line_2008', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_line_2008 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_point_2008', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_point_2008 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_polygon_2008', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_polygon_2008 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_roads_2008', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_roads_2008 LIMIT 1;

create view planet_osm_line_2009 as select * from planet_osm_line where start_date_year = 2009;
create view planet_osm_point_2009 as select * from planet_osm_point where start_date_year = 2009;
create view planet_osm_polygon_2009 as select * from planet_osm_polygon where start_date_year = 2009;
create view planet_osm_roads_2009 as select * from planet_osm_roads where start_date_year = 2009;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_line_2009', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_line_2009 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_point_2009', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_point_2009 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_polygon_2009', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_polygon_2009 LIMIT 1;

insert into geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type") 
select '', 'public', 'planet_osm_roads_2009', 'way', ST_CoordDim(way), ST_SRID(way), GeometryType(way)
from planet_osm_roads_2009 LIMIT 1;
