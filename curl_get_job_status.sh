JOBID=$1
HMC=${HMC:-myhmc}
[ ! -f cookies.txt ] && echo "Please login first with curl_login.sh" && exit 1

if [[ -z $JOBID ]]
then
  echo "need to specify jobid"
  exit 1
fi

curl -k -c cookies.txt -b cookies.txt -i -H "Accept: application/atom+xml; charset=UTF-8" https://${HMC}:12443/rest/api/uom/jobs/$JOBID
