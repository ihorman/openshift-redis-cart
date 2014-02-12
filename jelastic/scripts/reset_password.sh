#!/bin/bash

SED=$(which sed);

#
# This is an example of reset password hook in Jelastic
#

#$J_OPENSHIFT_APP_ADM_USER        ;   Operate this variable for the username
#$J_OPENSHIFT_APP_ADM_PASSWORD    ;   Use this varible for your password

function _setPassword() {
        echo $J_OPENSHIFT_APP_ADM_PASSWORD > ${CARTRIDGE_HOME}/env/REDIS_PASSWORD;
#        service cartridge restart > /dev/null 2>&1;
}






