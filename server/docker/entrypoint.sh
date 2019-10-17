#!/bin/bash
whoami
# set permission for web container work on db container
sudo chown ${UNAME}:${UNAME} -R /home/${UNAME}/workspace

/bin/bash