---
draft: 0
complete: false
version: 0.1.0
---

# Miami Dade County Progress

## files

 - ~

## tag descriptions

 - `road`, refers to roads; if alone it means that they are fully mapped to my standards
 - `signs` refers to signs (both tagged as `highway=*` and as `traffic_sign=*`)
 - `sidewalk`, wether or not sidewalks are mapped; if alone it means that they are fully mapped to my standards
 - `footway`, refers to non sidewalk, non crossing pedestrian features
 - `crossings`, refers to crossings; if alone it means that they are fully mapped to my standards
 - `building`, refers to buildings; if alone it means that they are fully mapped to my standards
 - `public_transit`, wether or not public transit features are mapped
 - `kerb`, refers to kerbs (`barrier=kerb` `kerb=*`); unless otherwise mentioned it means that the features are mapped to my standards
 - `rail`, refers to rails features, as a note, from what I can tell these tend to be mapped pretty well in Miami Dade County but I don't know enough about them so I cant really say.
 - `business`, refers to businesses, either mapped as POI's other indoor mapping
 - `construction`, refers to whether or not there is ongoing construction in this area (that I know of)
 - `footway` refers to footways in general, if `sidewalk` is also added this refers to footways outside of that, `crossing` etc, if only `sidewalk`, `crossing` etc. are mentioned and this isn't it implies that they to are properly mapped
 - `:in`, this means that the type of features were added at one point but not that they have since been checked, for example th features were added by an import but I have not checked them thoroughly so I am unsure of the quality of the data.
 - `:updated`, this means that I have gone through and fixed all of the features of this type that I have found and ensured that they are mapped to my standards.
 - `:stop` refers to stop signs (at stop line)
 - `:yield` refers to yield signs (at yield line)
 - `:traffic_light` refers to traffic signals being mapped (with `traffic_signals=*` being added) (at stop line)
 - `:traffic`, if this is added that it means that I am referring to nodes added to roads as vertices (for example a stop sign mapped at the stop line as opposed to the physical stop sign)
 - `:vertex` refers to objects mapped as vertices
 - `:way` refers to objects mapped as ways
 - `:basic` means that I have somewhat mapped this (usually this means that I mapped it to my standards but I am aware there is more I can, and should map) but have mapped this to a certain level uniformly throughout the area
 - `:partial` this is partially done, usually this means that I have added this type of feature in a few places throughout the area but not with any kind of uniformity
 - `:part` means that the parts of something are mapped, in essence this is only used in tandem with buildings to refer to building parts
 - `indoor` refers to the mapping of indoor features
 - `:public` means that only the public ones of th type are mapped, this is the default (and implied when not present) and likely is only going to be added when there is a significant enough amount of private features of that type that are unmapped due to lack of surveying and imagery so the features are unmapped in the private area
 - `:minor` refers to minor ways of the type that do not add much like a small footway connecting from a sidewalk to a building a few feet away
 - if there is a date in the value of a key value pair that means that that was when it was completed by or when I currently plan to have features of that type mapped in that area by
 - ~
