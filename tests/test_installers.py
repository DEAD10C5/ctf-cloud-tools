# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

import unittest
import pexpect

class TestInstallers(unittest.TestCase):

    def test_install_aws(self):
        child = pexpect.spawn('docker run -it ghcr.io/devsecfranklin/only-feet-cloud-ctf-tools:latest ash -l')
        child.expect('~ $ ')
        child.sendline('bin/install_aws.sh')
        child.expect(pexpect.EOF, timeout=None)
        cmd_show_data = child.before
        cmd_output = cmd_show_data.split('\r\n')
        for data in cmd_output:
            print(data)

if __name__ == "__main__":
    unittest.main()
