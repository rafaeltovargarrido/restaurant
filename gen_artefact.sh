#!/bin/sh

TAGFILE=artefact/tags
ls | grep *source* | awk -F'-' '{print $NF}' >> $TAGFILE
cat *source*/.git/short_ref >> $TAGFILE
cat *source*/.git/ref >> $TAGFILE

cp -rf *source*/* artefact/
cp -rf *source*/.env artefact/

cp -rf artefacts/* artefact/

ls artefact/

echo $NAME
