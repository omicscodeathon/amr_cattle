#Perform Fastqc
fastqc ../data/ke_data/* -o ug_fastqc_results
fastqc ../data/ug_data/* -o ug_fastqc_results
fastqc ../data/tz_data/* -o ug_fastqc_results

#Perform multiqc
multiqc ke_fastqc_results
multiqc ug_fastqc_results
multiqc tz_fastqc_results

#Analysis with Squeezemeta pipelinne
#running only on uganda dataset.
perl /opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s ../data/ug.samples -f ../data/ug_data -b 1 -t 20
