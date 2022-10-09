# Investigating Antimicrobial Resistance Genes in Kenya, Uganda and Tanzania Cattles Using Metagenomics

*This is a comparative study of Antimicrobial Resistance (AMR) genes found in East African countries (Kenya, Uganda and Tanzania).*

## Background

The emergence of AMR is a major global public health issue that jeopardises the efficiency of antimicrobials to cure animal infections that threatens their health, welfare and productivity.                         
Antimicrobial Resistance Genes (ARGs) in the African cattle production system is a growing environmental concern and a threat to human and animal health. In East African countries such as Kenya, Tanzania, and Uganda, there is a dearth of comparative knowledge of microbiomes and resistomes of small-holder cattle breeds.          
As such, it became imperative to study the inter-relationships and distribution of these genes to give us further insight on the circulating resistomes and underlying environmental influences.The understanding of circulating resistomes is important since management of cattle becomes difficult with disease burden which in turn leads to a decline in production as well as an increase in production costs and thus threatens the East Africa Community (EAC) economic growth agenda.       
It is therefore imperative to understand what resistomes exist within the member states together with their genetic make up and genetic environmental basis underlying the resistomes.This is to better manage the livestock for maximisation of production and lowering risk and production costs. It will also help stakeholders and policy makers to further improve the standardisation protocols that govern the movement of products that are derived from cattle as well as govern veterinarians on informed decision on how to better manage their disease incidences.

## Project Description
Raw shotgun metagenomic reads from cattle faecal samples in these countries are available in ENA and MG-RAST databases where they were fetched from.
This project involves comparative study to identify AMR genes (resistomes) in the cattle microbiota from Kenya,Uganda and Tanzania. 

**Data**
|Country| Size (.gz format) | Sample count |
|:-----:| :----------------:| :------------:|
|Kenya  | 2.6 GB | 47 (single-end) |       
|Tanzania |1.6 GB | 36 (single-end) |
|Uganda |23.2 GB| 06  (paired-end) |



## General Objective
- To compare AMR genes diversity in Kenya, Uganda and Tanzania

## Specific Objectives
- To identify common resistomes between Kenya,Uganda and Tanzania
- To identify unique resistomes in Kenya, Uganda and Tanzania
- To identify interrelationship between microbiome and resistomes.


## Workflow

![Workflow](https://user-images.githubusercontent.com/85280529/193459253-f47bfed3-01c3-4fce-bf31-c101d124b4cb.png)


## Scripts used for Analysis
The [scripts](https://github.com/omicscodeathon/amr_cattle/tree/main/scripts) directory contains all the scripts used. This is the sequence of the scripts to be followed:

01. **Sequence_retrieval** - *Used for sequence  mining from NCBI and MG-RAST*
02. **Quality_control** - *Perform quality control on samples to generate html report*
03. **Samples_file_prep** - *Prepare a samples file which is used as an input for squeezemeta*
04. **Squeezemeta_coassembly_analysis** - *Run squeezemeta under coassembly mode*
05. **Squeezemeta_sequential_analysis** - *Run squeezemeta under sequential mode*
06. **Results_visualization** - *Visualization of squuezemeta results*
07. **Squeezemeta_result_visualization.R** - *Visualization of squuezemeta results in R*
08. **Abricate_AMR** - *Mining of AMR genes*
09. **AMR_visualization** - *Visualization of AMR genes in Rstudio*
10. **main** - *A script that runs the analysis scripts end to end*


## TEAM
1. [Kauthar M. Omar](https://github.com/Kauthar-Omar) - Team Lead
2. [George L. Kitundu](https://github.com/EorgeKit) - Co-lead
3. [Felix M. Lisso](https://github.com/fetche-lab) - Member
4. [Adijat  Jimoh](https://github.com/adijatj) - Writer (manuscript)
5. [Abiola Babajide](https://github.com/3880132) - Member
6. [Dorcus N. Namikelwa](https://github.com/Namikelwa) - Writer (github)
