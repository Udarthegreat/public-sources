/*
returns all stop signs in the viewport
*/

[out:json][timeout:25];
// gather results
nwr["highway"="stop"]({{bbox}});
// print results
out geom;
