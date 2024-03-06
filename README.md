# LRAPsv
LRAPsv is a germline structural variant caller for long-reads. 

# Installation
```
conda create -n LRAPsv python=3.9.5 -y
conda activate LRAPsv
pip install sniffles==2.0.7
conda install -c bioconda -y bcftools
conda install -c bioconda -y tabix
git clone https://github.com/Roick-Leo/LRAPsv.git
chmod -R a+x ./LRAPsv
```

# Usage
```
./LRAPsv.bin \
-r ${REFERENCE} \
-i ${INPUT_BAM} \
-t ${THREADS} \
-mq ${MAP QUANLITY} \
-v ${OUTPUT}
```

# Demo
```
minimap2 -ax map-ont --secondary=no -t 15 /path/to/reference.fa /path/to/fastq_file | samtools view -@ 15 -bS | samtools sort -@ 15 -o /path/to/output_sorted.bam

conda activate LRAPsv
/path/to/LRAPsv.bin -r /path/to/reference.fa -i /path/to/Sample_sorted.bam -v /path/to/output.vcf -t 15
```

# Final comparison
```
truvari -f ref/human_hs37d5.fasta -b giab/HG002_SVs_Tier1_v0.6.vcf.gz\
        --includebed giab/HG002_SVs_Tier1_v0.6.bed -o bench-pbsv --passonly\
        --giabreport -r 1000 -p 0.00 -c /path/to/hg2.vcf.gz
```

# Contact
- He Lei
  - Email: helei1@genomics.cn
