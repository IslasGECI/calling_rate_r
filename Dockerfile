FROM islasgeci/base:1.0.0
COPY . /workdir

RUN Rscript -e "remotes::install_github('IslasGECI/optparse')"
RUN Rscript -e "install.packages('comprehenr', repos='http://cran.rstudio.com')"
