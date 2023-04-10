#!/bin/bash
set -e

#
# Save to file
#
cat >> BUILD.env <<_EOF
SMF_BUILD_DATE='`date`'
SMF_BUILD_HOST='`hostname`'
SMF_BUILD_IP='$SMF_BUILD_IP'

GIT_BRANCH='`git rev-parse --abbrev-ref HEAD`'
GIT_HASH='`git rev-parse --short HEAD`'
GIT_DATE='`git show -s --format='%cd' HEAD`'
GIT_AUTHOR='`git show -s --format='%an' HEAD`'
GIT_EMAIL='`git show -s --format='%ae' HEAD`'
GIT_LOG='`git show -s --format='%B' HEAD | head -1`'
_EOF
