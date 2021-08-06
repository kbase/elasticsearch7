FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.1

ARG BUILD_DATE
ARG VCS_REF
ARG BRANCH=develop

RUN bin/elasticsearch-plugin install --batch repository-s3 repository-gcs

# 
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/kbase/elasticsearch7.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1" \
      us.kbase.vcs-branch=$BRANCH \
      maintainer="Steve Chan sychan@lbl.gov"