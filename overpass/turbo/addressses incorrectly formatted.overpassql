/*
Finds all the incorrectly formatted addresses in the viewport or nodes that have some but not all address tags (will only work in the US as I only intend to use this in Miami Dade County)
*/

[out:json][timeout:25];
// gather results
(
	nwr["addr:housenumber" ~ "^[0-9]+$"]["addr:street"]["addr:city"]["addr:state"]["addr:postcode" !~ "^[0-9]{5}(-[0-9]{4})?$"]({{bbox}});
	nwr["addr:housenumber" ~ "^[0-9]+$"]["addr:street"]["addr:city"]["addr:state" !~ ".+"]["addr:postcode"]({{bbox}});
	nwr["addr:housenumber" ~ "^[0-9]+$"]["addr:street"]["addr:city" !~ ".+"]["addr:state"]["addr:postcode"]({{bbox}});
	nwr["addr:housenumber" ~ "^[0-9]+$"]["addr:street" !~ ".+"]["addr:city"]["addr:state"]["addr:postcode"]({{bbox}});
	nwr["addr:housenumber" !~ "^[0-9]+$"]["addr:street"]["addr:city"]["addr:state"]["addr:postcode"]({{bbox}});
);
// print results
out geom;