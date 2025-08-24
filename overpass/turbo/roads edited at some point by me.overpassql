/*
ways (roads) edited at some point by me
*/
[out:json][timeout:25];

(way["highway"~"^(motorway|motorway_link|trunk|trunk_link|primary|secondary|tertiary|unclassified|residential)$"]({{bbox}});) -> .AllRoads;

way.AllRoads(user_touched:"Udarian")({{bbox}});

out geom;
