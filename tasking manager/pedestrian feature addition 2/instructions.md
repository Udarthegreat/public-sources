---
draft: 0
complete: false
version: 0.9.0
---

# Miami sidewalk additions #2

The goal here is to complete the [first pass for pedestrians](/my%20working%20definitions/Pass%20system/readme.md) throughout this area, this is only a first pass though. Below [I](https://www.openstreetmap.org/user/Udarian) have left some general instructions for mapping, map to what ever level of detail you are comfortable mapping to, though I would like if by the end of validation the data is brought to a higher level of detail, for more information see the following [guidelines for validators](/tasking%20manager/pedestrian%20feature%20addition%201/instructions%20validators.md). As a general guideline try and map to [PWG the silver tier](https://wiki.openstreetmap.org/wiki/Foundation/Local_Chapters/United_States/Pedestrian_Working_Group/Schema) (and validators should ensure that the data is at minimum at silver tier by the end) though if you are newer feel free to map in what ever way works best for you. In essence this means that pedestrian features should be mapped as separate geometry.

## Imagery sources to be used

This area should be mapped using "Esri World Imagery" as the main aerial imagery source but you can check your work against other imagery. As a note the "Esri World Imagery" is mostly the same as the 2025 imagery from the county (from my understanding it was taken on the first few days of Jan 2025). The "Bing Maps Aerial" is a good source so you can still check against it, just know that there has been construction between the bing and esri so the bing may be out of date. There are some areas that have extremely high tree cover and thus can be complicated to map correctly, essentially requiring street side imagery to do correctly, in those areas the "Esri World Imagery" tends to be the best and what the roads are aligned to in those specific areas (otherwise they are done to bing aerial). The "Miami-Dade County Orthoimagery (Latest)" imagery is also decently good though it wasn't updated with the 2025 imagery for some reason (from what I can tell). The "Bing Streetside" imagery is another good source of info along with the Mapillary Traffic Signs and Map Features.

## Features

Please add all pedestrian features as separate geometry and as mentioned above try and map to the [PWG the silver tier](https://wiki.openstreetmap.org/wiki/Foundation/Local_Chapters/United_States/Pedestrian_Working_Group/Schema) for the pedestrian features. A few guidelines below:

 - sidewalks should be separate geometry
 - crossings should be separate geometry and try to ensure that they do not directly touch the centerline's if you can
 - each segment of a crossing should be its own way
 - if you feel comfortable doing so map refuge islands as separate geometry
 - please map access aisles as separate geometry
 - if a service or other road crosses a sidewalk please add `highway=crossing` on that vertex
 - if you come across a scenario were there is a sidewalk on either side of a road and it is fairly obvious that you could cross there add a `highway=footway` + `informal=yes` on either side of the road connecting to an unmarked crossings across the road (more detailed instructions about this in the validator instructions)
 - while I do not see the addition of kerb vertices as required for this project, if you do please add the following tags at minimum `barrier=kerb` + `kerb=*` + `tactile_paving=*`

If you are new to editing OpenStreetMap, [this tutorial](https://learnosm.org/en/beginner/id-editor/) will help you get started using the iD editor. It's particularly important to learn how to use the imagery offset adjustment in the "Background Settings" menu. 

One last Note here, if you initially mapped an area please refrain from validating areas you added so that we can have at least two pairs of eyes on any one area although if it eventually becomes obvious that this will not be possible feel free to do so, though only evaluate this request once the open tasks get close to complete. 

**Changeset comment**: #Miami-Dade-projects Adding and updating pedestrian features in Miami Dade County (2)

 - [ ] TODO: add `#osmus-tasks-###` to the before `#Miami-Dade-projects` in the changeset comment once the project on the tasking manager is created, where `###` is the number id of the project on the OSMUS tasking manager 
