##############################################################################
# Websever
#
# Install web server docker
#
#
# Pablo Opazo <pablo@sequel.ninja>
##############################################################################

include:
  - docker

webserver-image:
   docker.pulled:
     - name: p404/webserver
     - tag: 0.2
     - require_in: webserver-container
     - force: True

webserver-container:
   docker.installed:
     - name: webserver
     - image: p404/webserver
     - ports:
       - "80/tcp"

webserver:
  docker.running:
    - container: webserver
    - port_bindings:
        "80/tcp":
            HostIp: ""
            HostPort: "80"
