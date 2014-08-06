HMC=${HMC:-myhmc}
CLUSTERUUID=${CLUSTERUUID:-95d38275-ab43-333e-a472-bb4aab38645b}

[ ! -f cookies.txt ] && echo "Please login first with curl_login.sh" && exit 1
curl -k -c cookies.txt -b cookies.txt -H "Accept: application/atom+xml; charset=UTF-8" https://${HMC}:12443/rest/api/uom/Cluster/${CLUSTERUUID}/do/CreateLogicalUnit
