
# Pipeline development
The major pipeline steps include;

1. Fetch data from NCBI and mg-rast using  bash script (NCBI-Uganda and Kenya, MG-RAST-Tanzania)
2. Quality chech fastqc and multiqc
3. Preparing sample files for SqueezeMeta
4. Assemmbly using SqueezeMeta and YAMP
5. Annotation (ORFs,CDS) using CAT, SqueezeMeta
6. Taxonomic assignment using YAMP and SqueezeMeta 
7. Functional Annotation(KEGG,eggNOG,CAZy) using Blast, YAMP and SqueezeMeta
8. Gene Prediction using YAMP and SqueezeMeta
9. Alpha and Beta diversity in R and SqueezeMeta 
10. Identification of AMR genes using Resfinder, Platon, Abricate e.t.c
11. Statistical analyses in R


# Workflow.

![Workflow](https://user-images.githubusercontent.com/85280529/193459253-f47bfed3-01c3-4fce-bf31-c101d124b4cb.png)
