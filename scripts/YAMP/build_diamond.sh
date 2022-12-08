#!/usr/bin/env bash

#to enable activation of conda environment in a shell script
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
#Step 1: activating conda environment for running diamond
conda activate diamond

#getting the required input fasta file for building diamond database
wget https://ftp.uniprot.org/pub/databases/uniprot/uniref/uniref90/uniref90

#building diamond database
diamond makedb --in uniref90.fasta --db uniref90

#renaming database to the name recognized by the pre-written YAMP script 
mv uniref90.dmnd uniref90_v201901.dmnd

#replacing the pre-built database with the one we have built
mv uniref90_v201901.dmnd assets/data/uniref/

#DONE