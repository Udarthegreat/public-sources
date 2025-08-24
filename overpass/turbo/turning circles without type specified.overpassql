/*
turning circles without turning circle type specified
*/
[out:json][timeout:25];
// gather results
nwr["highway"="turning_circle"][!"turning_circle"]({{bbox}});
// print results
out geom;
