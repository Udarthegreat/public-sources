---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# What is a crossing link:

As a sidewalks area ends where it meets the road area, its centerline should to, in cases where the sidewalk goes up to the road and just ends where there isn't a sidewalk on the other end, as to ensure a routable pedestrian network, a way tagged as `footway=link` should be added from the sidewalk centerline to the road centerline. This also applies when there is a lowered or flush kerb on a pedestrian feature implying a connection to the road but no pedestrian features on the other side. links should have `surface=*` set as this is important information and can be confusing for people to survey in tools like StreetComplete. When mapping to a lower level of detail (like the PWG Bronze tier) these would do not need to be added in most cases, but once you are accurately representing what is where (taking into account the areas that the centerline's represent) they should be split out as outlined above. links can also represent a link between any two pedestrian features where there isn't a good way to cleanly connect them but there is a clear connection. 

