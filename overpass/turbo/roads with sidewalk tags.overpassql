/*
finds all roads that have proper sidewalk tagging on them. 
TODO: these should all be 3 different colors to make it more legible.
*/

[out:json][timeout:25];
// gather results
(
	nwr["sidewalk:both"="separate"]({{bbox}});
	nwr["sidewalk:right"="separate"]({{bbox}});
	nwr["sidewalk:left"="separate"]({{bbox}});
);
// print results
out geom;
