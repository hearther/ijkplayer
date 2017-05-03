#! /usr/bin/env bash
#
# Copyright (C) 2013-2015 Zhang Rui <bbcallen@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

IJK_X264_UPSTREAM=git://git.videolan.org/x264.git
IJK_X264_FORK=git://git.videolan.org/x264.git
IJK_X264_COMMIT=3b70645597bea052d2398005bc723212aeea6875
IJK_X264_LOCAL_REPO=extra/x264

set -e
TOOLS=tools

echo "== pull X264 base =="
sh $TOOLS/pull-repo-base.sh $IJK_X264_UPSTREAM $IJK_X264_LOCAL_REPO

function pull_fork()
{
    echo "== pull X264 fork $1 =="
    sh $TOOLS/pull-repo-ref.sh $IJK_X264_FORK ios/x264-$1 ${IJK_X264_LOCAL_REPO}
    cd ios/x264-$1
    git checkout ${IJK_X264_COMMIT} -B ijkplayer
    cd -
}

pull_fork "armv7"
pull_fork "armv7s"
pull_fork "arm64"
pull_fork "i386"
pull_fork "x86_64"
