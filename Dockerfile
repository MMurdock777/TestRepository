FROM python:3.6.6
WORKDIR /TestRepository
COPY requirements.txt requirements.txt
COPY Homework1.ipynb Homework1.ipynb
RUN python3 -m venv venv
RUN. venv/bin/activate
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute ./Homework1.ipynb
