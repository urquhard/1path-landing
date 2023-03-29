FROM nginx:1.17-alpine

COPY page35054498.html etc/nginx/
COPY css etc/nginx/css
COPY files etc/nginx/files
COPY images etc/nginx/images
COPY js etc/nginx/js
COPY nginx.develop.conf /etc/nginx/nginx.conf

ARG CI_COMMIT_SHA
LABEL git-commit=$CI_COMMIT_SHA
LABEL project=qset
