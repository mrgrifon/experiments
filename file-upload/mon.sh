#!/bin/bash

# %20p - name, %c - last time, %s - size in bytes
# function check()
# {
#     printf "%-50s%s%40s\n" "Name" "Time" "Bytes" &&
#     find public/uploads/* -maxdepth 1 -printf '%-20p\t%20c\t%s\n'

# }

watch -n 1 "find public/uploads/* -maxdepth 1 -printf '%-20p\t%20c\t%s\n'"