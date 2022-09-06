#Perform Fastqc
#running fastqc on Kenyan dataset
fastqc ../data/ke_data/* -o ug_fastqc_results
#running fastqc on Ugandan dataset
fastqc ../data/ug_data/* -o ug_fastqc_results
#running fastqc on Tanzanian dataset
fastqc ../data/tz_data/* -o ug_fastqc_results

#Perform multiqc
#running multiqc on Kenyan dataset
multiqc ke_fastqc_results
#running multiqc on Ugandan dataset
multiqc ug_fastqc_results
#running multiqc on Tanzanian dataset
multiqc tz_fastqc_results













