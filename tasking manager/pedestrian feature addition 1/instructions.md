---
draft: 6
complete: false
version: 1.0.0
---

# Miami sidewalk additions #1

The goal here is to complete a first pass through adding the pedestrian features throughout this area. Below, I have described what tagging and geometry conventions I would like to see present by the end of this pass, and what [I](https://www.openstreetmap.org/user/Udarian) feel can be left for the future, though if in your own contributions you'd like to add other tags, feel free, as they will have to be added eventually. There will be future passes to do, but those are for the future since it's better to have something rather than nothing, and adding values like lit=* can be done relatively easily once the ways are already mapped.
For context, this area is as large as it is as half of this area was the area in which road alignments were completed within at the end of last year (2024) and the  other half was mostly complete by the midway point of July 2025, and this is just the size it ended up being. From this point forward, I am going to describe what tags I am looking for and what I am not, along with some of the geometry conventions I would like followed, if at all possible. If you are new to mapping pedestrian features, feel free to go to a lower level of detail, but by the time these are validated, they should be mapped as described below. 

## mapping details

Please use "Bing Maps Aerial" imagery for tracing as it is the most up to date in this part of Miami Dade at the moment. There are some areas that have extremely high tree cover and thus can be complicated to map correctly, essentially requiring street side imagery to do correctly, in those areas the "Esri World Imagery" tends to be the best and the roads are aligned to it. The "Miami-Dade County Orthoimagery" (Latest) imagery is also decently good and as mentioned above will likely be updating some point in August so at that point check it before committing to ensure that nothing has changed. The "Bing Streetside" imagery is another good source of info along with the Mapillary Traffic Signs and Map Features.



## Footways:

### Sidewalks:

Below are the tags I would like to see on all sidewalks in this area by the end of this:

 - `highway=footway` + `footway=sidewalk`
 - `surface=*` (as a note, it’s usually “concrete” in this area) 

Next, I will go over the geometry rules I generally follow myself when mapping sidewalks; this is something I care about a lot, and admittedly, I can be rather picky on this front.

First of all, there should be a single way forming the main loop around the centerline of a block's sidewalk that wraps around the inside of a block. Aka, please do not split the sidewalk loop at points like intersections, as was discussed in a talk at the following [SOTMUS 2024](https://openstreetmap.us/events/state-of-the-map-us/2024/standardizing-osm-pedestrian-networks/) talk. Second, sidewalks (and more generally footways) should not touch road centerlines with the exception of crossings (`footway=crossing`) and links (`footway=link`), so When a sidewalk approaches a road and ends the sidewalk way should only go up were the sidewalk physically ends and connect the sidewalk to the road by adding a `footway=link` from the sidewalk to the road centerline.

### Crossings:

The following are the tags I would like to see for crossing ways:

 - `highway=footway` + `footway=crossing` 
 - `crossing=unmarked`, `uncontrolled`, and `traffic_signals`, please do not use `crossing=marked` or other variants.
 - `crossing:markings=*` (note, if there are markings, please try and find a value more specific than `yes` since you usually can either from aerial or street side imagery)
 - `surface=*` on way crossings, not the vertices

Please DO NOT add `crossing:signals=*` (as I feel the tag is duplicate) if at all possible (aka unless your editor is auto adding these like Rapid does, please don't add them of your own volition, please).

As for geometry, a crossing way (mapped separately) should never touch the main centerline way of the block's sidewalk and should always be connected to the main centerline way with a way tagged as a sidewalk (for now). There is an exception, though these are somewhat rare, where the sidewalk doesn't go all the way around a block and ends at a sidewalk, or other similar situations were the sidewalk ends at the edge of the road area; in these cases the main centerline way can touch the crossing way. This is because crossings definitionally only exist within the area that the road takes up and not other pedestrian features like sidewalks, and therefore the way representing them shouldn't extend into the area taken up by the sidewalk. For now, I would prefer if the connectors between the sidewalk centerline and crossings or other pedestrian features are tagged as `footway=sidewalk`, though if the community comes to a consensus on this matter and the wiki and other authoritative sources on tagging change, I will gladly change things here.

Any shared vertices of a crossing way with some kind of road (residential, primary, etc) must have, at minimum, the following tags: `highway=crossing`, `crossing=*`, `crossing:markings=*`, again, as mentioned above, please do not add the `crossing:signals=*` tag to these either.
Also, please add `highway=crossing` tags at spots where service roads (and rarely residential and minor/unclassified) (even for driveways) meet sidewalks or other footways, aka please don't leave these without tags, but do not add any other tags to these. Along those lines, when a sidewalk intersects with a service road, please do not split a crossing way out; the sidewalk should continue across as one way.

### Refuge islands:

Traffic islands should be mapped as separate geometry and tagged as follows:

 - `highway=footway` + `footway=traffic_island`
 - `surface=*`
NOTE: These should be mapped as geometry and not tagged on the crossing ways and vertices at all.

### Access aisles:

The preferred tags here are as follows:

 - `highway=footway` + `footway=access_aisle`
 - `access_aisle:markings=*` (same as `crossing:markings=*` for values)
 - `surface=*`

As for geometry, the access aisle should only be mapped within the area that is marked, aka if it does not go to the center line, add a footway=link to connect from where the access aisle ends to the road centerline.

### General footpaths:

This really varies since there are quite a few cases where other `footway=*` values aren’t applicable but `highway=footway` is still warranted, I have included some examples where I have thoughts below. The first is the case were, at some road intersections there are sidewalk centerlines on either side of the road but on one or both of the sides of the road there is no sidewalk connecting to the road, here there should be a `highway=footway` + `informal=yes` way connecting to the road and a crossing between the two sides of the road. I have attached an image of the above below:

![iD screen shot of what todo](/informal%20footway%20how%20to.png)

### Kerbs:

The following are the minimum tags I would like to see on any existing and newly added kerbs (as vertices), though I do not consider adding these as part of this task, so only add if you feel it necessary:

 - `barrier=kerb`
 - `kerb=*` please do not add kerb tags to crossings.
 - `tactile_paving=yes` or `no` (if it's `no`, still add the tag), please do not add tactile paving tags to crossings.

As for geometry, kerb vertices shouldn't be on sidewalk centerline's at all. generally, if a kerb vertex is not at the end of a way you likely need to split the crossing way. 

For any other tags, for any of the above, add at your own leisure unless I specifically mentioned not adding the tag.

One last Note here, if you initially mapped an area please refrain from validating areas you added so that we can have at least two pairs of eyes on any one area although if it eventually becomes obvious that this will not be possible feel free to do so, though only evaluate this request once the open tasks get close to complete. 
