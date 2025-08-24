// find all roads that don't have surface or lanes tagged (uses regex)

[out:json][timeout:25];
(
	way["highway"~"\w^|motorway|trunk|primary|secondary|tertiary|unclassified|residential|$\w"][!"surface"][!"lanes"]({{bbox}});
);
out body;
>;
out skel qt;
