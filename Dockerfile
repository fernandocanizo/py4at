FROM abakhtin/miniconda3_ubuntu:latest

# update system
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y neovim
RUN conda install -y \
    python-socketio \
    numpy \
    ipython \
    bpython \
    matplotlib \
    pandas \
    pytables \
    quandl \
    scikit-learn \
    scipy && \
  conda install -yc esrf-bcu ptpython

# couldn't find these on anaconda.org
RUN pip install fxcmpy \
    tstables

CMD bash
