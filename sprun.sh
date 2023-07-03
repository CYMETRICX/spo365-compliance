#!/bin/bash
steampipe check benchmark.cis_v140 --export=/home/steampipe/output/$1-controls.json --theme=plain --progress=false
status=$?
if test $status -eq 0
then
        echo "{\"message\": \"sp success\"}" > /home/steampipe/output/$1-test.json
else
        echo "{\"message\": \"sp fail\"}" > /home/steampipe/output/$1-test.json
fi
