#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

cd /home/onlyfeet
git clone git@github.com:sa7mon/S3Scanner.git
cd /home/onlyfeet/S3Scanner
pip3 install -r /home/onlyfeet/S3Scanner/requirements.txt
python3 -m S3Scanner