#!/bin/bash

echo "Copy docs dir to resources dir"
cp -a ../docs/. ./resources
filename=resources/index.html
jsDir=js
scriptDestDir=resources/$jsDir
mainJs=$jsDir/main.js
neutralinoJs=js/neutralino.js

echo "Create $scriptDestDir"
mkdir $scriptDestDir

urls=$(cat $filename | sed -r 's|\s*<script src="(https://cdn.jsdelivr.net/npm/.*)"></script>|\1|g;t;d')

for url in $urls
do
  echo "--- $url"
  (cd $scriptDestDir && curl -O $url)
done

sed -ri 's|(<script src=")https://cdn.jsdelivr.net/npm/.*/(.*)("></script>)|\1'"$jsDir/"'\2\3|g' $filename
sed -ri 's|(</body>)|  <script src="'"$neutralinoJs"'"></script>\r  <script src="'"$mainJs"'"></script>\r\1|g' $filename
