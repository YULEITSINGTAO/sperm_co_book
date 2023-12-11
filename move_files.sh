#!/bin/bash -l

### A robust Bash header

sperm_sample_nameList="../datasets/sperm_sample_namelist/sperm_sample_nameList.tsv"

for i in {1..22}
do
        echo "Filtering chromosome${i}"

        while read vcf_file; do
                
		vcf_features_output="../datasets/sperm_vcf_file/selected_vcf/QUAL_and_RGQ/chr${i}/${vcf_file}.vcf.gz"
		mv_to_file="../datasets/sperm_vcf_file/selected_vcf/QUAL_and_RGQ_selected/chr${i}/${vcf_file}.vcf.gz"

		mv $vcf_features_output $mv_to_file
        done <${sperm_sample_nameList}

done
