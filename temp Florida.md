# Florida


**Florida** is a state in [United States](https://wiki.openstreetmap.org/wiki/United_States), [North America](https://wiki.openstreetmap.org/wiki/North_America) at latitude 27°46′48.00″ North, longitude 83°46′12.00″ West.

## Status

All of the [TIGER](https://wiki.openstreetmap.org/wiki/TIGER) (US Census) data has been loaded, but needs lots of cleanup. Some areas have already been updated. The quality of the original TIGER varies by county. Urban areas have seen more cleanup and new mapping activity than rural areas. Large swaths of rural areas are virtually untouched.

The overall mapping community in Florida is small, but is seeing signs of growth. A small number of mappers have done a large amount of work in Florida, including a good number of remote arm-chair mappers. The Tampa / St Pete area probably has the largest concentration of active mappers and has a growing community of local mappers. Other counties have one or two prolific local mappers who are making major contributions.

## Publicly Available Data

Note that, due to the _[Microdecisions, Inc. v. Skinner](https://en.wikipedia.org/wiki/Microdecisions,_Inc._v._Skinner)_ court decision, [all public records in Florida are **public domain** and not legally copyrightable](https://en.wikipedia.org/wiki/Copyright_status_of_work_by_the_Florida_government).This includes records produced by any agent of the Florida government, such as counties, cities, districts, regions, and any other public offices or bodies established by law. Thus, you can use any public GIS data you find on official county or city websites or through public records requests (as long as they are cities or counties in Florida, as other states may have different laws) as a source for OSM data. Also, all federally produced data is public domain as well, such as the [USGS topo maps](http://store.usgs.gov/b2c_usgs/usgs/maplocator/%28xcm=r3standardpitrex_prd&layout=6_1_61_48&uiarea=2&ctype=areadetails&carea=%24root%29/.do).

### Data Sources

Below is an incomplete list of potential data sources; please add any that you find:

- [**Florida Geographic Data Library**](http://www.fgdl.org/metadataexplorer/explorer.jsp) (state-wide database of public GIS data maintained by the University of Florida with over 400 layers; may be slightly outdated sometimes so be careful)
- [Broward County GIS](https://bcgis.broward.org/)
- [Collier County GIS Data](http://www.colliergov.net/your-government/divisions-f-r/information-technology/gis-services)
- [Hendry County GIS Department](http://www.hendryfla.net/g_i_s.php)
- [Hendry County Property Appraiser Map](http://www.hendryprop.com/gis/search_f.asp)
- [Lee County GIS Data](http://www.leegov.com/gis) (includes parks, trails, fire stations, developments, voting districts, zip codes, LIDAR, and public transport data)
- [Lee County Property Appraiser Map](http://gissvr.leepa.org/GeoView2/) (includes parcels, addresses, photos (high definition and recent aerial photos, oblique photos, and ground photos), building information)
- [Miami Dade Open Data Hub](https://gis-mdc.opendata.arcgis.com/), this is the main site for official data from the county and includes meany different data sets, everything from addresses and buildings to roads and meany others. In 2017 to 2018 there was an import of addresses and buildings from here, but in some areas these have become somewhat stale and the building alignments aren't always the best. 
- [Miami Dade County property appraiser search](https://apps.miamidadepa.gov/PropertySearch/#/?address=), this has a map that shows the lots of all properties in the county, lots have address, some building (not always that useful) and zoning (thus land use) information along with several others. 
- [Orange County Interactive Mapping](https://www.orangecountyfl.net/PlanningDevelopment/InteractiveMapping.aspx)
- [Orange County GIS Data Hub](https://ocgis-datahub-ocfl.hub.arcgis.com/)

## Route Relations

A log of route relations for the state of Florida can be found [here](https://wiki.openstreetmap.org/wiki/Florida/State_and_County_Road_Relations).

## Tagging ideas for Florida

References for more general information about what to use to tag each kind of road. [United States roads tagging](https://wiki.openstreetmap.org/wiki/United_States_roads_tagging), [Editing Standards and Conventions](https://wiki.openstreetmap.org/wiki/Editing_Standards_and_Conventions), [highway tag usage](https://wiki.openstreetmap.org/wiki/Key:highway) and [Interstate Highways Relations](https://wiki.openstreetmap.org/wiki/Interstate_Highways_Relations).

Since there are multiple governments involved in building/maintaining roads, and there doesn't seem to be usable correlation of what they call a road to the types used in OpenStreetMap, road types need to be done by judgment. The following guidelines are for urban areas, and are loosened for rural and tightened in dense urban to avoid making everything secondary or larger in an area.

### highway=motorway

Grade separated from other roads with access via on/off ramps with merge lanes. A divided road of at least 2 lanes each direction (the only exception being FL 570 near Lakeland). No signal lights or intersections. All "Interstates" or other **divided and limited access roads** called "Freeway", "Highway", "Turnpike", or "Expressway". Speed limits generally 55MPH or higher.

### highway=trunk

Typically the end of state motorways or US motorways. _Very_ few intersections. Speed limits usually 40 MPH or higher.

### highway=primary

Always US highways, also important State highways that serve, for example, as a link from an Interstate to a US highway or town. Speed limits usually 40 MPH or higher. Mainly roads that connect two or more cities.

### highway=secondary

Most county roads that run through urban areas/connect larger towns/connect 3 or more towns regardless of size, or other major roads in urban areas. If the county road parallels a state/US road (not an Interstate), the county road is tertiary. Also can mean less busy state roads that connect lesser towns, or in urban areas are not extremely important nor the best route to its destination, qualify as secondary. Speed limits generally 35 MPH or higher.

### highway=tertiary

Since most towns and villages are connected primarily by state roads and US roads, tertiary roads usually refer to the less busy county roads, and main connector roads through neighborhoods. Speed limits generally 25 MPH or higher. It also can refer to roads without a `[ref](https://wiki.openstreetmap.org/wiki/Key:ref)=*` that connect towns, in addition to the criteria listed above. Unlike other major routes, this type of road is seen as acceptable to end with no other exit (i.e., dead end).

### highway=unclassified

Not necessarily used in the interconnecting grid network, but more commonly used as a road that would have the residential tag, but with no houses. Speed limits generally 35 MPH or lower.

### highway=residential

Primarily subdivision roads with housing on one or both sides. Not normally used for through traffic. Speed limits generally 30 MPH or lower.

### highway=living_street

Some mappers use this tag for paved roads that have a speed limit of 15 MPH or lower (or no speed limit), especially roads that end in a 'cul de sac' and might have a Children at Play sign. No roads should stem off of a living street.

### place=locality

No population. Many hamlets with no population tags are actually place=locality, unless the area is an unincorporated community. Try Wikipedia for that info. If none is found, use place=locality. Examples: Italia, FL

### place=isolated_dwelling

Population 1-3. Examples: Sisco, FL

### place=hamlet

Population lower than 1,000, but higher than 3. Examples: Branford, FL; Fort White, FL

### place=village

Population 1,000-10,000, but can certainly be relaxed if the population is above 9,500. Examples: Malabar, FL; Indialantic, FL

### place=town

Population 10,000-50,000 Examples: Fort Pierce, FL; Cocoa, FL

### place=city

Population 50,000+ Examples: Orlando, FL; Tampa, FL; Palm Bay, FL; Jacksonville, FL; Miami, FL; Melbourne, FL

## Counties

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Florida_counties.jpg/400px-Florida_counties.jpg)

If you are doing some editing in one or more Florida counties, please add your comments here. These are some current observations as of April 2011.

  

Florida county TIGER statuses

| County | Note | 
| ---- | ----  |
| Alachua | Original TIGER was okay; but not great. Not much work has been done. UF campus could use a lot of help. Come on Gator fans! | 
| Baker |  | 
| Bay | Original TIGER pretty good. A few rough spots. | 
| Bradford |  | 
| Brevard | Original TIGER was okay. A lot of work has gone into re-aligning streets; adding water features; and in some cases more detail such as schools areas; buildings; parks; golf courses and more but mostly in central to south Brevard. Still more to do. | 
| Broward | Original TIGER was pretty bad. A lot of work has gone into re-aligning streets; adding water features; and in some cases more detail such as schools areas; buildings; parks; golf courses and more. Still more to do. | 
| Calhoun | Original TIGER pretty bad. Not to the level of junk; but a lot of re-aligning to do. | 
| Charlotte |  | 
| Citrus | Original TIGER was pretty bad. Some scattered street re-alignment; but a long way to go. Citrus has some large areas of residential street networks built in the 1960s that are still today not fully populated. | 
| Clay |  | 
| Collier |  | 
| Columbia | Original TIGER was pretty bad. Major street re-alignment in Lake City. | 
| Desoto |  | 
| Dixie | Original TIGER had displacement issues. Major roads were on-target. Cleaned up almost all of the streets; and converted the backwoods trails from 'residential' to 'track'. Added many abandoned rail spurs from the logging period 1900-1930. Conversion of traditional street names to 911 names in progress. Added POI for most businesses in Cross City and Old Town. | 
| Duval | Original TIGER decent. Still work to do. | 
| Escambia | Original TIGER decent. Still work to do. | 
| Flagler |  | 
| Franklin | Original TIGER was pretty bad. Major street re-alignment along the coast; especially Apalachicola; Carrabelle; St George Island; and Alligator Point. | 
| Gadsden |  | 
| Gilchrist | Original TIGER was passable for a beginning. Added a few recent subdivisions that were missing. Added POI for most businesses in Trenton and Bell. | 
| Glades |  | 
| Gulf |  | 
| Hamilton |  | 
| Hardee |  | 
| Hendry |  | 
| Hernando |  | 
| Highlands | Original TIGER pretty good. | 
| Hillsborough |  | 
| Holmes | Original TIGER pretty good. | 
| Indian River | Original TIGER street alignment not good. A lot of work has gone into re-aligning streets. | 
| Jackson | Original TIGER street alignment not good in urban areas. Rural areas seem OK; but not great. | 
| Jefferson | Original TIGER street alignment not good. Some cleanup of streets in Monticello. | 
| Lafayette |  | 
| Lake |  | 
| Lee | Original TIGER decent and mostly cleaned up. Road alignment and naming is quite good, however highway classifications still need some work. | 
| Leon | Original TIGER decent. Major street realignment in a few parts of Tallahassee. | 
| Levy | Original TIGER pretty bad. Cedar Key mostly cleaned up. Cleaned up TIGER for Chiefland; Fanning Springs and points in between. Added many POI for businesses in both. | 
| Liberty | Original TIGER pretty bad. Not to the level of junk; but a lot of re-aligning to do. | 
| Madison |  | 
| Manatee |  | 
| Marion |  | 
| Martin | Original TIGER pretty good. Some work cleaning it up. | 
| Miami-Dade | Original TIGER decent. Some work has been done; but many areas could use street re-alignment. 20k+ ways unedited. | 
| Monroe | Original TIGER status unknown. Major street re-alignment throughout the Keys. | 
| Nassau | Original TIGER pretty bad. Not to the level of junk; but a lot of re-aligning to do. | 
| Okaloosa |  | 
| Okeechobee | Original TIGER pretty good. | 
| Orange | Original TIGER status unknown. Major street realignment and additional features added across the county. Disney area looks awesome. | 
| Osceola | Original TIGER is good in some places and bad in others. Most streets appear to be un-reviewed. I am working through the Saint Cloud and Narcoossee areas. [Valerietheblonde](https://wiki.openstreetmap.org/wiki/User:Valerietheblonde) ([talk](https://wiki.openstreetmap.org/w/index.php?title=User_talk:Valerietheblonde&action=edit&redlink=1)) 03:17, 4 April 2016 (UTC) | 
| Palm Beach | Original TIGER pretty good. | 
| Pasco | Original TIGER has poor alignment. A lot of realigning done; more to go. | 
| Pinellas |  | 
| Polk | Original TIGER was decent. Some strange issues in Polk; including braided ways (mostly fixed) and over-noded ways that do not follow straight lines or have proper curvature (Many of these left to fix). | 
| Putnam | Original TIGER has poor alignment. A lot of realigning done; more to go. | 
| Santa Rosa |  | 
| Sarasota |  | 
| Seminole | Original TIGER has poor alignment. Some realigning done; lots more to go. | 
| St Johns | Original TIGER pretty good. | 
| St Lucie | Original TIGER street alignment not good. A lot of work has gone into re-aligning streets. | 
| Sumter |  | 
| Suwannee | Original TIGER street alignment not good. Major street re-alignment in Live Oak. | 
| Taylor |  | 
| Union |  | 
| Volusia | Original TIGER not good alignment. Some areas have been realigned; but much more to go. | 
| Wakulla | Original TIGER street alignment not good. A lot of work to do. | 
| Walton |  | 
| Washington | Original TIGER pretty good. A few rough spots. | 

## Cities

|                                                               |                                                                                                                     | %age complete |        |
|---------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------|--------|
| ZIP                                                           | City                                                                                                                | Tracks        | Mapped | Labeled | Notes                                                                                                                                                                                                                               |
| 32901, 32902, 32904, 32912, 32934, 32935, 32936, 32940, 32941 | [Melbourne, Florida](https://wiki.openstreetmap.org/wiki/Melbourne,_Florida)                                        |               | 45%?   |         | 32940 is mapped 100%. Other areas not as much. Working on 32934 &amp; 32935 right now. All roads not in TIGER data should be present. -- [Panther37](https://wiki.openstreetmap.org/wiki/User:Panther37) 16:45, 23 March 2011 (UTC) |
|                                                               | [Orlando, Florida](https://wiki.openstreetmap.org/wiki/Orlando,_Florida)                                            |               |        |         | TIGER data needs to be cleaned up, newer data is significantly shifted and wrong scale from Yahoo data. Spot checks of Yahoo data has been correctly placed.                                                                        |
| 32135, 32142, 32164, 32174                                    | [Palm Coast, Florida](https://wiki.openstreetmap.org/wiki/Palm_Coast,_Florida)                                      |               | 90%    |         |                                                                                                                                                                                                                                     |
|                                                               | [St. Petersburg, Florida](https://wiki.openstreetmap.org/wiki/St._Petersburg,_Florida)                              |               |        |         |                                                                                                                                                                                                                                     |
|                                                               | [Tampa, Florida](https://wiki.openstreetmap.org/wiki/Tampa,_Florida)                                                |               |        |         |                                                                                                                                                                                                                                     |
| 32940, 32955                                                  | [Viera, Florida](https://wiki.openstreetmap.org/wiki/Viera,_Florida)                                                |               | 100%   |         | TIGER import was missing about half of the streets. All cleaned up now -- [Panther37](https://wiki.openstreetmap.org/wiki/User:Panther37) 02:20, 14 March 2011 (UTC)                                                                |
| 32950                                                         | [Malabar, Florida](https://wiki.openstreetmap.org/w/index.php?title=Malabar,_Florida&amp;action=edit&amp;redlink=1) |               | 100%   |         | Streets reäligned, woods added. -- [Floridaeditor](https://wiki.openstreetmap.org/wiki/User:Floridaeditor) ([talk](https://wiki.openstreetmap.org/wiki/User_talk:Floridaeditor)) 13:47, 21 May 2020 (UTC)                           |


## Hydrography

Appears that some NHD imports have been done in scattered areas. A good bit of hand tracing water features in scattered areas. A coordinated effort is needed to add the remaining lakes and rivers. In addition, many miles of coastline need re-alignment/improvement.

## Land Cover and Land Use

There was an import of land use and land cover with the data that was imported being produced by the five Water Management Districts in Florid, the import was completed Jan 4 2024. For more information see [Florida_Land_Cover_Import](https://wiki.openstreetmap.org/wiki/Florida_Land_Cover_Import). 

## Railroads

See [Florida/Railroads](https://wiki.openstreetmap.org/wiki/Florida/Railroads) for a very early wiki seed.

## Administrative Boundaries

Some areas of improvement utilizing high accuracy municipal sources for reference. Much more to go.

## Trails

### National Trails

|  |  |  |  |
|----|----|----|----|
| Name | OSM ID | Notes |  |
| [Florida National Scenic Trail](https://wiki.openstreetmap.org/wiki/Florida_National_Scenic_Trail "Florida National Scenic Trail") | 1163455[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/1163455" rel="nofollow">1163455</a> | _The Florida Trail 1163455[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/1163455" rel="nofollow">1163455</a> has been mapped in the Central Florida area with a bit of work in the panhandle. Much remains to be done North and Southwest of the Ocala National Forest and South of Three Lakes WMA. You can compare to the [official webmap](https://www.arcgis.com/home/webmap/viewer.html?webmap=b4f2fedc4c5848b1a221e21400938a02&amp;extent=-84.0915,26.6815,-78.7192,29.8689) to see where to begin and download the KMZ to get cracking._ |  |
| [East Coast Greenway](https://wiki.openstreetmap.org/w/index.php?title=East_Coast_Greenway&action=edit&redlink=1 "East Coast Greenway (page does not exist)") | 1774795[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/1774795" rel="nofollow">1774795</a> |  |  |

### Regional/State Trails

|  |  |  |
|----|----|----|
| Name | OSM ID | Notes |
| [Florida Coast-to-Coast Trail](https://wiki.openstreetmap.org/w/index.php?title=Florida_Coast-to-Coast_Trail&action=edit&redlink=1 "Florida Coast-to-Coast Trail (page does not exist)") |  | not started |
| [Van Fleet State Trail](https://wiki.openstreetmap.org/w/index.php?title=Van_Fleet_State_Trail&action=edit&redlink=1 "Van Fleet State Trail (page does not exist)") | 2113722[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/2113722" rel="nofollow">2113722</a> |  |
| [Shingle Creek Regional Trail](https://wiki.openstreetmap.org/w/index.php?title=Shingle_Creek_Regional_Trail&action=edit&redlink=1 "Shingle Creek Regional Trail (page does not exist)") | 1828311[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/1828311" rel="nofollow">1828311</a> |  |
| [Palatka-to-Saint-Augustine State Trail](https://wiki.openstreetmap.org/w/index.php?title=Palatka-to-Saint-Augustine_State_Trail&action=edit&redlink=1 "Palatka-to-Saint-Augustine State Trail (page does not exist)") | 2117349[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/2117349" rel="nofollow">2117349</a> |  |
| [Palatka-Lake Butler State Trail](https://wiki.openstreetmap.org/w/index.php?title=Palatka-Lake_Butler_State_Trail&action=edit&redlink=1 "Palatka-Lake Butler State Trail (page does not exist)") | 1802107[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/1802107" rel="nofollow">1802107</a> |  |
| [Gainesville-Hawthorne State Trail](https://wiki.openstreetmap.org/w/index.php?title=Gainesville-Hawthorne_State_Trail&action=edit&redlink=1 "Gainesville-Hawthorne State Trail (page does not exist)") | 2117060[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/2117060" rel="nofollow">2117060</a> |  |
| [Nature Coast State Trail](https://wiki.openstreetmap.org/w/index.php?title=Nature_Coast_State_Trail&action=edit&redlink=1 "Nature Coast State Trail (page does not exist)") | 2117070[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/2117070" rel="nofollow">2117070</a> |  |
| [Tallahassee-Saint Marks Historic Railroad State Trail](https://wiki.openstreetmap.org/w/index.php?title=Tallahassee-Saint_Marks_Historic_Railroad_State_Trail&action=edit&redlink=1 "Tallahassee-Saint Marks Historic Railroad State Trail (page does not exist)") | 2117079[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/2117079" rel="nofollow">2117079</a> |  |

### Local Trails

|  |  |  |  | 
| --- | --- | --- | --- |
| Name | OSM ID | County | Notes |
| West Orange Trail | 1804419 [1804419](https://osm.org/relation/1804419) | Orange |  |
| Chain of Lakes Trail | 2117055 [2117055](https://osm.org/relation/2117055) | Polk |  |
| Fort Fraser Trail | 1822301 [1822301](https://osm.org/relation/1822301) | Polk |  |
| Old Fort King Trail | 2128308 [2128308](https://osm.org/relationy/2128308) | Hillsborough |  |
| South Lake Trail | 1804418 [1804418](https://osm.org/relation/1804418) | Lake |  |
| Orlando Urban Trail | 2094208 [2094208](https://osm.org/relation/2094208) | Orange |  |
| Cross Seminole Trail | 1804413 [1804413](https://osm.org/relation/1804413) | Seminole |  |
| Seminole Wekiva Trail | 1804417 [1804417](https://osm.org/relation/1804417) | Seminole |  |
| Depot Avenue Rails-to-Trails Bike Path | 2117056 [2117056](https://osm.org/relation/2117056) | Alachua |  |
| Suwannee River Greenway at Branford | 2117077 [2117077](https://osm.org/relation/2117077) | Suwannee |  |
| O'Leno to Ichetucknee Trail | 2117072 [2117072](https://osm.org/relation/2117072) | Columbia |  |
| Capital Circle Trail | 2117892 [2117892](https://osm.org/relation/2117892) | Leon |  |
| The M Path | 1819956 [1819956](https://www.openstreetmap.org/relation/1819956) | Miami Dade |  |
| Old Cutler Trail | 1819957 [1819957](https://www.openstreetmap.org/relation/1819957) | Miami Dade |  |
| Commodore Trail | 1819955 [1819955](https://www.openstreetmap.org/relation/1819955) | Miami Dade |  |
| Rickenbacker Trail | 1820322 [1820322](https://www.openstreetmap.org/relation/1820322) | Miami Dade |  |
| Black Creek Trail | 1819954 [1819954](https://www.openstreetmap.org/relation/1819954) | Miami Dade |  |

## Protected Areas / Parks / Nature Reserves

Protected areas are mapped areas with specific protections established by a governing body, such as the federal or local government. Protected areas are typically mapped with the [protected_area](https://wiki.openstreetmap.org/wiki/Tag:boundary%3Dprotected_area) schema, as well as land use and amenity tags, such as park and nature reserves.

### National Areas

Several national protected areas, e.g. national parks, have been mapped. A full review and catalog does not exist.

#### National Parks

There are [22 national park polygons](http://overpass-turbo.eu/s/f8s) [in Florida](https://gist.github.com/anonymous/ebbb4da74e0b7cfd91b9) on OpenStreetMap as of March 2016. According the National Park Service, there are only 11 national parks in Florida, thus some of these may need to be combined into multipolygons.

|  |  |  |  |
|----|----|----|----|
| Park | Park Type | OSM ID | Notes |
| Big Cypress | National Preserve | 80516168[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/80516168" rel="nofollow">80516168</a> |  |
| Biscayne | National Park | 160032399[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/160032399" rel="nofollow">160032399</a> |  |
| Canaveral | National Seashore | 1201571[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/1201571" rel="nofollow">1201571</a> | _Note on the Map, however the Merritt Island NWR may encompass parts of it._ |
| Castillo De San Marcos | National Monument | 142083319[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/142083319" rel="nofollow">142083319</a> |  |
| De Soto | National Memorial | 116594187[](https://wiki.openstreetmap.org/wiki/Way "way") <a href="https://osm.org/way/116594187" rel="nofollow">116594187</a> |  |
| Dry Tortugas | National Park | 4437721[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/4437721" rel="nofollow">4437721</a> |  |
| Everglades | National Park | 2163707[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/2163707" rel="nofollow">2163707</a> |  |
| Fort Caroline | National Memorial | 358696045[](https://wiki.openstreetmap.org/wiki/Node "node") <a href="https://osm.org/node/358696045" rel="nofollow">358696045</a> | _Needs mapping_ |
| Fort Matanzas | National Monument | 2000675[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/2000675" rel="nofollow">2000675</a> |  |
| Gulf Islands | National Seashore | 6068104[](https://wiki.openstreetmap.org/wiki/Relation "relation") <a href="https://osm.org/relation/6068104" rel="nofollow">6068104</a> | Recently connected all parts |
| Gullah/Geechee | Cultural Heritage Corridor |  | Not NPS operated |
| Timucuan | Ecological and Historic Preserve |  | Does not appear to be mapped at all |

### State Areas

### Local Areas

Everglades Agricultural Area boundary is dated and needs replacement & updating. It was originally mapped by NE2 a few years back using levees as boundaries. [A new proposal is underway to update this boundary](https://wiki.openstreetmap.org/wiki/Florida/Everglades_Agricultural_Area).

## Golf Courses

Scattered mapping of various quality.

## Tourist Attractions

Scattered mapping of various quality. Florida's #1 economic engine - show me the attractions! The Disney World resort is of high quality.

## Lodging and Dining

Small amounts of scattered mapping.

## Street Addresses

In most of the state addresses are virtually non-existent but some counties and areas have seen additions over the years through imports (as an example Miami dade had an [import](https://wiki.openstreetmap.org/wiki/Miami-Dade_County_Address_Import) a while back) and from data available from Esri through Rapid. 

## Power Network

Many developments have been made to the power network recently, especially in South Florida.

## See also

- [WikiProject_United_States](https://wiki.openstreetmap.org/wiki/WikiProject_United_States)
- [FL Bus Stops](https://wiki.openstreetmap.org/wiki/FL_Bus_Stops)
