HMC=${HMC:-myhmc}

curl -k -c cookies.txt -i -X PUT -H "Content-Type: application/vnd.ibm.powervm.web+xml; type=LogonRequest" -H "Accept: application/vnd.ibm.powervm.web+xml; type=LogonResponse" -H "X-Audit-Memento: hmc_test" -d @login.xml https://$HMC:12443/rest/api/web/Logon
