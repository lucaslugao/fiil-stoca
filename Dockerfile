FROM python:3.8

RUN pip install jupyterlab nashpy matplotlib
RUN pip install ipycanvas
RUN apt-get update && apt-get install -y nodejs npm
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager ipycanvas
RUN pip install ipypb
WORKDIR /notebooks

CMD jupyter-lab --ip=0.0.0.0 --allow-root .