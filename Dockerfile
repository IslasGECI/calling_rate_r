FROM islasgeci/base:22.04
COPY . /workdir

RUN Rscript -e "remotes::install_github('IslasGECI/gecioptparse')"
RUN Rscript -e "install.packages('comprehenr', repos='http://cran.rstudio.com')"
