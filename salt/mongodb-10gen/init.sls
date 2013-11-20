mongodb-10gen:
  pkgrepo.managed:
    - humanname: mongodb-10gen
    - name: deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen
    - file: /etc/apt/sources.list.d/mongodb-10gen.list
    - keyid: 7F0CEB10
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: mongodb-10gen
  pkg:
     - installed
     - name: mongodb-10gen
  file:
    - managed
    - name: /etc/logrotate.d/mongodb
    - template: jinja
    - user: root
    - group: root
    - mode: 440
    - source: salt://mongodb-10gen/files/logrotate.jinja
  service:
     - running
     - name: mongodb
     - enable: True
     - watch:
       - pkg: mongodb-10gen
  cmd.run:
     - name: |
         # these packages are needed for mongotest.py
         apt-get install -y python-pip
         pip install pymongo
     - user: root
