/*
finds all properly tagged kerbs
TODO: style nodes lacking either kerb=* or tactile_paving with the following color: "#fc0515"
*/
[out:json][timeout:25];
// gather results
(
	//kerbs with kerb value and tactile paving value
	node["barrier"="kerb"]["kerb"]["tactile_paving"]({{bbox}});
	//kerbs with kerb value but without tactile paving value
	node["barrier"="kerb"]["kerb"][!"tactile_paving"]({{bbox}});
	//kerbs without kerb value but has tactile paving value
	node["barrier"="kerb"][!"kerb"]["tactile_paving"]({{bbox}});
	//kerbs without either kerb or tactile paving value
	node["barrier"="kerb"]["!kerb"]["!tactile_paving"]({{bbox}});
)->._;
// print results
out body;

{{style:
	node[tactile_paving=yes]
	{ color:#00ff11; width:4; opacity:1; }
	node[tactile_paving=no]
	{ color:#131ff9; width:4; opacity:1; }
}}

>;
out skel qt;
