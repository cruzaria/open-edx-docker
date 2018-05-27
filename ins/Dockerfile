FROM python:2.7

RUN apt update
RUN apt install -y python-pip python-matplotlib python-scipy emacs mongodb apache2-utils python-mysqldb subversion ipython nginx git redis-server
RUN wget https://pypi.python.org/packages/source/d/distribute/distribute-0.6.35.tar.gz && \
    tar -xzvf distribute-0.6.35.tar.gz && \
    cd distribute-0.6.35 && \
    python setup.py install
RUN git clone https://github.com/edx/insights && \
    cd insights && \
    pip install -r requirements.txt && python setup.py install


ENTRYPOINT ["sleep", "5000"]
