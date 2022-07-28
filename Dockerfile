# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN pip3 install psycopg2-binary

COPY . .

CMD [ "python3", "db-setup.py"]
