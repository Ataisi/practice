#Dockerfile

FROM python:3.8-slim-buster 
WORKDIR /main 
COPY requirements.txt . 
COPY . . 
RUN pip install Flask 
RUN pip install -r requirements.txt 
EXPOSE 5000 
ENTRYPOINT ["python", "main.py"]

