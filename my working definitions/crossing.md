---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# What is a crossing:

A pedestrian crossing is located at the intersection of a pedestrian transportation way and a transportation way of some other type. As OSM already has separate tagging for rail intersections these don’t get tagged with `crossing=*` due to exiting conventions. While pedestrian transportation ways can have direct intersection with water transportation ways, for the water way to be good for water based transport it would necessarily be to deep for humans to walk through and would likely need to swim, so while this may be useful to tag it would likely be tagged with existing waterway tagging. All other water transport and pedestrian intersections that I can think of would be bridges (or similar structures) so would not share a vertex. While OSM has tags for transport ways outside of [roads](/my%20working%20definitions/road.md), paths, [pedestrian infra](/my%20working%20definitions/pedestrian.md) and bike infra, those are mapped significantly less so we can ignore them for now.

## Footway - footway:

Most footway - footway intersections would not be tagged unless there is some aspect of the particular intersection that is worth specifying, like if one of the footways is marked on the other. Otherwise they don’t get tagged as an intersection of two transportation ways of the same type aren’t tagged unless there is something worth tagging about it like a ref. 

## Footway - vehicle:

These are intersections between different modes of transport so should always be tagged because it is a possible intersection point (and thus a point with a potential for collisions/conflicts) and is potentially unsafe for pedestrians; this includes intersections between pedestrian and minor service roads like driveways. As to what the other tags used, it depends on how the crossing is set up, as mentioned in [some previous writing of mine](/opinions/why%20crossing%20should%20not%20be%20deprecated/my%20prefered%20way%20forward%20for%20pedestrian%20mapping.md) on the subject there are two main types of crossing, signalized and unsignalized, as depending on whether or not this is true changes significant aspects of the crossing making it the identifier value of the crossing tag. While markings are important and can make up a minor preference in routing to users and sometimes will effect the shape of the crossing to a minor extent they never have the same impact that signalized vs unsignalized can (and usually does) have; some countries and jurisdictions sometimes define a marking type to be associated with a specific type of crossing, but that doesn’t mean that the crossing marking changes anything about the crossing, it is just defined that way and is thus a meta tag. Signs can often be seen at intersections, especially at intersections of a specific shape (varies country by country), but it is usually the case that they are placed to alert drivers of the crossing and are added to an intersection for added safety and clarity and thus have no impact on the layout and navigation of the crossing and thus it does not change the fundamental type of crossing the crossing is, but is still important to tag (`crossing:signed=*`). And thus there are two values of `crossing=*` for pedestrians are `traffic_signals` (controlled(signalized)) and `uncontrolled` (unsignalized) because they are only two factors that decide the type of crossing. As signalization is what determines the type of crossing, we would only have `traffic_signals` and `uncontrolled` within the crossing tag as they would be defined specifically enough to remain and all other values (other then the implied `yes` and `no` as those values are implied to exist for essentially every tag, and must remain to deal with edge cases) should not be used, especially `crossing=marked` as that tag tells you nothing of signalization making it a bad tag. As a note, `crossing=unmarked` has to remain currently as it is an official tag and cannot as easily be ignored like `marked` can, but hopefully soon it will become normative to tag crossings without markings without `unmarked` and instead as `traffic_signals` or `uncontrolled`. 

## Footway - cycleway:

As with road intersections, those with bicycle infrastructure are intersections with a different mode of transit and thus should be tagged with at minimum a `highway=crossing`, though ideally other tags such as `crossing:markings=*`would also be included as to better describe the crossing. There are some minor edge cases where it would be ok to not have any tags on the intersection vertex like when you have a parallel footway and bike path that are physically separated but are made of the same material and there is an opening in the barrier between the two allowing pedestrians to cross the footway but there are no markings or any other indication of a crossing and both are of similar throughput, in cases such as that I don't see the harm in not having a highway=crossing vertex. Same if a cycleway ends in a sidewalk or other pedestrian feature as that isn't really a crossing perse, and thus doesn't need a tag. 

## cycleway - road

As with pedestrian crossings with roads, all should have at minimum `highway=crossing` as these are different modes of transit and it is thus a possible intersection point. obviously if other tags are applicable add them, but `highway=crossing` is the bare minimum here in my opinion. As for the other tags they would be similar to those of pedestrian crossings on roads. As with pedestrian crossings on roads for crossings mapped as ways use `highway=cycleway` + `cycleway=crossing` + `crossing=*` along with any other applicable tags. 

## Footway - path

These aren't always majority some other mode of transit then humans so may not always require `highway=crossing`. 

~
