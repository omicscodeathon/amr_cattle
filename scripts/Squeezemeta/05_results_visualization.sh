```
#!usr/bin/env bash
```
#Script to visualise Squeezemeta results using anvio tool
#The tool Load SQM results into anvi'o: the anvi-load-sqm.py script

#To enable activation of conda environment in a shell script
```
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
```
#Step 1: activating conda environment for running anvio
```
conda activate anvio
```
#Step 2: Check options for running anvio script
```
python3 /path/to/SqueezeMeta/utils/anvio_utils/anvi-load-sqm.py -h
```
#Step 3: Loading  SQM results into anvi'o: the anvi-load-sqm.py script
## Loading SQM results for Uganda
```
project=" ../metagenome_analysis_results/Ug_ERR19506*"
for file in $project; do
echo "The project path is :" $file
name="$(basename $file)"
echo "The project name is :" $name
anvio_out="$file/anvio_data"
python3 /opt/SqueezeMeta-1.5.2/utils/anvio_utils/anvi-load-sqm.py -p  $file -o $anvio_out --num-threads 30 --min-contig-length 1000 --run-scg-taxonomy --run-HMMS
ls  $anvio_out
ls $file/results/
done
```
##Loading for Tanzania SQM results
```
project=" ../metagenome_analysis_results/mgm475467*"

for file in $project; do
echo "The project path is :" $file
name="$(basename $file)"
echo "The project name is :" $name
anvio_out="$file/anvio_data"
python3 /opt/SqueezeMeta-1.5.2/utils/anvio_utils/anvi-load-sqm.py -p  $file -o $anvio_out --num-threads 30 --min-contig-length 1000 --run-scg-taxonomy --run-HMMS

echo "Finished SQM2ANVIO analysis"
ls -lhtr $anvio_out
ls $file/results/
done
```

##Loading for Kenya SQM results
```
project=" ../metagenome_analysis_results/ERR27778*"

for file in $project; do
echo "The project path is :" $file
name="$(basename $file)"
echo "The project name is :" $name
anvio_out="$file/anvio_data"
python3 /opt/SqueezeMeta-1.5.2/utils/anvio_utils/anvi-load-sqm.py -p  $file -o $anvio_out --num-threads 30 --min-contig-length 1000 --run-scg-taxonomy --run-HMMS
echo "Finished SQM2ANVIO analysis"
ls -lhtr $anvio_out
ls $file/results/
done
```
