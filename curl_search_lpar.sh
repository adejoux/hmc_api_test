HMC=${HMC:-myhmc}
LPAR=${LPAR:-lpar1}
[ ! -f cookies.txt ] && echo "Please login first with curl_login.sh" && exit 1

curl -k -c cookies.txt -b cookies.txt -i -H "Accept: application/atom+xml; charset=UTF-8" https://$HMC:12443/rest/api/uom/LogicalPartition/search/\(PartitionName\=\=$LPAR\)
