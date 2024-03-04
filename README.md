# LRAPsv
LRAPsv is a germline structural variant caller for long-reads. 

# Installation
```
conda create -n LRAPsv python=3.9.5
conda install sniffles=2.0.7
conda install bcftools
conda install tabix
git clone https://github.com/Roick-Leo/LRAPsv.git
cd LRAPsv
chmod a+x LRAPsv.bin
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

# Contact
- He Lei
  - Email: helei1@genomics.cn