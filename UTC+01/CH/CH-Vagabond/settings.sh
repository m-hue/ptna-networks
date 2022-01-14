#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="CH-Vagabond"
GTFS_FEED="CH-Alle"

PTNA_TIMEZONE="Europe/Zurich"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][wikidata~'^(Q12755)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Vagabond"
NETWORK_SHORT=""

ANALYSIS_PAGE="Switzerland:Public_Transport/VagABOnd/Analysis"
ANALYSIS_TALK="Talk:Switzerland:Public_Transport/VagABOnd/Analysis"
WIKI_ROUTES_PAGE="Switzerland:Public_Transport/VagABOnd/Analysis/CH-Vagabond-Routes"

ANALYSIS_OPTIONS="--language=fr --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$GTFS_FEED --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Canton de Jura (JU)"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Bwikidata~%22^(Q12755)$%22%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Vagabond"
PTNA_WWW_NETWORK_LINK="https://www.levagabond.ch/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="vagABOnd Lines"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
