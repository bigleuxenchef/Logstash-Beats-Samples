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



### use case #2 : 20 workers,  bulk size 5000

#### Profile


<img src="./images/Profile2_P_W20.png" width=100% align="middle" >

#### Elastic performance

<img src="./images/Elastic2_Perf_W20.png" width=100% align="middle" >


#### Filebeat performance



<img src="./images/Filebeat2_Perf_W20.png" width=100% align="middle" >






### use case #3 : 20 worker, bulk size unlimited (aka higher than # of records to ingest).

slow down scan_frequency
scan_frequency: 10s

slow down how often to check if the file has been updated.
backoff: 1s

max_backoff: 10s

number of file harvest at the same time
harvester_limit: 0
# close the file when reaching EOF
close_eof: false






