#!/bin/sh


./all_bins.sh | xargs -I{} basename {} | xargs -I{} pkg info {} | grep -v "pkg"
