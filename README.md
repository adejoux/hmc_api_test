HMC V8 API test with curl
===========

small oneliners using curl to interact with HMC V8 REST api

See my post for  more informations : [hmc-v8-rest-api-part-1-curl](http://www.djouxtech.net/pages/hmc-v8-rest-api-part-1-curl)

* **curl_login.sh**  : authenticate on HMC
* **login.xml** : logrequest in xml format
* **curl_get_lpar.sh** : get Logical Partitions  
* **curl_search_lpar.sh** : search a specific Logical Partition
* **curl_get_cluster.sh** : get vio clusters
* **curl_add_lu.sh** : add a LU in a shared storage pool
* **add_lu.xml** : jobrequest used by curl_add_lu.sh
* **curl_get_job_status.sh** : get job status

variables
=========

Scripts are expecting variables or set them to default value(should not work :) )

Here :

* **HMC** : hmc address
* **CLUSTERUUID** : cluster uuid. Used only in **curl_add_lu.sh**
* **LPAR** : logical partition to search. Used only in **curl_search_lpar.sh**
