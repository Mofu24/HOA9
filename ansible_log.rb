2023-10-23 10:19:35,831 p=3021 u=flores n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: ping

2023-10-23 10:19:35,831 p=3021 u=flores n=ansible | [WARNING]: No hosts matched, nothing to do

2023-10-23 10:19:44,543 p=3030 u=flores n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: ping

2023-10-23 10:19:44,543 p=3030 u=flores n=ansible | [WARNING]: No hosts matched, nothing to do

2023-10-23 10:20:11,304 p=3057 u=flores n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: ping

2023-10-23 10:20:11,304 p=3057 u=flores n=ansible | [WARNING]: No hosts matched, nothing to do

2023-10-23 10:20:48,044 p=3065 u=flores n=ansible | 192.168.164.8 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
2023-10-23 10:20:48,045 p=3065 u=flores n=ansible | 192.168.164.6 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
2023-10-23 10:20:48,537 p=3065 u=flores n=ansible | 192.168.164.10 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
2023-10-23 10:57:51,570 p=3615 u=flores n=ansible | PLAY [Install Prometheus] ******************************************************
2023-10-23 10:57:51,590 p=3615 u=flores n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2023-10-23 10:57:53,897 p=3615 u=flores n=ansible | ok: [192.168.164.8]
2023-10-23 10:57:53,949 p=3615 u=flores n=ansible | ok: [192.168.164.6]
2023-10-23 10:57:55,029 p=3615 u=flores n=ansible | ok: [192.168.164.10]
2023-10-23 10:57:55,041 p=3615 u=flores n=ansible | TASK [common : Update package cache name=*, state=latest] **********************
2023-10-23 10:57:55,086 p=3615 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-23 10:57:57,695 p=3615 u=flores n=ansible | ok: [192.168.164.8]
2023-10-23 10:57:57,719 p=3615 u=flores n=ansible | ok: [192.168.164.6]
2023-10-23 10:57:57,731 p=3615 u=flores n=ansible | TASK [common : Update package cache name=*, state=latest] **********************
2023-10-23 10:57:57,763 p=3615 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-23 10:57:57,766 p=3615 u=flores n=ansible | skipping: [192.168.164.8]
2023-10-23 10:59:07,163 p=3615 u=flores n=ansible | changed: [192.168.164.10]
2023-10-23 10:59:07,168 p=3615 u=flores n=ansible | TASK [common : Install common dependencies name={{ item }}, state=present] *****
2023-10-23 10:59:09,538 p=3615 u=flores n=ansible | ok: [192.168.164.6] => (item=unzip)
2023-10-23 10:59:09,540 p=3615 u=flores n=ansible | ok: [192.168.164.8] => (item=unzip)
2023-10-23 10:59:14,764 p=3615 u=flores n=ansible | ok: [192.168.164.10] => (item=unzip)
2023-10-23 10:59:14,788 p=3615 u=flores n=ansible | TASK [prometheus : Import Grafana GPG Key url=https://packages.grafana.com/gpg.key] ***
2023-10-23 10:59:14,827 p=3615 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-23 10:59:17,659 p=3615 u=flores n=ansible | changed: [192.168.164.8]
2023-10-23 10:59:17,670 p=3615 u=flores n=ansible | changed: [192.168.164.6]
2023-10-23 10:59:17,679 p=3615 u=flores n=ansible | TASK [prometheus : Add Prometheus APT repository (Ubuntu) repo=deb https://packages.grafana.com/oss/deb stable main] ***
2023-10-23 10:59:17,731 p=3615 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-23 10:59:28,391 p=3615 u=flores n=ansible | [0;31m--- before: /dev/null[0m
[0;31m[0m[0;32m+++ after: /etc/apt/sources.list.d/packages_grafana_com_oss_deb.list[0m
[0;32m[0m[0;36m@@ -0,0 +1 @@[0m
[0;36m[0m[0;32m+deb https://packages.grafana.com/oss/deb stable main[0m
[0;32m[0m

2023-10-23 10:59:28,392 p=3615 u=flores n=ansible | changed: [192.168.164.8]
2023-10-23 10:59:28,827 p=3615 u=flores n=ansible | [0;31m--- before: /dev/null[0m
[0;31m[0m[0;32m+++ after: /etc/apt/sources.list.d/packages_grafana_com_oss_deb.list[0m
[0;32m[0m[0;36m@@ -0,0 +1 @@[0m
[0;36m[0m[0;32m+deb https://packages.grafana.com/oss/deb stable main[0m
[0;32m[0m

2023-10-23 10:59:28,827 p=3615 u=flores n=ansible | changed: [192.168.164.6]
2023-10-23 10:59:28,834 p=3615 u=flores n=ansible | TASK [prometheus : Add Prometheus YUM repository (CentOS) name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch, description=Prometheus repository, gpgcheck=False] ***
2023-10-23 10:59:28,864 p=3615 u=flores n=ansible | skipping: [192.168.164.8]
2023-10-23 10:59:28,871 p=3615 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-23 10:59:31,264 p=3615 u=flores n=ansible | [0;31m--- before: /etc/yum.repos.d/prometheus.repo[0m
[0;31m[0m[0;32m+++ after: /etc/yum.repos.d/prometheus.repo[0m
[0;32m[0m[0;36m@@ -0,0 +1,6 @@[0m
[0;36m[0m[0;32m+[prometheus][0m
[0;32m[0m[0;32m+async = 1[0m
[0;32m[0m[0;32m+baseurl = https://packagecloud.io/prometheus-rpm/release/el/7/$basearch[0m
[0;32m[0m[0;32m+gpgcheck = 0[0m
[0;32m[0m[0;32m+name = Prometheus repository[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m

2023-10-23 10:59:31,264 p=3615 u=flores n=ansible | changed: [192.168.164.10]
2023-10-23 10:59:31,271 p=3615 u=flores n=ansible | TASK [prometheus : Install Prometheus in Ubuntu name=prometheus, state=present] ***
2023-10-23 10:59:31,319 p=3615 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-23 10:59:48,507 p=3615 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw
  prometheus-node-exporter
The following NEW packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw prometheus
  prometheus-node-exporter
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
2023-10-23 10:59:48,508 p=3615 u=flores n=ansible | changed: [192.168.164.8]
2023-10-23 10:59:50,744 p=3615 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw
  prometheus-node-exporter
The following NEW packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw prometheus
  prometheus-node-exporter
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
2023-10-23 10:59:50,745 p=3615 u=flores n=ansible | changed: [192.168.164.6]
2023-10-23 10:59:50,757 p=3615 u=flores n=ansible | TASK [prometheus : Install Prometheus in CentOS name=prometheus, state=present] ***
2023-10-23 10:59:50,772 p=3615 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-23 10:59:50,807 p=3615 u=flores n=ansible | skipping: [192.168.164.8]
2023-10-23 11:00:09,932 p=3615 u=flores n=ansible | changed: [192.168.164.10]
2023-10-23 11:00:09,969 p=3615 u=flores n=ansible | PLAY RECAP *********************************************************************
2023-10-23 11:00:09,969 p=3615 u=flores n=ansible | 192.168.164.10             : ok=5    changed=3    unreachable=0    failed=0    skipped=4    rescued=0    ignored=0   
2023-10-23 11:00:09,970 p=3615 u=flores n=ansible | 192.168.164.6              : ok=6    changed=3    unreachable=0    failed=0    skipped=3    rescued=0    ignored=0   
2023-10-23 11:00:09,970 p=3615 u=flores n=ansible | 192.168.164.8              : ok=6    changed=3    unreachable=0    failed=0    skipped=3    rescued=0    ignored=0   
