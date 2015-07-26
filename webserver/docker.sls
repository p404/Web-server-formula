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

webserver:
  docker.running:
    - container: webserver
    - image: p404/webserver:latest
    - port_bindings:
        "80/tcp":
            HostIp: ""
            HostPort: "80"
