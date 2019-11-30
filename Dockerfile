FROM frolvlad/alpine-miniconda3:python3.7

RUN apk add --update nodejs npm
RUN conda install -y jupyterlab matplotlib
RUN pip install ipycanvas nashpy ipypb
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager ipycanvas
WORKDIR /notebooks

CMD jupyter-lab --ip=0.0.0.0 --allow-root .