---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# basic definition:

Pedestrian infrastructure can take several forms, way center lines and connectors describing the pedestrian network and point features that add extra information to the network representing features that pedestrians may interact with as they navigate through the pedestrian infrastructure. This page mainly deals with way and area representations of the infrastructure built for pedestrians. Generally pedestrian infrastructure is infrastructure that has been built for humans to get from some point A to some other point B. When I talk about navigating through pedestrian infra I am not only talking about walking, assuming the infrastructure has been built in such a way where it is possible, this would include wheel chairs, walking aids and other methods of getting around used by low mobility users and other such cases (in the US this means that the infra is ADA compliant). Generally pedestrian infra gets tagged in OSM with `highway=footway` + `footway=*`.

There are several different types of pedestrian infrastructure, some of which are listed below:

 - [sidewalks](/my%20working%20definitions/sidewalk.md)
 - [crossings](/my%20working%20definitions/crossing.md)
 - [crossing islands](/my%20working%20definitions/crossing%20island.md)
 - [access aisles](/my%20working%20definitions/access%20aisles.md)
 - [links](/my%20working%20definitions/link.md)s
 - [stairs](/my%20working%20definitions/stairs.md)
 - [foot path](/my%20working%20definitions/foot%20path.md)
 - ~

It is important to note that pedestrian data can also not be of any of the above and just be a plain old footway, just a path connecting two areas with nothing else special to it, aka it is not necessary to have a `footway=*` tag on a footway. Sometimes other modes of transit are allowed on a pedestrian way but usually these will be made with pedestrians at top of mind, for example sidewalks are usually designed and built with pedestrians in mind, but sometimes bikes will be allowed to use sidewalks by state or local laws. ~
