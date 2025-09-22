[out:json];
(
	nwr["website"~"^(https?://.*[?&]utm_(source|medium|campaign|term|content)=)"]({{bbox}});
	nwr["source"~"^(https?://.*[?&]utm_(source|medium|campaign|term|content)=)"]({{bbox}});
);
out body;
>;
out skel qt;