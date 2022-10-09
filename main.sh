#!usr/bin/env bash

#creating data directory and getting into the directory
mkdir -p ../data && cd ../data

#Downloading data
bash ../scripts/01_sequence_retrieval.sh

#Performing quality check on data
mkdir -p ../qc_results
cd ../qc_results
bash ../scripts/02_quality_control.sh

#getting to scripts to continue analysis
cd ../scripts

#generating samples file
bash 03_samples_file_prep.sh

#Running squeezemeta
mkdir -p ../squeezemeta_coassem_results && cd ../squeezemeta_coassem_results
bash ../scripts/04_squeezemeta_coassembly_analysis.sh

#plotting squeezemeta results
Rscript ../scripts/05_squeezemeta_result_visualization.R

#getting back to script directory
cd ../scripts

#AMR gene identification
bash 06_abricate_AMR.sh

#Plotting AMR results
Rscript 07_amr_visualization.R
