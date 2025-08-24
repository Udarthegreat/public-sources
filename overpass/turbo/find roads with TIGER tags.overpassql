// find all roads with tiger data, uses regex.

[out:json][timeout:25];
(
	way[~"^tiger:([A-Z,a-z,_])*"~"."][!"place"][!"boundary"][!"border_type"]({{bbox}});
);
out body;
>;
out skel qt;
