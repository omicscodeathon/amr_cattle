This directory contains scripts used in our analysis pipeline.

NB: The retrieved reads were all of good quality, thus, there was no need to trim them before using them in subsequent downstream analyses.

1. [main.sh](main.sh) - A script that runs the analysis end to end in coassembly mode plotting all results in R. 

It is recommended to run the code on a compute cluster since squuezemeta takes time and is resource intensive.

You are recommended to run with a job schedular in a shared cluster requesting for atleast 16GB RAM. However it is recommended to have more than 32GB RAM.

**NB** : For the codes below with the same number prefix these codes can be used as alternatives to each other and only one is used in the analysis pipeline code above main.sh


2. [01_sequence_retrieval.sh](01_sequence_retrieval.sh) - It is used for sequence  retrieval from NCBI and MG-RAST

3. [02_quality_control.sh](02_quality_control.sh) - Performs quality control on samples to generate html report

4. [03_samples_file_prep.sh](03_samples_file_prep.sh) - Used to prepare a samples file an input for squeezemeta

5. [04_squeezemeta_coassembly_analysis.sh](04_squeezemeta_coassembly_analysis.sh) - Runs squeezemeta under 
coassembly mode

6. [04_squeezemeta_sequential_analysis.sh](04_squeezemeta_sequential_analysis.sh) - Runs squeezemeta under 
sequential mode

7. [05_results_visualization.sh](05_results_visualization.sh) - For visualization of squuezemeta results  

8. [05_squeezemeta_result_visualization.R](05_squeezemeta_result_visualization.R ) - Plotting squuezemeta results for visualization in R

9. [06_abricate_AMR.sh](06_abricate_AMR.sh) - Code for mining AMR genes

10. [07_amr_visualization.R](07_amr_visualization.R) - For visualization of AMR genes in Rstudio

