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
    - container: mysuperdocker
    - image: p404/webserver:0.2
    - port_bindings:
        "80/tcp":
            HostIp: ""
            HostPort: "80"
