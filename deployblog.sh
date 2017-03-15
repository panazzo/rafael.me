#!/bin/bash
cd ./blog
hugo --theme=hugo_theme_robust
cd ./public
aws s3 sync . s3://www.rafael.me/blog --acl "public-read"