FROM continuumio/anaconda3:latest

ENV JUPYTER_CONFIG_DIR="/opt/jupyterconfig"

RUN conda update -n base conda && \
    conda update --all && \
    conda install -c conda-forge jupyterlab && \
    conda clean --all
RUN pip install SchemDraw control tensorflow

EXPOSE 9999
CMD jupyter lab --ip=* --port 9999 --no-browser --allow-root --notebook-dir=/opt/notebooks
