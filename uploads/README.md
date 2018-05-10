Loading cvs files to master server
==================================


This script uploads a cvs with 2 Million rows in 60 seconds.


Instructions :

1. This files will load the CVS files one directory down to the master server 
2. The scripts will compress the data and upload it to mater server using username and password.
3. You need to create a crotab entry as follows.
05 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23, * * * /home/hfnoise/hf_noise/uploads/load_all_files.sh

TO DO
Archve loaded files so it dose not get reloaded.




