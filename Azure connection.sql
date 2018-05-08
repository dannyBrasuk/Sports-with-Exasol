
/*
--Add a firewall rule for Exasol 


*/


CREATE CONNECTION conn_azure_sql 
TO '

select  venue_name from 
(
import from jdbc at conn_azure_sql
statement 'select venue_name from sports.venue'

);


/*
IMPORT INTO venue
(
	VENUE_NAME, 
	COUNTRY_CODE, 
	LANDMARK_CATEGORY, 
	LOCATION_LABEL, 
	FULL_ADDRESS, 
	MAP_CENTROID_LONGITUDE, 
	MAP_CENTROID_LATITUDE, 
	MAP_ACCURACY_CATAGORY, 
	MAP_COORDINATE_SYSTEM_CATEGORY, 
	IS_BOUNDARY_MAP_ON_FILE, 
	IS_SUBDIVISION_PARENT_SAME_AS_ENCLOSING_SUBDIVISION, 
	SUBDIVISION_PARENT_CODE_MUNICIPALITY, 
	PARENT_OF_MUNICIPALITY, 
	PARENT_SUBDIVISION_CATEGORY, 
	CAPACITY, 
	CAPACITY_METRIC_CATEGORY, 
	YEAR_OPENED, 
	VENTILATION_CATEGORY, 
	LANDMARK_NOTES, 
	PHOTO_FILENAME, 
	IS_EMERGCENY_CONTRACT_RECORDED 
)
 FROM JDBC DRIVER='MSSQL' 
AT conn_azure_sql TABLE sports.venue;

*/