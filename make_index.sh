#!/bin/bash

set -o nounset
set -o errexit

# find index.html files, reduce to relative directory location
html_links=$(find . -name index.html|sed -e 's+\./++g'|sed -e 's+/index.html++g' |sort)
pdf_links=$(find . -name "*.pdf" | sed -e 's+\./++g' | sort)

# produce HTML
echo "<html><body>"
echo "<h2>HTML Presentations</h2>"
echo "<ul>"
for link in ${html_links}; do
  echo "<li><a href='${link}'>${link}</a>"
done
echo "</ul>"
echo "<h2>PDF Presentations</h2>"
echo "<ul>"
for link in ${pdf_links}; do
  echo "<li><a href='${link}'>${link}</a>"
done
echo "</ul></body></html>"
