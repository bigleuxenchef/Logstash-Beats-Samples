# *filebeat* Samples

## Performance *filebeat* : ingesting 10000 files

use case 10000 files of 32k each


### use case #1 : 1 worker, default bulk size

#### Profile


<img src="./images/Profile1_P_W1.png" width=100% align="middle" >

#### Elastic performance

<img src="./images/Elastic1_Perf_W1.png" width=100% align="middle" >


#### Filebeat performance

<img src="./images/Filebeat1_Perf_W1.png" width=100% align="middle" >



### use case #2 : 20 workers, default bulk size


### use case #3 : 20 worker, bulk size unlimited (aka higher than # of records to ingest).







