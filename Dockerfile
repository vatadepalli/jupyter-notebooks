FROM jupyter/datascience-notebook

RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
# RUN jupyter contrib nbextension install --system
RUN conda install -c conda-forge jupyter_nbextensions_configurator
RUN jupyter nbextensions_configurator enable --user
# RUN jupyter nbextensions_configurator enable --system

# RUN conda install -c conda-forge jupyterthemes
# RUN jt -l
# RUN jt -t gruvboxd

RUN conda install openpyxl
RUN conda install Pyppeteer