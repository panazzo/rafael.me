#!/bin/bash
cd ./rafael.me
hugo --theme=hugo-orbit-theme
cd ./public
aws s3 sync . s3://www.rafael.me --acl "public-read"