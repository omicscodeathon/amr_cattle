#!/usr/bin/env bash 
##This is the script to run YAMP in all data
##Characterisation mode was used since all the samples had acceptable quality so no quality control was required
##Remeber to configure the conf/base.config file to your own parameters and specifications before  running 


##RUNNING YAMP ON UGANDA DATA
## NB in ug_data only six samples were used not all since they were very big and we had time constraints
## these were (ERR1950666, ERR1950667, ERR1950668, ERR1950669, ERR1950670, ERR1950671)

sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950666_1.fastq.gz --reads2 ../data/ug_data/ERR1950666_2.fastq.gz --prefix ERR1950666 --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950667_1.fastq.gz --reads2 ../data/ug_data/ERR1950667_2.fastq.gz --prefix ERR1950667 --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950668_1.fastq.gz --reads2 ../data/ug_data/ERR1950668_2.fastq.gz --prefix ERR1950668 --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950669_1.fastq.gz --reads2 ../data/ug_data/ERR1950669_2.fastq.gz --prefix ERR1950669 --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950670_1.fastq.gz --reads2 ../data/ug_data/ERR1950670_2.fastq.gz --prefix ERR1950670 --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg  --reads1 ../data/ug_data/ERR1950671_1.fastq.gz --reads2 ../data/ug_data/ERR1950671_2.fastq.gz --prefix ERR1950671--mode characterisation -profile base,docker


##RUNNING YAMP ON KENYA DATA
reads='../data/ke_data/*'
for read in $reads
do
echo $read
name=`basename -s .fastq $read`
echo $name
#sudo nextflow  run -bg YAMP.nf --reads1 $read --prefix $name --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg --reads1 $read --prefix $name --mode characterisation -profile base,docker
done


##RUNNING YAMP ON TANZANIA DATA
reads='../data/tz_data/*'
for read in $reads
do
echo $read
name=`basename -s .fastq $read`
echo $name
#sudo nextflow  run -bg YAMP.nf --reads1 $read --prefix $name --mode characterisation -profile base,docker
sudo nextflow run YAMP.nf -bg --reads1 $read --prefix $name --mode characterisation -profile base,docker
done

##DOONE
