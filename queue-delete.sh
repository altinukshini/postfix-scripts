#!/bin/bash

mailq | tail +2 | grep -v '^ *(' | awk  'BEGIN { RS = "" } { if ($8 == "email@address.com" && $9 == "") print $1 } ' | tr -d '*!' | postsuper -d -

qshape -s deferred | head

exit 0
