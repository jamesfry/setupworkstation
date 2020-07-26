#!/bin/sh

for script in scripts/essentials/*.sh scripts/tools/*.sh
do
    sh ${script}
done
