---
draft: 0
version: 0.1.0
note: very much WIP at the moment
---

# Intro:

This folder contains a formalization of the system and standards I map to, I reference to this in multiple other places so I have written it down here for reference. When mapping, I use a pass system, where each pass contains increasing levels of detail and information density. The following are the criteria I have for each pass at the moment, these will likely change a bit over time if my opinions change, though I will try to minimize the changes once this document reaches version `1.0.0`. It is important to note that my standards have changed over time so some areas aren't mapped exactly to what is outlined below but I am working on upgrading all of those at the moment. For the moment, I have written all of them in this document but plan to split this up soon:

## roads pass 1:

 - Geometry:
     - TODO (if there are multiple carriageways they should be separate ways, even if what is separating them is a small speed island). ~
 - Vertices:
     - All stop signs should be mapped (that are on street side imagery available in the area) tagged as `highway=stop` with a direction and always mapped at the stop lines, even when all directions have a stop.
     - All yield signs should be mapped (that are on street side imagery available in the area) tagged as `highway=give_way` with a direction and always mapped at the stop lines, even when all directions have a yield.
     - All traffic signals should be mapped (that are on street side imagery available in the area) tagged as `highway=traffic_signals` with a direction and always mapped at the stop lines, even when all directions have a traffic signal. `traffic_signals=*` should also be tagged. 
	- All turning circles (`highway=turning_circle`) and turning loops (`highway=turning_loop`) are mapped along with `turning_circle=*` for turning circles.
	- All `noexit`'s should be mapped with the exception of service roads, though as many of those as possible should be mapped.
	- Most traffic calming features should be mapped, though not all need to be, basically if you see one add it, but if you miss some it isn't a big deal.
	- ~
 - Tagging:
     - `surface=*` should be fully mapped on all roads except service roads by the end of the pass.
	- `lanes=*` should be fully mapped on all roads except service roads by the end of the pass. 
	- While `hazard=*` does not need to be fully mapped by the end of the first pass, work should be started on it.
	- As with `hazard=*`, `maxspeed=*` (and other speed/weight etc. limits) is not fully required for pass 1 but should be started when noticed on street side imagery and/or survey.
	- All names that you can find should be mapped (from TIGER and other sources) when available, though they aren't always available.
	- All bridges and tunnels should be mapped in the area.
	- All roundabouts should be mapped as separate geometry and have the `junction=roundabout` tag along with `junction=circular` for circular junctions where traffic entering does not yield to traffic inside. 
	- When applicable access tags should be mapped (like for private facilities).
	- ~ 

## roads pass 2:

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
	- `hazard=*` is fully mapped.
	- `maxspeed=*` is fully mapped (and other speed/weight etc. limits).
	- Most roads should have a `type=street` relation that links them to other surrounding infra that is associated with the particular road (basically all roads that have sidewalks along them should have a street relation including the road and its associated sidewalks and other elements).
	- ~ 

## roads pass 3:

I am likely not going to go fully to this level of detail any time soon in Miami-Dade County with the exception of a few specific sites.

 - Geometry:
     - Full area-based mapping of the road, using `area:highway=*`.
	- All road markings, outside of just stop lines (like lane markings etc.).
	- ~
 - Vertices/Nodes:
	- ~
 - Tagging:
	- ~ 

## pedestrian pass 1:

 - Geometry:
	- All sidewalks must be mapped separately.
	- Crossings should be mapped separately and must not touch the sidewalk centerline unless the sidewalk just ends (aka crossing should only be mapped in the road area).
	- All crossing islands should be mapped separately.
	- All access aisles should be mapped as geometry.
	- All steps (staircases) must be mapped separately.
	- All other footways should be mapped as geometry with the exception of `footway=residential`
	- When sidewalks end at a road area without a crossing a `footway=link` way with `surface=*` should be mapped as a separate way from where the footway area ends to the road centerline.
	- ~
 - Vertices/Nodes:
	- For all crossing vertices a minimum of `highway=crossing` should be tagged (including intersections with minor service roads like single-family driveways as they are potential conflict points between vehicles and pedestrians), except for footway=link as those ways do not cross a road, but rather simply connect to the centerline. 
	- All barriers (like bollards) should be mapped.
	- ~
 - Tagging:
	- All `footway=*` tags should be mapped except for `footway=residential`, though work on the latter can be started in this pass. 
	- All `surface=*` tags should be mapped.
	- When applicable access tags should be mapped (like for private facilities)
	- For crossings on roads `crossing=*` should always be tagged, either as `unmarked`, `uncontrolled` or `traffic_signals` (there are some rare cases where it can be `no` but I haven't come across any in Miami-Dade as of yet).
	- For crossings all `crossing:markings=*` should be mapped and if there are markings the values should be something more specific than `yes` (with a few rare exceptions).
	- When you notice that a crossing is signed tag it as `crossing:signed=*` though it isn't required that all such tags be mapped by the end of the first pass, though ideally most are.
	- Along the same lines as with `crossing:signed=*` most `traffic_signals:countdown=yes` should be mapped by the end of the first pass. 
	- When a RRFB is noticed at a crossing it should be tagged as `flashing_lights=*` + `crossing:signed=*` + `crossing_ref=rrfb`, most of these should be mapped by the first pass but not necessarily all. 
	- For all access aisles `access_aisle:markings=*` tags should be tagged.
	- Most `crossing:continuous=*` should be tagged.
	- Where possible map/tag `footway=path` (its ok if some of these are just tagged as `highway=footway` with no other tags).
	- All road-based sidewalk tagging should be in place (though this is done at the end once the ways have been mapped separately).
	- For all staircases `incline=*` should be tagged.
	- For all stair cases `handrail=*` should be tagged.
	- Where applicable `level=*` should be tagged. 
	- ~ 

## pedestrian pass 2:

 - Geometry:
	- Wherever there is a ramp split out a way and add `incline-*`, and more generally wherever there is an incline or of note, split it out and add the tag.
	- For all crossings mapped `barrier=kerb` + `kerb=*` should be mapped on vertices at the end of crossings.
	- ~
 - Vertices/Nodes:
	- All kerb vertices should be mapped along with `kerb=*`
	- ~
 - Tagging:
	- All `footway=path` should be mapped/tagged.
	- All `footway=residential` should be mapped/tagged.
	- All `crossing:signed=*` should be mapped/tagged.
	- All `traffic_signals:countdown=yes`should be mapped/tagged.
	- All RRFB's should be found and tagged as `flashing_lights=*` + `crossing:signed=*` + `crossing_ref=rrfb`.
	- All `crossing:continuous=*` should be mapped/tagged.
	- All tactile paving (including primitive) should be tagged.
	- ALL `lit=*` should be tagged.
	- For all signalized crossings `button_operated=*` should be tagged.
	- All `flashing_lights=*` should be tagged.
	- On staircases `step_count=*` should be tagged.
	- All ramps that have a handrail should be tagged with `handrail=*`.
	- ~

## pedestrian pass 3:

 - Geometry:
	- ~
 - Vertices/Nodes:
	- ~
 - Tagging:
	- For staircases all `handrail:(left|right|center)=*` should be tagged.
	- For staircases all `ramp=*` should be tagged.
	- For staircases all `platform_lift=*` should be tagged.
	- Where applicable `flat_steps=*` should be tagged on staircases. 
	- All `step:height=*` and `step:length=*` should be mapped on stair cases. 
	- All `width=*` should be tagged.
	- All `tactile_paving:colour=*` should be tagged.
	- All `incline:across=*` should be tagged.
	- ~

## pedestrian pass 4:

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