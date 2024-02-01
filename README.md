# LRAPsv
LRAPsv is a germline structural variant caller for long-reads. 

# Installation
```
conda create -n LRAPsv python=3.9
conda install sniffles=2.2
conda install bcftools
```

# Usage
python LRAPsv.py \
-r ${REFERENCE} \
-i ${INPUT_BAM} \
-t ${THREADS} \
-mq ${MAP QUANLITY} \
-v ${OUTPUT}
