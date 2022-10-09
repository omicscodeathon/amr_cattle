#Perform Fastqc

#Data directories
ke_data_dir="../data/ke_data"
tz_data_dir="../data/tz_data"
ug_data_dir="../data/ug_data"


#running fastqc on Kenyan dataset
fastqc $ke_data_dir -o ke_fastqc_results
#running fastqc on Ugandan dataset
fastqc $tz_data_dir -o ug_fastqc_results
#running fastqc on Tanzanian dataset
fastqc $ug_data_dir -o tz_fastqc_results

#Perform multiqc
#running multiqc on Kenyan dataset
multiqc ke_fastqc_results
#running multiqc on Ugandan dataset
multiqc ug_fastqc_results
#running multiqc on Tanzanian dataset
multiqc tz_fastqc_results













