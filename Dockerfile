FROM docker.doit.wisc.edu/myuw/uw-frame-superstatic:2.2.0

MAINTAINER Tim Levett <tim.levett@wisc.edu>

COPY bower_components/marked/ /data/bower_components/marked/
COPY bower_components/angular-marked/ /data/bower_components/angular-marked/
COPY staticFeeds/session.json /data/staticFeeds/session.json

VOLUME /data/my-app
