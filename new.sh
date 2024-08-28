#!/usr/bin/env bash

filename="content/blog/$(date -Iseconds).md"

echo "---" > $filename
echo "title: " >> $filename
echo "date: $(date -I)" >> $filename
echo -e "---\n\n" >> $filename

nvim +2 $filename




