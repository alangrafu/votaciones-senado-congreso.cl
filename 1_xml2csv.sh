#!/bin/bash

echo "Creating CSV files for votes"
for i in $(ls *.xml); do xsltproc votes.xsl $i |tail -n +3 > votes_$i.csv; done
echo "Creating CSV files for sessions"
for i in $(ls *.xml); do xsltproc session.xsl $i |tail -n +3 > session_$i.csv; done
