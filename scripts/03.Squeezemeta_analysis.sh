#!usr/bin/env bash

ke_sample_data='../data/ke.samples.csv'
tz_sample_data='../data/tz.samples.csv'
ug_sample_data='../data/ug.samples.csv'

samples_file_ke='../data/ke.samples'
samples_file_tz='../data/tz.samples'
samples_file_ug='../data/ug.samples'

echo running $ke_sample_data
sed 's/','/\t/g' $ke_sample_data > $out_ke
echo running $tz_data
sed 's/','/\t/g' $tz_sample_data > $out_tz
echo running $ug_sample_data
sed 's/','/\t/g' $ug_sample_data > $out_ug

#running squeezemeta on Kenyan dataset.
#
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_ke -f ../data/ke_data -t 30

#running squeezemeta on Tanzanian dataset.
echo 'Running squeezemeta on Tanzanian dataset'
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_tz -f ../data/tz_data -t 30

#running squeezemeta on Ugandan dataset.
echo 'Running squeezemeta on Ugandan dataset'
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_ug -f ../data/ug_data -t 30
