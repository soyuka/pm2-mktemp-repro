#!/usr/bin/env bash

TEMP=$(mktemp -d);
echo "Created directory $TEMP"
rm -rf ${TEMP}
echo "Deleted directory $TEMP"
