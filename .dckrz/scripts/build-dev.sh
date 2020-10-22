#!/bin/bash

# might be cool to dynamically get the names for css and js files

mkdir -p dist && \
rm -rf dist/* && \
mkdir -p tmp && \
rm -rf tmp/* && \
for FILE in $(ls -1 templates/);
do
  JS_FILE=src/js/${FILE%.*}.js && \
  JS_BLOCK=$(cat $JS_FILE) && \
  sed "/<!-- js_block -->/ r $JS_FILE" templates/$FILE > tmp/$FILE.js_build && \
  sed -i 's/<!-- js_block -->//g' tmp/$FILE.js_build && \
  cp tmp/$FILE.js_build dist/$FILE && \
  CSS_FILE=src/css/${FILE%.*}.css && \
  CSS_BLOCK=$(cat $CSS_FILE) && \
  sed "/<!-- css_block -->/ r $CSS_FILE" dist/$FILE > tmp/$FILE.css_build  && \
  sed -i 's/<!-- css_block -->//g' tmp/$FILE.css_build && \
  cp tmp/$FILE.css_build dist/$FILE
done
