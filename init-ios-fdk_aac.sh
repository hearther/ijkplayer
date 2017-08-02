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

IJK_AAC_UPSTREAM=https://github.com/mstorsjo/fdk-aac
IJK_AAC_FORK=https://github.com/mstorsjo/fdk-aac.git
IJK_AAC_COMMIT=cb57d89522806f8161fdbc05d1039e1a3ff5ef76
IJK_AAC_LOCAL_REPO=extra/fdk-aac

set -e
TOOLS=tools

echo "== pull AAC base =="
sh $TOOLS/pull-repo-base.sh $IJK_AAC_UPSTREAM $IJK_AAC_LOCAL_REPO

function pull_fork()
{
    echo "== pull AAC fork $1 =="
    sh $TOOLS/pull-repo-ref.sh $IJK_AAC_FORK ios/AAC-$1 ${IJK_AAC_LOCAL_REPO}
    cd ios/AAC-$1
    git checkout ${IJK_AAC_COMMIT} -B ijkplayer
    cd -
}

pull_fork "armv7"
pull_fork "armv7s"
pull_fork "arm64"
pull_fork "i386"
pull_fork "x86_64"

