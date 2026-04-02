---
draft: 0
posted: false
version: 0.1.0
note: very much WIP at the moment
---

# basic definition:

As with [pedestrian infrastructure](/my%20working%20definitions/pedestrian.md), there are meany different types of pedestrian features, some being ways/areas and others nodes, but in this document we will be focusing on the representation of the infrastructure you actually cycle along (lanes, tracks etc.). For these purposes a cycleway is infrastructure that has been built for bikes to get from some point A to some other point B and that is primarily used by bikes. There is a wide variety of different bike infrastructure that can be found in the built environment, so there are meany different ways to represent that infra, these widely fall into two categories described below:

## Road based infrastructure:

While [roads](/my%20working%20definitions/road.md) are primarily built for vehicles sometimes a lane (or more) on the road will be designated for bikes, how these are designated varies from region to region but they are generally smaller in width than the general vehicles lanes, and usually have some kind of bike symbol painted and are sometimes filled with a single color like green. These will have crossings for where cars can pass over the lane in cases where bike lanes change the lanes they are between, or more generally when cars have to cross over them. These bike lane crossings are usually designated by dashed lane separator markings and the fill being dashed if painted. As these are within the road area and are not seperated from the main road area by any barriers they should be tagged on the main road centerline way as `cycleway:(left/right/both)=lane` when the lane is on the furthest right or left (or both) side of the road, when the lane is between multiple other lanes it is advisable to use lane based tagging to represent these. Sometimes bikes share the road or a lane with other traffic, in these cases use `cycleway:(left/right/both)=shared_lane` to tag these if the bikes share the whole road and lane based tagging if they only share a single lane.

Sometimes through bollards, kerbs or other separator/barrier a bike lane will be physically separated from the vehicle lanes forming a bike track. These may also have painted areas between the lane markings along with a bike symbol. These should be mapped as separate geometry and the road should be tagged as `cycleway:(left/right/both)=separate`. In an ideal world we would tag the separate geometry as `cycleway=track` but that is unsupported and actively removed through data fixing issues in iD so should not be done at the moment. 

## separate infrastructure:

In some cases bike will get their own infrastructure that is purpose built for them, like a path specifically built for that purpose (like a rail to trails path only for bikes) though often (at least in Florida) these will be bicycle and foot paths. For bike only infra it is tagged as `highway=cycleway`. When it is a cycle and foot path it should be tagged as `highway=cycleway` + `bicycle=designated` + `foot=designated` to indicate that the infra is for both pedestrians and cyclists. ~
