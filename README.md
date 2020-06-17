# spm-test
SPM test case

- Builds two versions of the same package (test)
- Installs both one after another one
- Removes test package, shows SPM state after each step

- Install salt-master, salt-minion, sqlite3
- Run run_tests.sh

Output I get :

```
Built package /srv/spm_build/test-0.1-0.spm
Built package /srv/spm_build/test-0.2-0.spm
... installing test
========== spm info ===========
Name: test
Version: 0.1
Release: 0
Install Date: Wed, 17 Jun 2020 21:51:21 GMT
Supported OSes: Ubuntu
Supported OS families: Debian
Dependencies: None
OS Dependencies: None
OS Family Dependencies: None
Summary: test
Description:
test
========== packages ===========
test|0.1|0
=========== files =============
/srv/spm/salt/test|
/srv/spm/salt/test/init.sls|be34e5c84890df720cefb8bbdb66375c53bb27af
/srv/spm/salt/test/ver1.sls|dc024388a2260dc647903859bc036a0007416757
======== files on disk ========
init.sls
ver1.sls
===============================
... installing test
========== spm info ===========
Name: test
Version: 0.1
Release: 0
Install Date: Wed, 17 Jun 2020 21:51:21 GMT
Supported OSes: Ubuntu
Supported OS families: Debian
Dependencies: None
OS Dependencies: None
OS Family Dependencies: None
Summary: test
Description:
test
========== packages ===========
test|0.1|0
test|0.2|0
=========== files =============
/srv/spm/salt/test|
/srv/spm/salt/test/init.sls|be34e5c84890df720cefb8bbdb66375c53bb27af
/srv/spm/salt/test/ver1.sls|dc024388a2260dc647903859bc036a0007416757
/srv/spm/salt/test|
/srv/spm/salt/test/init.sls|9e5278072bf6276a0512450344ce6ee1bbd693a9
/srv/spm/salt/test/ver2.sls|e0440185dc6035387b785302e814c8a4b4f387af
======== files on disk ========
init.sls
ver1.sls
ver2.sls
===============================
... removing test
========== spm info ===========
package test not installed
========== packages ===========
=========== files =============
======== files on disk ========
ls: cannot access /srv/spm/salt/test: No such file or directory
===============================
```
