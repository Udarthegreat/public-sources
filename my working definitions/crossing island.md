---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# What is a crossing island:

When there is a traffic island (`area:highway=traffic_island`) within a road with a path within it for pedestrians you have a crossing island, these area usually between two crossings. Sometimes these will be in-between two carriageways of a road, but not always as there are other cases where these will be found, for example separating a slip lane from general purpose lanes. crossing islands are tagged as `highway=footway` + `footway=traffic_island` as they are a type of [pedestrian infrastructure](/my%20working%20definitions/pedestrian.md) and play a unique role as compared to other types like [sidewalks](/my%20working%20definitions/sidewalk.md) and [crossings](/my%20working%20definitions/crossing.md). Sometimes when mapping to a lower level of detail (like the PWG bronze tier) you can chose to not map these as geometry and just tag them on crossings, but once you are mapping at a level of detail where the bounds of crossings at the end of the road area are respected (aka crossings not touching the sidewalk centerline, aka the PWG sliver tier) these should be mapped separately and no longer tagged on crossings as at that point they physically exist within the pedestrian network so the need to tag them goes away. 

