This directory contains scripts used in our analysis pipeline.

NB: The retrieved reads were all of good quality, thus, there was no need to trim them before using them in subsequent downstream analyses.


1. [01_sequence_retrieval.sh](01_sequence_retrieval.sh) - It is used for sequence  retrieval from NCBI and MG-RAST
2. [02_quality_control.sh](02_quality_control.sh) - Performs quality control on samples to generate html report
3. [03_samples_file_prep.sh](03_samples_file_prep.sh) - Used to prepare a samples file an input for squeezemeta
4. [04_squeezemeta_coassembly_analysis.sh](04_squeezemeta_coassembly_analysis.sh) - Runs squeezemeta under 
coassembly mode
5. [04_squeezemeta_sequential_analysis.sh](04_squeezemeta_sequential_analysis.sh) - Runs squeezemeta under 
sequential mode
6. [05_results_visualization.sh](05_results_visualization.sh) - For visualization of squuezemeta results  
7. [06_abricate_AMR.sh](06_abricate_AMR.sh) - Code for mining AMR genes
8. [07_amr_visualization.R](07_amr_visualization.R) - For visualization of AMR genes in Rstudio

