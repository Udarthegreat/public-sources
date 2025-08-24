/*
finds ways that have maxspeeds mapped
*/
[out:json][timeout:25];
// gather results
(
	nwr["maxspeed"]({{bbox}});
	nwr["maxspeed:advisory"]({{bbox}});
	nwr["minspeed"]({{bbox}});
);
// print results
out body;

{{style:

way[maxspeed]
	{ color:#05fc3a; width:4; opacity:1; }
	way[maxspeed:advisory]
	{ color:#05fc3a; width:4; opacity:1; }

}}
>;
out skel qt;
