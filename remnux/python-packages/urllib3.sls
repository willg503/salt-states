include:
  - remnux.packages.python2-pip
  - remnux.packages.python3-pip

urllib3:
  pip.installed:
    - bin_env: /usr/bin/python2
    - upgrade: True
    - require:
      - sls: remnux.packages.python2-pip
