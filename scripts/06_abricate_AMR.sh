#!usr/bin/env bash
#to enable activation of conda environment in a shell script
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
#activating conda environment for running abricate.
conda activate abricate

#Input filepaths
Ke_in="../metagenome_analysis_results/ERR277*/results/01*"
Ug_in="../metagenome_analysis_results/Ug_ERR19506*/results/01*"
Tz_in="../metagenome_analysis_results/mgm475*/results/01*"

#Output directories
Ke_dir="../AMR_results/Kenya"
Ug_dir="../AMR_results/Uganda"
Tz_dir="../AMR_results/Tanzania"

#creating a directory for AMR_results
#Kenya
mkdir -p $Ke_dir
for file in $Ke_in
do
#echo $file
name="$(basename -s .fasta $file)"
echo running abricate on file: $name.fasta
#running abricate for AMR gene identification.
abricate $file > $Ke_dir/$name.tab
done

#Uganda
mkdir -p $Ug_dir
for file in $Ug_in
do
#echo $file
name="$(basename -s .fasta $file)"
echo running abricate on file: $name.fasta
#running abricate for AMR gene identification.
abricate $file > $Ug_dir/$name.tab
done

#Tanzania
mkdir -p $Tz_dir
for file in $Tz_in
do
#echo $file
name="$(basename -s .fasta $file)"
echo running abricate on file: $name.fasta
#running abricate for AMR gene identification.
abricate $file > $Tz_dir/$name.tab
done
