# LRAPsv
LRAPsv is a germline structural variant caller for long-reads. 

# Installation
```
conda create -n LRAPsv python=3.9
conda install sniffles=2.2
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
