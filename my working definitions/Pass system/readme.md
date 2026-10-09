---
draft: 1
version: 0.1.0
note: very much WIP at the moment
---

# Intro:

This folder contains a formalization of the system and standards I map to, I reference to this in multiple other places so I have written it down here for reference. When mapping, I use a pass system, where each pass contains increasing levels of detail and information density. The following are the criteria I have for each pass at the moment, these will likely change a bit over time if my opinions change, though I will try to minimize the changes once this document reaches version `1.0.0`. It is important to note that my standards have changed over time so some areas aren't mapped exactly to what is outlined below but I am working on upgrading all of those at the moment. In this document when I say “all” that means that every way/node that can have that tag for that category of features should have that tag for the pass to be considered complete. “When applicable” means the same thing as “all” except that these tags have a value that doesn’t make sense to tag, for example it doesn’t really make sense to tag `noexit=no` so these tags should be tagged in every case where it makes sense to tag them. “Start on” means that you should tag these tags in the pass but you do not have to be thorough in finding them, for example in pass 1 if you see a speed limit sign along a road on street level imagery when looking for something else that is required add the tag but it is ok if some road segments do not have their max-speed tagged by the end of the pass. For the moment, I have written all of them in this document but plan to split this up soon:

## roads:

### roads pass 1:

 - Geometry:
     - TODO: add description (if there are multiple carriageways they should be separate ways, even if what is separating them is a small speed island). ~
 - Vertices:
     - All stop signs should be mapped (that are on street side imagery available in the area) tagged as `highway=stop` with a direction and always mapped at the stop lines, even when all directions have a stop.
     - All yield signs should be mapped (that are on street side imagery available in the area) tagged as `highway=give_way` with a direction and always mapped at the stop lines, even when all directions have a yield.
     - All traffic signals should be mapped (that are on street side imagery available in the area) tagged as `highway=traffic_signals` with a direction and always mapped at the stop lines, even when all directions have a traffic signal. `traffic_signals=*` should also be tagged. 
	- All turning circles (`highway=turning_circle`) and turning loops (`highway=turning_loop`) are mapped along with `turning_circle=*` for turning circles.
	- When applicable `noexit`'s should be mapped with the exception of service roads, though start on service roads.
	- Start on `traffic_calming=*`.
	- ~
 - Tagging:
     - All `surface=*` should be mapped on roads except service roads by the end of the pass.
	- All `lanes=*` should be mapped on roads except service roads by the end of the pass. 
	- Start on `hazard=*`.
	- Start on `maxspeed=*` (and other speed/weight etc. limits).
	- All names that you can find should be mapped (from TIGER and other sources) when available, though they aren't always available.
	- All bridges and tunnels should be mapped in the area.
	- All roundabouts should be mapped as separate geometry and have the `junction=roundabout` tag along with `junction=circular` for circular junctions where traffic entering does not yield to traffic inside. 
	- When applicable all access tags should be mapped (like for private facilities).
	- ~ 

The above applies to all roads except parking lots tho get started on those in this pass. This first pass requires decent imagery and street-level imagery, though for the street-level imagery you only really need to use it at intersections and do not need to go down every road with it being thorough. 

### roads pass 2:

 - Geometry:
     - All stop lines should be mapped (`road_marking=stop_line`) along with `stroke=*`.
	- ~
 - Vertices/Nodes:
     - All `noexit`'s should be mapped, including service roads.
	- All `traffic_calming=*`should be mapped.
	- All traffic signs (`traffic_sign=*`) should be mapped as separate nodes including the MUTCD code (for the US).
	- ~
 - Tagging:
	- All directional lanes should be tagged (`lanes:backward`, `forward` and `both_ways`) should be mapped.
	- All `turn:lanes` should be mapped, including directional `turn:lanes`.
	- All other lane-based tagging should be mapped (like `change:lanes` and `bicycle:lanes` etc.). 
	- All roads should have whether or not they are lit (`lit=*`) tagged (from streetside imagery and/or survey).
	- All `hazard=*` is mapped.
	- All `maxspeed=*` is mapped (this includes `and maxspeed:advisory=*` and conditional speed limits) (and other speed/weight etc. limits).
	- Most roads should have a `type=street` relation that links them to other surrounding infra that is associated with the particular road (basically all roads that have sidewalks along them should have a street relation including the road and its associated sidewalks and other elements).
	- Where applicable service roads should have service=* tagged (this does not mean adding random `service=driveway`'s just because you feel like it)
	- Where applicable `shoulder=*` should be tagged
	- ~ 

In pass 2 all service roads should be mapped to the same level of detail as other roads are in pass 1 along with all other tags this pass introduces. 

### roads pass 3:

I am likely not going to go fully to this level of detail any time soon in Miami-Dade County with the exception of a few specific sites.

 - Geometry:
     - Full area-based mapping of the road, using `area:highway=*`.
	- All road markings, outside of just stop lines (like lane markings etc.).
	- ~
 - Vertices/Nodes:
	- ~
 - Tagging:
	- ~ 

## pedestrian:

### pedestrian pass 1:

 - Geometry:
	- All sidewalks must be mapped separately.
	- Crossings should be mapped separately and must not touch the sidewalk centerline unless the sidewalk just ends (aka crossing should only be mapped in the road area).
	- All crossing islands should be mapped separately.
	- Start on access aisles should be mapped as geometry.
	- All steps (staircases) must be mapped separately.
	- All other footways should be mapped as geometry with the exception of `footway=residential`
	- When sidewalks end at a road area without a crossing a `footway=link` way with `surface=*` should be mapped as a separate way from where the footway area ends to the road centerline.
	- ~
 - Vertices/Nodes:
	- For all crossing vertices a minimum of `highway=crossing` should be tagged (including intersections with minor service roads like single-family driveways as they are potential conflict points between vehicles and pedestrians), except for `footway=link` as those ways do not cross a road, but rather simply connect to the centerline. 
	- All barriers (like bollards) should be mapped.
	- ~
 - Tagging:
	- The following `footway=*` values are the values that should be mapped:
		- All `footway=sidewalk`.
		- All `footway=crossing`.
		- All `footway=link`.
		- All `footway=traffic_island`.
		- Start on `footway=path` (its ok if some of these are just tagged as `highway=footway` with no other tags).
		- Start on `footway=access_aisle`.
		- Start on `footway=residential`.
	- All `surface=*` tags should be mapped.
	- When applicable access tags should be mapped (like for private facilities)
	- For crossings all of the following tags should be tagged:
		- For crossings on roads `crossing=*` should always be tagged, either as `unmarked`, `uncontrolled` or `traffic_signals` (there are some rare cases where it can be `no` but I haven't come across any in Miami-Dade as of yet).
		- All `crossing:markings=*` should be mapped and if there are markings the values should be something more specific than `yes` (with a few rare exceptions).
		- All `crossing:signals=*`(`yes` or `no`) should be mapped.
		- Start on `crossing:signed=*`, though ideally most are mapped by the end of the pass.
		- Start on  `traffic_signals:countdown=yes`. 
		- Start on tagging RRFB's at crossings these being be tagged as `flashing_lights=*` + `crossing:signed=*` + `crossing_ref=rrfb`, most of these should be mapped by the first pass but not necessarily all. 
		- All `crossing:island=*` should be tagged.
		- Start on `crossing:continuous=yes`.
	- For all access aisles `access_aisle:markings=*` tags should be tagged.
	- All road-based sidewalk tagging should be in place (though this is done at the end once all the sidewalk ways along a road have been mapped separately).
	- For staircase all of the following should be tagged:
		- All `incline=*` (`up` or `down` not a percent) should be tagged.
		- Start on `handrail=*`.
		- Start on `step_count=*`.
		- Where applicable `level=*` should be tagged. 
		- Where applicable `conveying=*`.
	- ~ 

### pedestrian pass 2:

 - Geometry:
	- Wherever there is a ramp split out a way and add `incline-*`, and more generally wherever there is an incline or of note, split it out and add the tag.
	- ~
 - Vertices/Nodes:
	- All kerb vertices (`barrier=kerb`) should be mapped along with `kerb=*` and `tactile_paving=*`.
	- ~
 - Tagging:
	- For footways all of the following values should be tagged:
		- All `footway=path` should be mapped/tagged.
		- All `footway=residential` should be mapped/tagged.
		- All `footway=access_aisle`.
	- For crossings all of the following tags should be mapped:
		- All `crossing:signed=*` should be mapped/tagged.
		- All `traffic_signals:countdown=yes`should be mapped/tagged (on signalized crossings).
		- All RRFB's should be found and tagged as `flashing_lights=*` + `crossing:signed=*` + `crossing_ref=rrfb`.
		- Where applicable `crossing:continuous=yes` should be mapped/tagged.
		- All `button_operated=*` should be tagged (on signalized crossings).
		- All `flashing_lights=*` should be tagged.
	- All tactile paving (including primitive) should be tagged.
	- ALL `lit=*` should be tagged.
	- For staircases all of the following tags should be tagged:
		- All  `step_count=*` should be tagged.
		- All `handrail=*`.
		- All `tactile_paving=*` (`yes`, `no`, `primitive`).
		- All `ramp=*`.
		- Where applicable `flat_steps=*`.
		- ALl `handrail=*` should be tagged.
	- ~

### pedestrian pass 3:

 - Geometry:
	- ~
 - Vertices/Nodes:
	- ~
 - Tagging:
	- For staircases all of the following should be tagged:
		- All `handrail:(left|right|center)=*` should be tagged.
		- All `platform_lift=*` should be tagged.
		- All staircases `tactile_writing=*`
		- All staircases `ramp:stroller`, `:bicycle`, `:wheelchair` (along with other access tags) `=*`
		- All staircases `step:contrast=*`
		- All staircases `step:height=*` and `step:length=*` should be mapped on stair cases. 
		- All staircases `width=*` should be tagged.
		- All staircases `tactile_paving:colour=*` should be tagged.
		- All staircases `incline:across=*` should be tagged.
	- For crossings all of the following should be tagged:
		- All `traffic_signals:arrow=*`.
		- All `traffic_signals:vibration=*`.
		- All `traffic_signals:sound=*`.
		- All `traffic_signals:minimap=*`.
		- Where applicable `crossing:flags=yes`.
	- ~

### pedestrian pass 4: 

 - Geometry:
	- Full area-based mapping of pedestrian infra, using `area:highway=footway`.
	- ~
 - Vertices/Nodes:
	- ~
 - Tagging:
	- ~

 - [ ] TODO: add passes for bike infra
 - [ ] TODO: add passes for buildings and indoor
 - [ ] TODO: add passes for POI's (businesses)
 - [ ] TODO: consider having separate passes for public transit infra (like busways)
