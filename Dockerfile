FROM r-base

LABEL project="dada2"
LABEL version="v1_10"

MAINTAINER Katie Lennard

RUN R -e 'source("https://bioconductor.org/biocLite.R"); if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager") BiocManager::install("dada2", version = "3.8"); biocLite("DECIPHER"); biocLite("biomformat")'
RUN R -e 'install.packages(c("phangorn","dplyr"), dependencies=TRUE)'

CMD ["R"]

################## Hex specific ###########################
RUN mkdir -p /researchdata/fhgfs
