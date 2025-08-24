/* 
finds the service roads that have the correct tagging, there will be a few that fall through the cracks but they won't be many in Miami dade 
TODO: drive through's.
TODO: eventually add drive way's.
TODO: 1 way roads with 1 (more lanes).
TODO: colorize the various categories.
TODO: it might be useful to also have the opposite of this so that I can select service roads that need tags.
*/

[out:json][timeout:25];
// gather results
(
	// query part for: “highway=service”
	way["highway"="service"]["service"="parking_aisle"]["lanes"="2"]["surface"="asphalt"]({{bbox}});
	way["highway"="service"]["lanes"="2"]["surface"="asphalt"]({{bbox}});
);
out geom;
