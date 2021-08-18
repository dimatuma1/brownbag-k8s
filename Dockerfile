# syntax=docker/dockerfile:1
FROM python:alpine
RUN pip install --upgrade pip
EXPOSE 80
WORKDIR /app
COPY app/ .
RUN pip3 install -r requirements.txt
CMD [ "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
