#!/usr/bin/env bash
Rscript google-scholar.R
bundle exec jekyll build
git add ../_includes/publications.html
git commit -m 'auto-updated publications.html'
git push

sleep 2

Rscript google-scholar-pdf.R
bundle exec jekyll build
git add ../assets/publications.pdf
git commit -m 'auto-updated publications.pdf'
git push
