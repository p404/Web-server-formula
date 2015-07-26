##############################################################################
# top.sls
#
# Definition state.highstate
#
#
# Pablo Opazo <pablo@sequel.ninja>
##############################################################################

base:
    'web-*':
      - webserver.docker
