---
draft: 0
complete: true
version: 1.0.0
---

# Miami sidewalk additions #1

The goal here is to complete a first pass through adding the pedestrian features throughout this area. Below, I have described what tagging and geometry conventions I would like to see present by the end of this pass, and what [I](https://www.openstreetmap.org/user/Udarian) feel can be left for the future, though if in your own contributions you'd like to add other tags, feel free, as they will have to be added eventually. There will be future passes to do, but those are for the future since it's better to have something rather than nothing, and adding values like lit=* can be done relatively easily once the ways are already mapped.

Below are my guidelines for how I would like the pedestrian features in the area to be mapped by the end of validation but if you are newer to mapping pedestrian features feel free to map to a lower level of detail, though I would challenge you to try and go to higher level of detail at least once as to improve as a mapper.

## Imagery sources to be used

Please use "Bing Maps Aerial" imagery for tracing as it is the most up to date in this part of Miami Dade County at the moment. There are some areas that have extremely high tree cover and thus can be complicated to map correctly, essentially requiring street side imagery to do correctly, in those areas the "Esri World Imagery" tends to be the best and what the roads are aligned to it. The "Miami-Dade County Orthoimagery (Latest)" imagery is also decently good and it will likely be updating some point in mid August so at that point check it before committing to ensure that nothing has changed in the task you are mapping. The "Bing Streetside" imagery is another good source of info along with the Mapillary Traffic Signs and Map Features.

## Footways:

### Sidewalks:

Below are the tags I would like to see on all sidewalks in this area by the end of this:

 - `highway=footway` + `footway=sidewalk`
 - `surface=*` (as a note, it’s usually “concrete” in this area) 

It would be preferable if sidewalk tagging on roads is not done as I find it significantly easier to add all of that at once and will once the project is complete.

As for geometry there should be a single way forming the main loop around the centerline of a block's sidewalk that wraps around the inside of a block, in essence, please do not follow the the following talk from [SOTMUS 2024](https://openstreetmap.us/events/state-of-the-map-us/2024/standardizing-osm-pedestrian-networks/). Second, sidewalks (and more generally footways) should not touch road centerlines, so when a sidewalk goes directly up to a road, please split and add a `footway=link`, the exception here is `footway=crossing`.

### Crossings:

The following are the tags I would like to see for crossing ways:

 - `highway=footway` + `footway=crossing` 
 - `crossing=unmarked`, `uncontrolled`, and `traffic_signals`, please do not use `crossing=marked` or other variants.
 - `crossing:markings=*` (note, if there are markings, please try and find a value more specific than `yes`)
 - `surface=*` on way crossings, not the vertices

Please DO NOT add `crossing:signals=*` (as I feel the tag is [duplicate](https://hackmd.io/@Udarian/BJLgxU1HJg)) if at all possible (aka unless your editor is auto adding these like Rapid does, please don't add them of your own volition, please).

As for geometry, a crossing way (mapped separately) should only touch the sidewalk center line if the sidewalk doesn't not go completely around the block and ends at a road area with a crossing, in every other case there should be a sidewalk way (for now) connecting the centerline to the crossing.

crossings mapped as vertices should have the following tags:

 - `highway=crossing`
 - `crossing=*`
 - `crossing:markings=*` (note, if there are markings, please try and find a value more specific than `yes`)

As mentioned above, please do not add the `crossing:signals=*` tag to these either. When a sidewalk meets a road (including mapped driveways) there should be a `highway=crossing` with no other tags. Along those lines, when a sidewalk intersects with a service road, please do not split a crossing way out; the sidewalk should continue across as one way.

### Refuge islands:

Traffic islands should be mapped as separate geometry and tagged as follows:

 - `highway=footway` + `footway=traffic_island`
 - `surface=*`
NOTE: These should be mapped as geometry and not tagged on the crossing ways and vertices at all.

### Access aisles:

The preferred tags here are as follows:

 - `highway=footway` + `footway=access_aisle`
 - `access_aisle:markings=*` (same as `crossing:markings=*` for values) (this is a more detailed tag so it can be left for validation)
 - `surface=*`

As for geometry, the access aisle should only be mapped within the area that is marked, aka if the painted area does not go to the center line, add a `footway=link` to connect from where the access aisle ends to the road centerline.

### General footpaths:

This really varies since there are quite a few cases where other `footway=*` values aren’t applicable but `highway=footway` is still warranted, I have included some examples where I have thoughts below. The first is the case were, at some road intersections there are sidewalk centerline's on either side of the road but on one or both of the sides of the road there is no sidewalk connecting to the road, here there should be a `highway=footway` + `informal=yes` way connecting to the road and a crossing between the two sides of the road. I have attached an image of the above below:

![iD screen shot of what todo](/tasking%20manager/pedestrian%20feature%20addition%201/informal%20footway%20how%20to.png)

### Kerbs:

The following are the minimum tags I would like to see on any existing and newly added kerbs (as vertices), though I do not consider adding these as part of this task, so only add if you feel it necessary:

 - `barrier=kerb`
 - `kerb=*` please do not add kerb tags to crossings.
 - `tactile_paving=yes` or `no` (if it's `no`, still add the tag), please do not add tactile paving tags to crossings.

Generally, if a kerb vertex is not at the end of a way you likely need to split the crossing way. 

For any other tags, for any of the above, add at your own leisure unless I specifically mentioned not adding the tag.

One last Note here, if you initially mapped an area please refrain from validating areas you added so that we can have at least two pairs of eyes on any one area although if it eventually becomes obvious that this will not be possible feel free to do so, though only evaluate this request once the open tasks get close to complete. 
