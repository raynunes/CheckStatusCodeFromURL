#!/bin/bash

url="www.google.com"
status_code=$(curl -k /dev/null --silent --head --write-out '%{http_code}\n' $url)
date=`date`

if [ "$status_code" -ne "200" ];
then
        echo "verificação com erro em:  $date" >> status_check.log
        #You can add further actions here
fi

# https://s2gpr.sefaz.ce.gov.br/ciclo-orcamentario-web/
# curl --insecure -v https://www.google.com 2>&1 | awk 'BEGIN { cert=0 } /^\* Server certificate:/ { cert=1 } /^\*/ { if (cert) print }'
#  curl --cert mycert.pem https://secure.example.com
# LinhaOriginal: status_code=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' $url)
