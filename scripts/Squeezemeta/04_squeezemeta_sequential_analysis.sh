#!usr/bin/env bash

ke_samples='../data/ke.samples'
tz_samples='../data/tz.samples'
ug_samples='../data/ug.samples'

#running squeezemeta on Kenyan dataset.
echo 'Running squeezemeta on Kenya dataset'
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_ke -f ../data/ke_data -t 30

#running squeezemeta on Tanzanian dataset.
echo 'Running squeezemeta on Tanzanian dataset'
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_tz -f ../data/tz_data -t 30

#running squeezemeta on Ugandan dataset.
echo 'Running squeezemeta on Ugandan dataset'
/opt/SqueezeMeta-1.5.2/scripts/SqueezeMeta.pl -m sequential -s $samples_file_ug -f ../data/ug_data -t 30
