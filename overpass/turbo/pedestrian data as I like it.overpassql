/*
looks for all pedestrian navigation ways (all features in future likely) that are tagged to my liking.
TODO: add indoor corridors.
TODO: add color to normal footways.
TODO: add support for footway=link and color separately.
TODO: better colors.
TODO: add colors to bike paths (and bike and foot paths as separate colors).
TODO: differentiate between cycleways mapped separately and those just tagged on roads.
TODO: crossings as vertexes.
TODO: add kerb=*, tactile_paving=*, and crossing:island=* as tags that should not be on crossing ways.
TODO: add access aisles including access_aisle:markings=* tag
TODO: add crossing:signed to crossings
*/
[out:json][timeout:25];
(
	//sidewalks tagged correctly
	way["footway"="sidewalk"]["surface"~"^asphalt|paving_stones|concrete$"]({{bbox}});
	// properly tagged footpaths, if colored it applies the color to the sidewalks as well so it doesn't get a color for now. I will likely need two or more sets I just couldn't figure out how to style individual parts of a set differently.
	way["highway"="footway"]["footway"!="sidewalk"][!"crossing"]({{bbox}});
	//uncontrolled crossings that are tagged correctly 
	way["crossing"="uncontrolled"]["surface"~"^asphalt|paving_stones|concrete$"]["crossing:markings"!="yes"]["crossing:markings"!="no"]({{bbox}});
	//unmarked crossings that are tagged correctly
	way["crossing"="unmarked"]["surface"~"^asphalt|paving_stones|concrete$"]["crossing:markings"="no"]({{bbox}});
	//crossings with traffic signals that are tagged correctly
	way["crossing"="traffic_signals"]["surface"~"^asphalt|paving_stones|concrete$"]["crossing:markings"!="yes"]["crossing:markings"!="no"]({{bbox}});
	//bicycle and foot paths are tagged correctly
	way["bicycle"="designated"]["foot"="designated"]["surface"]({{bbox}});
	//steps tagged correctly
	way["highway"="steps"]["incline"]({{bbox}});
);

out body;

{{style:
	way[footway=sidewalk]
	{ color:#00ff11; width:4; opacity:1; }
	way[footway=access_aisle]
	{ color:#00ff40; width:4; opacity:1; }
	way[footway=traffic_island]
	{ color:#37fc68; width:4; opacity:1; }
	way[highway=steps]
	{ color:#00cc0e; width:4; opacity:1; }
	way[crossing=uncontrolled]
	{ color:#1db43b; width:4; opacity:1; }
	way[crossing=traffic_signals]
	{ color:#1db40b; width:4; opacity:1; }
	way[crossing=unmarked]
	{ color:#0e7a00; width:4; opacity:1; }
}}

>;
out skel qt;
