FROM python:3.6.6
ADD . ./
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute ./Homework1.ipynb
