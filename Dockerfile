FROM bioconductor/release_core2

LABEL project="dada2"
LABEL version="release"

MAINTAINER Katie Lennard

RUN R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("BiocUpgrade"); if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager");BiocManager::install("dada2", version = "3.8"); biocLite("DECIPHER"); biocLite("biomformat")'
RUN R -e 'install.packages(c("phangorn","dplyr"), dependencies=TRUE)'

CMD ["R"]

################## Hex specific ###########################
RUN mkdir -p /researchdata/fhgfs
