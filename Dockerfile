FROM r-base

LABEL project="dada2"
LABEL version="v1_10"

MAINTAINER Katie Lennard

RUN R -e 'install.packages(c("RCurl","phangorn","dplyr"), dependencies=TRUE)'
RUN R -e 'if (!requireNamespace("BiocManager")) install.packages("BiocManager");BiocManager::install(); BiocManager::install("dada2"); BiocManager::install("DECIPHER"); BiocManager::install("biomformat")'

CMD ["R"]

################## Hex specific ###########################
RUN mkdir -p /researchdata/fhgfs
