---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# What is a sidewalk:

A sidewalk is a pedestrian navigable path that runs roughly parallel to a round and thus allows pedestrians to follow roughly the same alignment as the road to get to destinations that the road leads to. As sidewalks represent a different mode of transportation then roads and are usually separated from the road with at minimum a kerb or some other barrier (like a guard rail) (though there is often grass and thus a larger amount of separation), sidewalks form a different area from the road and other modes of transit so they should be mapped with their own centerline way separate from the road network. It is important to note that while sidewalks make up a decent percentage of the pedestrian network in US cities there are other types of pedestrian features that should be mapped as themselves when they exist, for example, as sidewalks definitionally are the area they take up they should not be mapped outside of that area, like for example within the road area. 

When, due to the quality of aerial imagery and/or local community preference you are unable to map pedestrian features separately tagging them on road ways using `sidewalk:(left|right|both)=*` is recommended as something is better than nothing. Tagging sidewalks on roads is also recommended once pedestrian features are mapped separately using `sidewalk:(left|right|both)=separate` as doing so can improve the speed of some routers and knowing this information is still useful to less advanced routers that do not use separate pedestrian features or do not do pedestrian routing but still need to take pedestrians into account inn certain circumstances. When tagging sidewalks on roads you are considering if a pedestrian could navigate along that segment of road on a dedicated pedestrian feature (area), this means that you should take crossings, traffic islands and other types of pedestrian features when  determining which road segments get which tags. If pedestrian features are already separately mapped in an area and the sidewalk along a road between two blocks does not go all the way to the end of the block do not split roads part way through a block as you cannot walk along a dedicated pedestrian feature along the whole stretch of the road so at this level of abstraction that sidewalk is not usable to the pedestrian when projected on the road, and thus does not exist in practice at this level of abstraction. ~

~
