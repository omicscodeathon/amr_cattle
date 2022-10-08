
Pipeline development
The major pipeline steps include;

1. Fetch data from NCBI and mg-rast using  bash script (NCBI-Uganda and Kenya, MG-RAST-Tanzania)
2. Quality chech fastqc and multiqc
3. Quality control of the reads using Trimmomatic
4. Preparing sample files for SqueezeMeta
5. Assemmbly using SqueezeMeta and YAMP
6. Annotation (ORFs,CDS) using CAT, SqueezeMeta
7. Taxonomic assignment using YAMP and SqueezeMeta 
8. Functional Annotation(KEGG,eggNOG,CAZy) using Blast, YAMP and SqueezeMeta
9. Gene Prediction using YAMP and SqueezeMeta
10. Alpha and Beta diversity in R and SqueezeMeta 
11. Identification of AMR genes using Resfinder, Platon, Abricate e.t.c
12. Statistical analyses in R
