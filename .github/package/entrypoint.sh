#!/bin/bash

mkdir dist
python3 -m pip install -r /requirements.txt -t dist 
cd dist
zip -r provision-aws-resource-function.zip *
cd ..
chmod -R 777 dist
