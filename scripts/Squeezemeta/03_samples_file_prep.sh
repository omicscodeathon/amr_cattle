#!usr/bin/env bash

#Data directories
ke_data_dir="../data/ke_data"
tz_data_dir="../data/tz_data"
ug_data_dir="../data/ug_data"

#csv sample file
ke_csv="../data/ke.samples.csv"
tz_csv="../data/tz.samples.csv"
ug_csv="../data/ug.samples.csv"

#tab separated sample file
ke_samples="../data/ke.samples"
tz_samples="../data/tz.samples"
ug_samples="../data/ug.samples"

#Removing any existing csv files to prevent appending of existing samples.
rm $ke_csv
rm $tz_csv
rm $ug_csv

#Creating csv file
#Single end reads
#Kenya
for file in `ls $ke_data_dir`
do
echo `basename -s .fastq $file`,$file,pair1 >> $ke_csv
done

#Tanzania
for file in `ls $tz_data_dir`
do
echo `basename -s .fastq $file`,$file,pair1 >> $tz_csv
done

#Paired end reads
#Uganda
for file in `ls $ug_data_dir`
do
echo $file > $file.txt
suffix=$(cut -d '_' -f2 $file.txt)
rm $file.txt
if [[ $(echo $suffix) == "1.fastq.gz" ]]
then
echo `basename -s _1.fastq.gz $file`,$file,pair1 >> $ug_csv
else
echo `basename -s _2.fastq.gz $file`,$file,pair2 >> $ug_csv
fi
done

#converting csv to tsv
#Kenya
sed 's/','/\t/g' $ke_csv > $ke_samples
#Tanzania
sed 's/','/\t/g' $tz_csv > $tz_samples
#Uganda
sed 's/','/\t/g' $ug_csv > $ug_samples
