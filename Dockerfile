FROM python:3.10.6-slim

# Usuario python
RUN useradd -ms /bin/bash python 

RUN pip install pipenv

USER python

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT=True

CMD [ "tail", "-f", "/dev/nul"]