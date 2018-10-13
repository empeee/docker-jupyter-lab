FROM continuumio/anaconda3:5.2.0

ENV JUPYTER_CONFIG_DIR="/opt/jupyterconfig"

#RUN conda update -n base conda
#RUN conda update --all
RUN conda install -c conda-forge jupyterlab octave_kernel
RUN conda install tensorflow mpld3 nodejs
RUN conda clean --all
RUN pip install SchemDraw control

#RUN jupyter labextension install jupyterlab-drawio
#RUN jupyter labextension install jupyterlab-toc

EXPOSE 9999
CMD jupyter lab --ip=* --port 9999 --no-browser --allow-root --notebook-dir=/opt/notebooks
