#!usr/bin/env bash

#Samples file
ke_samples='../data/ke.samples'
tz_samples='../data/tz.samples'
ug_samples='../data/ug.samples'

#Datasets
ke_dataset='../data/ke_data'
tz_dataset='../data/tz_data'
ug_dataset='../data/ug_data'

#Analysis
#Kenya
echo running squeezemeta on Kenyan dataset.
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m coassembly -p Kenya -s $ke_samples \
-f $ke_dataset  --D -t 30 -b 14 -assembly_options "--presets meta-large" \
--sq -binners "metabat2,concoct" -taxbinmode "c+s"

#Tanzania
echo running squeezemeta on Tanzanian dataset.
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m coassembly -p Kenya -s $tz_samples \
-f $tz_dataset  --D -t 30 -b 14 -assembly_options "--presets meta-large" \
--sq -binners "metabat2,concoct" -taxbinmode "c+s"

#Uganda
echo running squeezemeta on Tanzanian dataset.
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m coassembly -p Kenya -s $tz_samples \
-f $tz_dataset  --D -t 30 -b 14 -assembly_options "--presets meta-large" \
--sq -binners "metabat2,concoct" -taxbinmode "c+s"
