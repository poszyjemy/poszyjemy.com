#!/usr/bin/env bash

rm -rf tmp_deploy/
cp -R src/ tmp_deploy/
rm -rf tmp_deploy/node_modules tmp_deploy/scss
cd tmp_deploy/
aws s3 sync . s3://poszyjemy.com --acl public-read
rm -rf tmp_deploy/