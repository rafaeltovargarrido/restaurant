#!/bin/sh

TAGFILE=artefact/tags
ls | grep *source* | awk -F'-' '{print $NF}' >> $TAGFILE
cat *source*/.git/short_ref >> $TAGFILE
cat *source*/.git/ref >> $TAGFILE

cp -rf *source*/* artefact/
cp -rf *source*/.env artefact/

cp -rf artefacts/* artefact/

ls artefact/

sed -i "s|BLACKFIRE_SERVER_ID|$NAME|g;s|BLACKFIRE_SERVER_TOKEN|$NAME|g" artefact/r.confg 
cat artefact/r.confg
