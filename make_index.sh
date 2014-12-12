#!/bin/bash

# find index.html files, reduce to relative directory location
links=$(find . -name index.html|sed -e 's+\./++g'|sed -e 's+/index.html++g')

# produce HTML
echo "<html><body><ul>"
for link in ${links}; do
  echo "<li><a href='${link}'>${link}</a>"
done
echo "</ul></body></html>"
