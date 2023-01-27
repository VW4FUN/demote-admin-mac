#!/bin/sh

LoggedInUser=$(last | grep "still logged in" | head -n 1 | awk '{print $1}')

dseditgroup -o edit -d $LoggedInUser -t user admin