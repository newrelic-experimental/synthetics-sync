FROM python:3.10-slim-buster

WORKDIR /app

COPY ./requirements.txt ./requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY /src .

ENTRYPOINT [ "python3", "/app/main.py" ]
