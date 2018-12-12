FROM r-base

LABEL project="dada2"
LABEL version="v1_10"

MAINTAINER Katie Lennard

RUN R -e 'if (!requireNamespace("BiocManager")) install.packages("BiocManager");BiocManager::install(); BiocManager::install("dada2", version = "3.8"); BiocManager::install("DECIPHER"); BiocManager::install("biomformat")'
RUN R -e 'install.packages(c("phangorn","dplyr"), dependencies=TRUE)'

CMD ["R"]

################## Hex specific ###########################
RUN mkdir -p /researchdata/fhgfs
